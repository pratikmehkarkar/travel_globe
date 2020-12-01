import 'package:final_project/SplashScreen.dart';
import 'package:final_project/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  //The root of flutter application
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'travelglobe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: primaryBlack),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>
{
  startTime() async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool firstTime = prefs.getBool('first_time');
    //var _duration = new Duration(seconds: 3);
    if(firstTime != null && !firstTime)
    {
      //if Not first time then go to main splash screen
      return navigationHome();
    }
    else
    {
      // if first time then start with sign up page / welcome
      //prefs.setBool('first_time', false);
      return navigationSplash();
    }
  }
  //navigating to the different screens
  void navigationHome()
  {
    Navigator.pushReplacement(context, MaterialPageRoute(builder:
        (BuildContext context) => SplashScreen()));
  }
  void navigationSplash()
  {
    Navigator.pushReplacement(context, MaterialPageRoute(builder:
        (BuildContext context) => WelcomeScreen()));
  }
  @override
  void initState()
  {
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Text(""),
    );
  }
}
// custom color swtach by pratik mehkarkar
const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);
const int _blackPrimaryValue = 0xFF000000;