import 'package:final_project/HomePage.dart';
import 'package:final_project/ui_components/my_button.dart';
import 'package:flutter/material.dart';

import 'list.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFBFD),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(60.0),
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
                padding: EdgeInsets.only(left: 35.0, right: 35.0, top: 20.0),
                child: CustomButton2(
                  label: 'e-mail address',
                  labelColour: Colors.grey,
                  backgroundColour: Colors.white,
                  shadowColour: Color(0xff4E4F72).withOpacity(0.08),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 35.0, right: 35.0, top: 20.0),
                child: CustomButton2(
                  label: 'password',
                  labelColour: Colors.grey,
                  backgroundColour: Colors.white,
                  shadowColour: Color(0xff4E4F72).withOpacity(0.08),
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
                  onTap: () {
                    Navigator.of(context).pushReplacement(PageRouteBuilder(
                        pageBuilder: (context, animation, anotherAnimation)
                        {
                          return HomePage();
                        },
                        transitionDuration: Duration(milliseconds: 2000),
                        transitionsBuilder: (context, animation, anotherAnimation, child)
                        {
                          animation = CurvedAnimation(
                              parent: animation, curve: curveList[4]);
                          return FadeTransition(
                            opacity:animation,
                            child: child,
                          );
                        }
                    ),);
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
    );
  }
}