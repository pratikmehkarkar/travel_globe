import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../list.dart';

class TravelGuide extends StatefulWidget
{
  @override
  TravelGuideState createState() => TravelGuideState();
}

class TravelGuideState extends State<TravelGuide>
{
  //rafting images
  String r1 = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/futaleufu-min.jpg?alt=media&token=a475e578-5a6c-4787-b7ca-b28233ee9146";
  String r2 = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/magpie-min.jpg?alt=media&token=347a83ed-8d48-4cd8-b32b-47cae151d3e0";
  String r3 = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/cr-min.jpg?alt=media&token=955408c5-0786-4feb-8a35-63088403bf4d";
  String r4 = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/rio-min.jpg?alt=media&token=95f3c121-d157-418c-8d6a-b011ff8ba973";
  //kayaking
  String k1 = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/paragliding%2Fcolambia-min.jpg?alt=media&token=f5e9dea5-a689-47f5-9bd5-d5627dc8d838";
  String k2 = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/paragliding%2Fpokhara-min.jpg?alt=media&token=e2cf9a8f-1289-48f3-a5a8-7ed712051e70";
  String k3 = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/paragliding%2Fswiz-min.jpg?alt=media&token=19e80543-1be7-421d-b751-460bc33cefa9";
  String k4 = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/paragliding%2Fturkey-min.jpg?alt=media&token=a9ea99fc-914c-4ded-986a-dc44accddaaa";
  //hiking
  String h1 = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/hiking%2Fperu-min.jpg?alt=media&token=c054baa2-640c-4b41-9de0-90feccd35632";
  String h2 = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/hiking%2Fnepal-min.jpg?alt=media&token=8e50dcfc-9266-4149-a707-71e516a79c15";
  String h3 = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/hiking%2Ftaz-min.jpg?alt=media&token=670b6ee7-4971-4784-9271-c344414f5e0d";
  String h4 = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/hiking%2Fnz-min.jpg?alt=media&token=cf920e43-cd08-406d-8a0f-081ba6b26e59";
  //cruise
  String c1 = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/cruise%2Fleeward-min.jpg?alt=media&token=195679ab-b802-49cf-93c0-107460d62440";
  String c2 = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/cruise%2Fleeser-min.jpg?alt=media&token=8acebcbd-8f1c-4dc0-b857-42896cac546c";
  String c3 = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/cruise%2Fbahamas-min.jpg?alt=media&token=e1fc6c22-cb0a-42de-8762-55c166e925c5";
  String c4 = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/cruise%2Fnew-min.jpg?alt=media&token=586544b6-3aca-4d25-9b5d-6fdadfa98f76";

