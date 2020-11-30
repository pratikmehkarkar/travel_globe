import 'package:flutter/material.dart';

Widget cardShape(String image, String title, String location)
{
  //Hero refers to the widget that flies between screens of our application
  return Hero(
    tag: 'box-${location}',
    child: Material(
      color: Colors.transparent,
      child: ClipPath(
        clipper: MyClipper(),
        child: Container(
          width: 220.0,
          height: 300.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(title,style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w800),),
                Text(location,
                  style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.w800),),
              ],
            ),),
        ),
      ),
    ),
  );
}

class MyClipper extends CustomClipper<Path>
{
  @override
  Path getClip(Size size)
  {
    var path = Path();
    //now lets add some round shape
    var round = 40.0;
    // to add round in flutter we will use quadratic beizer curve
    path.moveTo(round * 2, round * 2);
    path.quadraticBezierTo(0, round * 3, 0, round * 4);
    //path.moveTo(0, 0);
    path.lineTo(0, size.height - round);
    path.quadraticBezierTo(0, size.height, round, size.height);
    path.lineTo(size.width - round, size.height);
    path.quadraticBezierTo(size.width, size.height, size.width, size.height - round);
    path.lineTo(size.width, round * 1.5);
    path.quadraticBezierTo(size.width, 0, round * 2, round * 2);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper)
  {
    return true;
  }

}
