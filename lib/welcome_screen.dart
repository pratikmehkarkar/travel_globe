import 'package:final_project/RegisterUser.dart';
import 'package:final_project/SignInScreen.dart';
import 'package:final_project/ui_components/my_button.dart';
import 'package:flutter/material.dart';


import 'list.dart';


class WelcomeScreen extends StatefulWidget {
  @override
  WelcomeScreenState createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color(0xFFFAFBFD),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 95.0, right: 23.39, left: 24.0, bottom: 30.0),
                  child: CircleAvatar(
                    radius: 90.0,
                    backgroundImage: AssetImage('images/logo.png'),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              Text('Travel-Globe', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'friday', color: Color(0xFF7041EE), fontSize: 62,),
              ),
              Text(
                'A Destination For The New Millennium',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35.0),
                  child: GestureDetector(
                    child: CustomButton(
                      label: 'Register',
                      labelColour: Colors.white,
                      backgroundColour: Color(0xFF7041EE),
                      shadowColour: Color(0xff866DC9).withOpacity(0.16),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(PageRouteBuilder(
                          pageBuilder: (context, animation, anotherAnimation)
                          {
                            return RegisterUser();
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
                    },
                  ),
                ),
                Padding(

                  padding: EdgeInsets.only(left: 35.0, right: 35.0, top: 20.0),
                  child: GestureDetector(
                    child: CustomButton(
                      label: 'Login',
                      labelColour: Color(0xFF7041EE),
                      backgroundColour: Colors.white,
                      shadowColour: Color(0xff4E4F72).withOpacity(0.08),
                    ),
                    onTap: () {
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
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}