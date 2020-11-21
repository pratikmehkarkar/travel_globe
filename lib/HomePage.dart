import 'package:flutter/material.dart';

class HomePage extends StatelessWidget
{
  //The root of flutter application
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: primaryBlack,
      ),
      home: NaviHome(),
    );
  }
}

class NaviHome extends StatefulWidget
{
  NaviHomeState createState() => NaviHomeState();
}
class NaviHomeState extends State<NaviHome>
{
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      key: _scaffoldkey,
      backgroundColor: Colors.white,
      //Implementing NavBar Widget for Side Menu
      drawer: NavigationDrawer(),
      appBar: AppBar(
        //title: Text('Flutter Guide'),
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text("Travel-Globe", style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
        child: Column(
          children: [
            Text("A Destination For The New Millennium", style:
            TextStyle(fontSize: 28.0, fontWeight: FontWeight.w800),),
          ],
        ),
      ),
    );
  }
  void showSnackBar(String choice)
  {
    final snackBarContent =  SnackBar(
      content: Text('Selected: $choice'),
      action: SnackBarAction(
          label: 'Undo', onPressed: ()
      {
        //undo
      }),
    );
    _scaffoldkey.currentState.showSnackBar(snackBarContent);
  }
}
//navigation drawer class
class NavigationDrawer extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    //NavigationDrawer is a stateless widget which will return a special widget called Drawer.
    //Widget Drawer contains Basic ListView
    return Drawer(
      //This basic list view contains all the links where we have navigate throughout the app by usig side/navigation menu
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          //The DrawerHeader is the top widget of our side navigation menu
          DrawerHeader(
            decoration:
            BoxDecoration(image: DecorationImage(fit: BoxFit.fill, image: AssetImage('images/nav.jpg'))),
            child: Text('travel-globe',style: TextStyle(fontFamily: 'friday', color: Colors.black,fontSize: 40),),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('Menu', style: (TextStyle(fontFamily: 'Comfortaa', color: Color(0xFF7041EE), fontSize: 20)),),
            onTap: () {
              Navigator.pop(context);
              //Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_Two()));
            },),
          ListTile(
            leading: Icon(Icons.photo),
            title: Text('Menu', style: (TextStyle(fontFamily: 'Comfortaa', color: Color(0xFF7041EE), fontSize: 20)),),
            onTap: () {
              Navigator.pop(context);
              //Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_Three()));
            },),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Menu', style: (TextStyle(fontFamily: 'Comfortaa', color: Color(0xFF7041EE), fontSize: 20)),),
            onTap: () {
              Navigator.pop(context);
              //Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_Four()));
            },),],),);
  }
}
const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF7041EE),
    100: Color(0xFF7041EE),
    200: Color(0xFF7041EE),
    300: Color(0xFF7041EE),
    400: Color(0xFF7041EE),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF7041EE),
    700: Color(0xFF7041EE),
    800: Color(0xFF7041EE),
    900: Color(0xFF7041EE),
  },
);
const int _blackPrimaryValue = 0xFF7041EE;