  @override
  void initState()
  {
    super.initState();
    Fluttertoast.showToast(
        msg: "Please wait while images are loading from server..",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //title: Text('Flutter Guide'),
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text("Travel Guide", style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Let's start by adding the text
            Text(
              "Life is either a daring adventure or nothing !",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              "The way up to the top mountain is always longer than you think. Don't fool yourself !",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            //Now let's add some elevation to our text field
            //to do this we need to wrap it in a Material widget
            SizedBox(height: 30.0),
            //Now let's Add a Tabulation bar
            DefaultTabController(
              length: 4,
              child: Expanded(
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: Colors.black,
                      unselectedLabelColor: Colors.black,
                      labelColor: Colors.black,
                      isScrollable: true,
                      labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      tabs: [
                        Tab(
                          text: "River Rafting",
                        ),
                        Tab(
                          text: "Paragliding",
                        ),
                        Tab(
                          text: "Hiking",
                        ),
                        Tab(
                          text: "Scuba Diving",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 300.0,
                      child: TabBarView(
                        children: [
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                //River Rafting
                                Card(
                                  margin: EdgeInsets.only(right: 22.0),
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  elevation: 0.0,
                                  child: InkWell(
                                    onTap: ()
                                    {
                                      Navigator.of(context).push(PageRouteBuilder(
                                          pageBuilder: (context, animation, anotherAnimation)
                                          {
                                            return _river();
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
                                      ));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(r1),fit: BoxFit.cover, scale: 2.0,
                                          ),
                                      ),
                                      width: 200.0,
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Futaleufu River",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22.0,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3.0,
                                                  ),
                                                  Text(
                                                    "Chile",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  margin: EdgeInsets.only(right: 22.0),
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  elevation: 0.0,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(PageRouteBuilder(
                                          pageBuilder: (context, animation, anotherAnimation)
                                          {
                                            return _river();
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
                                      ));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(image: DecorationImage(
                                        image: NetworkImage(r3),
                                        fit: BoxFit.cover,
                                        scale: 2.0,
                                      )),
                                      width: 200.0,
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Colorado River",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22.0,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3.0,
                                                  ),
                                                  Text(
                                                    "USA",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  margin: EdgeInsets.only(right: 22.0),
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  elevation: 0.0,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(PageRouteBuilder(
                                          pageBuilder: (context, animation, anotherAnimation)
                                          {
                                            return _river();
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
                                      ));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(image: DecorationImage(
                                        image: NetworkImage(r2),
                                        fit: BoxFit.cover,
                                        scale: 2.0,
                                      )),
                                      width: 200.0,
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Magpie River",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22.0,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3.0,
                                                  ),
                                                  Text(
                                                    "Canada",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  margin: EdgeInsets.only(right: 22.0),
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  elevation: 0.0,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(PageRouteBuilder(
                                          pageBuilder: (context, animation, anotherAnimation)
                                          {
                                            return _river();
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
                                      ));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(image: DecorationImage(
                                        image: NetworkImage(r4),
                                        fit: BoxFit.cover,
                                        scale: 2.0,
                                      )),
                                      width: 200.0,
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Río Upano",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22.0,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3.0,
                                                  ),
                                                  Text(
                                                    "Ecuador",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                //para
                                Card(
                                  margin: EdgeInsets.only(right: 22.0),
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  elevation: 0.0,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(PageRouteBuilder(
                                          pageBuilder: (context, animation, anotherAnimation)
                                          {
                                            return _para();
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
                                      ));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(k3), fit: BoxFit.cover, scale: 2.0,
                                          )),
                                      width: 200.0,
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Interlaken",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22.0,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3.0,
                                                  ),
                                                  Text(
                                                    "Switzerland",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  margin: EdgeInsets.only(right: 22.0),
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  elevation: 0.0,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(PageRouteBuilder(
                                          pageBuilder: (context, animation, anotherAnimation)
                                          {
                                            return _para();
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
                                      ));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(k2), fit: BoxFit.cover, scale: 2.0,
                                          )),
                                      width: 200.0,
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Pokhara",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22.0,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3.0,
                                                  ),
                                                  Text(
                                                    "Nepal",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  margin: EdgeInsets.only(right: 22.0),
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  elevation: 0.0,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(PageRouteBuilder(
                                          pageBuilder: (context, animation, anotherAnimation)
                                          {
                                            return _para();
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
                                      ));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(k1), fit: BoxFit.cover, scale: 2.0,
                                          )),
                                      width: 200.0,
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "San Gil",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22.0,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3.0,
                                                  ),
                                                  Text(
                                                    "Colombia",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  margin: EdgeInsets.only(right: 22.0),
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  elevation: 0.0,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(PageRouteBuilder(
                                          pageBuilder: (context, animation, anotherAnimation)
                                          {
                                            return _para();
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
                                      ));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(k4), fit: BoxFit.cover, scale: 2.0,
                                          )),
                                      width: 200.0,
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Oludeniz",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22.0,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3.0,
                                                  ),
                                                  Text(
                                                    "Turkey",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Card(
                                  margin: EdgeInsets.only(right: 22.0),
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  elevation: 0.0,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(PageRouteBuilder(
                                          pageBuilder: (context, animation, anotherAnimation)
                                          {
                                            return _hiking();
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
                                      ));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(h1), fit: BoxFit.cover, scale: 2.0,
                                          )),
                                      width: 200.0,
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Inca Trail",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22.0,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3.0,
                                                  ),
                                                  Text(
                                                    "Peru",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  margin: EdgeInsets.only(right: 22.0),
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  elevation: 0.0,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(PageRouteBuilder(
                                          pageBuilder: (context, animation, anotherAnimation)
                                          {
                                            return _hiking();
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
                                      ));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(h2), fit: BoxFit.cover, scale: 2.0,
                                          )),
                                      width: 200.0,
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Annapurna Circuit",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22.0,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3.0,
                                                  ),
                                                  Text(
                                                    "Nepal",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  margin: EdgeInsets.only(right: 22.0),
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  elevation: 0.0,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(PageRouteBuilder(
                                          pageBuilder: (context, animation, anotherAnimation)
                                          {
                                            return _hiking();
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
                                      ));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(h3), fit: BoxFit.cover, scale: 2.0,
                                          )),
                                      width: 200.0,
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Kilimanjaro",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22.0,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3.0,
                                                  ),
                                                  Text(
                                                    "Tanzania",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  margin: EdgeInsets.only(right: 22.0),
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  elevation: 0.0,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(PageRouteBuilder(
                                          pageBuilder: (context, animation, anotherAnimation)
                                          {
                                            return _hiking();
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
                                      ));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(h4), fit: BoxFit.cover, scale: 2.0,
                                          )),
                                      width: 200.0,
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Milford Track",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22.0,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3.0,
                                                  ),
                                                  Text(
                                                    "New Zealand",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Card(
                                  margin: EdgeInsets.only(right: 22.0),
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  elevation: 0.0,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(PageRouteBuilder(
                                          pageBuilder: (context, animation, anotherAnimation)
                                          {
                                            return _scuba();
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
                                      ));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(c1), fit: BoxFit.cover, scale: 2.0,
                                          )),
                                      width: 200.0,
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Leeward Islands",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22.0,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3.0,
                                                  ),
                                                  Text(
                                                    "Caribbean",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  margin: EdgeInsets.only(right: 22.0),
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  elevation: 0.0,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(PageRouteBuilder(
                                          pageBuilder: (context, animation, anotherAnimation)
                                          {
                                            return _scuba();
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
                                      ));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(c2), fit: BoxFit.cover, scale: 2.0,
                                          )),
                                      width: 200.0,
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Lesser Antilles",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22.0,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3.0,
                                                  ),
                                                  Text(
                                                    "Caribbean",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  margin: EdgeInsets.only(right: 22.0),
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  elevation: 0.0,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(PageRouteBuilder(
                                          pageBuilder: (context, animation, anotherAnimation)
                                          {
                                            return _scuba();
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
                                      ));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(c3), fit: BoxFit.cover, scale: 2.0,
                                          )),
                                      width: 200.0,
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Bahamas",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22.0,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3.0,
                                                  ),
                                                  Text(
                                                    "Atlantic",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  margin: EdgeInsets.only(right: 22.0),
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  elevation: 0.0,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(PageRouteBuilder(
                                          pageBuilder: (context, animation, anotherAnimation)
                                          {
                                            return _scuba();
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
                                      ));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(c3), fit: BoxFit.cover, scale: 2.0,
                                          )),
                                      width: 200.0,
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Southern New England",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22.0,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3.0,
                                                  ),
                                                  Text(
                                                    "USA",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],),),);
  }

}
class _river extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //title: Text('Flutter Guide'),
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text("Travel Guide", style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text("What is river rafting?", style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),),
            SizedBox(height: 10.0),
            Text(
              "Rafting is a sport in which rafters use an inflatable raft to race with other teams. "
                  "The team that reaches the destination first wins the race. "
                  "The racing is done on white water or rough water of different degrees. "
                  "The rafters use double blades to paddle the boat.Rafting should not be confused with canoeing, kayaking, rowing or "
                  "dragon boat because all these variants use different boats and they have different sets of rules.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10.0,),
            Image.asset('images/rr.gif', height: 300, width: 300,),
          ],
        ),
      ),
    );

  }

}
class _para extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //title: Text('Flutter Guide'),
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text("Travel Guide", style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text("What is Paragliding?", style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),),
            SizedBox(height: 10.0),
            Text("Paragliding belongs to the group of extreme aero-sports which are becoming more popular all over the world because of its attractiveness. "
                "It originated from alpinism when mountaineers tried to find the easiest and fastest way to get off the mountains.At least once in our lives, we all thought how liberating and fearless would it be to fly freely under the open sky, without any support under our feet."
                "Anyone who has tried this activity can tell you that there is no better feeling if you are someone who is into adrenaline tours and who is ready to experience life from a different perspective.If you still have a certain amount of fear, the right choice for you is a panoramic tandem flight, which is a flight with an experienced guide during optimal weather conditions. ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10.0,),
            Image.asset('images/para.gif', height: 150, width: 300,),
          ],
        ),
      ),
    );

  }

}
class _hiking extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //title: Text('Flutter Guide'),
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text("Travel Guide", style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text("Wanna go for a hike?", style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),),
            SizedBox(height: 10.0),
            Text("Conquering the highest of the highest mountain peaks, hanging out with other fellow adventurers, fresh mountain air and enjoying in natural beauties you don’t get to see every day, "
                "gives you the energy you really need! Hiking develops your resourcefulness, courage, and endurance which are formed by overcoming natural and personal obstacles. "
                "All of that and more is what you can get with our mountaineering - hiking and trekking tours, which can easily become your lifestyle.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10.0,),
            Image.asset('images/hike.gif', height: 300, width: 300,),
          ],
        ),
      ),
    );

  }

}
class _scuba extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //title: Text('Flutter Guide'),
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text("Travel Guide", style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text("Scuba Diving", style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),),
            SizedBox(height: 10.0),
            Text("Scuba diving is perhaps the best way to explore the fantastic underwater world, getting up close with the wonders and "
                "the secrets of this marine universe, with its breathtakingly colourful and diverse inhabitants. "
                "Floating below the azure waters, you are in an ethereal – sometimes hostile – environment, with a limited supply of air on your back and with only your fellow divers as your lifelines. "
                "Over the years and the decades, "
                "scuba diving has evolved into a non-competitive but a very exciting adventure sport.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10.0,),
            Image.asset('images/scuba.gif', height: 300, width: 300,),
          ],
        ),
      ),
    );

  }

}