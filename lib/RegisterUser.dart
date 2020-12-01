import 'package:final_project/SignInScreen.dart';
import 'package:final_project/ui_components/my_button.dart';
import 'package:final_project/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'list.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterUser extends StatefulWidget {
  @override
  _RegisterUserState createState() => _RegisterUserState();

}
class _RegisterUserState extends State<RegisterUser>
{
  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {

      });
    });
  }
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _repasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(child: new Scaffold(
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
                padding: EdgeInsets.only(left: 35.0, right: 35.0, top: 5.0, bottom: 10.0),
                child: Center(
                  child: Text(
                    'SignUp',
                    style: TextStyle(
                        color: Color(0xff2C2929),
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 35.0, right: 35.0, top: 1.0),
                child: TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                      labelText: "Username"
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 35.0, right: 35.0, top: 13.0),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      labelText: "E-mail"
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 35.0, right: 35.0, top: 13.0),
                child: TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      labelText: "Password"
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 35.0, right: 35.0, top: 13.0),
                child: TextFormField(
                  controller: _repasswordController,
                  decoration: InputDecoration(
                      labelText: "Re-enter Password"
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 35.0, right: 35.0, top: 20.0,
                ),
                child: GestureDetector(
                  child: CustomButton(
                    label: 'SignUp',
                    labelColour: Colors.white,
                    backgroundColour: Color(0xFF7041EE),
                    shadowColour: Color(0xff866DC9).withOpacity(0.16),
                  ),
                  onTap: () async
                  {
                    try
                    {
                      User user = (await FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: _emailController.text,
                          password: _passwordController.text)).user;
                      if(user != null)
                      {
                        user.updateProfile(displayName: _usernameController.text);
                        Navigator.of(context).pushReplacement(PageRouteBuilder(
                            pageBuilder: (context, animation, anotherAnimation)
                            {
                              return SignInScreen();
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
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        prefs.setString('stringvalue', _usernameController.text);
                        //String uname = (prefs.getString('') ?? '');
                      }
                    }
                    catch(e)
                    {
                      print(e);
                      _scaffoldKey.currentState.showSnackBar(new SnackBar(content: new Text('Please Try Again !'),));
                      _usernameController.text = "";
                      _passwordController.text = "";
                      _repasswordController.text = "";
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
              Text('we are completely happy to help you',
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