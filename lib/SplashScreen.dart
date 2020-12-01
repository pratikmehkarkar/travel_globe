import 'dart:async';
import 'package:final_project/HomePage.dart';

import 'list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colored_progress_indicators/flutter_colored_progress_indicators.dart';

class SplashScreen extends StatefulWidget
{
  SplashScreen({Key key, this.title}) : super(key: key);
  final String title;
  final Color backgroundColor = Colors.white;
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
{
  final splashDelay = 10;
  @override
  void initState() {
    super.initState();
    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage()
  {
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
          return  SlideTransition(
            position: Tween(
                begin: Offset(1.0, 0.0),
                end: Offset(0.0, 0.0))
                .animate(animation),
            child: child,
          );
        }
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: InkWell(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 7,
                  child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Travel-Globe",style: TextStyle(fontFamily: 'friday', color: Color(0xFF7041EE),fontSize: 50),),
                          Image.asset('images/travel_logo.gif', height: 300, width: 300,),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                          ),
                        ],
                      )),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10.0),
                          child: ColoredLinearProgressIndicator(
                            backgroundColor: Colors.white,
                          ),
                      ),
                      Container(
                        height: 15,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Spacer(),
                            Text('Loading...'),
                            Spacer(),
                          ])
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
