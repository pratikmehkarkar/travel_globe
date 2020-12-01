import 'package:final_project/main.dart';
import 'package:final_project/ui_components/my_button.dart';
import 'package:final_project/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'list.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen>
{
  addValues() async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('first_time', false);
  }
  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {});
    });
  }
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  //final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: new Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFFAFBFD),
        iconTheme: new IconThemeData(color: Colors.black),
        leading: new IconButton(
        icon: new Icon(Icons.arrow_back),
        onPressed: ()
        {
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
          //Navigator.pop(context);
        },
      ),),
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFAFBFD),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 35.0, right: 35.0, top: 5.0, bottom: 20.0),
                child: Center(
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        color: Color(0xff2C2929),
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 35.0, right: 35.0, top: 15.0),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      labelText: "E-mail"
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 35.0, right: 35.0, top: 15.0),
                child: TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 35.0,
                  right: 35.0,
                  top: 20.0,
                ),
                child: GestureDetector(
                  child: CustomButton(
                    label: 'SignIn',
                    labelColour: Colors.white,
                    backgroundColour: Color(0xFF7041EE),
                    shadowColour: Color(0xff866DC9).withOpacity(0.16),
                  ),
                  onTap: () async
                  {
                    try
                    {
                      User user = (await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: _emailController.text, password: _passwordController.text)).user;
                      if(user != null)
                      {
                        Navigator.of(context).pushReplacement(PageRouteBuilder(
                            pageBuilder: (context, animation, anotherAnimation)
                            {
                              addValues();
                              return MyApp();
                            },
                            transitionDuration: Duration(milliseconds: 2000),
                            transitionsBuilder: (context, animation, anotherAnimation, child)
                            {
                              animation = CurvedAnimation(
                                  parent: animation, curve: curveList[4]);
                              return ScaleTransition(
                                scale: animation,
                                child: child,
                              );
                            }
                        ),);
                      }
                    }
                    catch(e)
                    {
                      print(e);
                      _scaffoldKey.currentState.showSnackBar(new SnackBar(content: new Text('Incorrect email or password'),));
                      _passwordController.text = "";
                      _emailController.text = "";
                    }
                  },
                ),
              ),
            ],
          ),
          Divider(),
          Column(
            children: [
              Text(
                'we are completely happy to help you',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color(0xFF7041EE),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
        onWillPop: _onBackPressed);
  }
  Future<bool> _onBackPressed()
  {
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}