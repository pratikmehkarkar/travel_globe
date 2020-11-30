import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AboutUs extends StatelessWidget
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
        title: Text("App Developers", style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/dev.gif', height: 100, width: 200,),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.person, color: Colors.black,),
                    title: Text('Pratik Mehkarkar', style: TextStyle(fontWeight: FontWeight.w400),),
                    subtitle: Text('CSU San Marcos'),),
                ],),),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.person, color: Colors.black,),
                    title: Text(' Anthony Palermo', style: TextStyle(fontWeight: FontWeight.w400),),
                    subtitle: Text('CSU San Marcos'),),
                ],),),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.person, color: Colors.black,),
                    title: Text('Tanya Raghav', style: TextStyle(fontWeight: FontWeight.w400),),
                    subtitle: Text('CSU San Marcos'),),
                ],),),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.person, color: Colors.black,),
                    title: Text('Alexis Vasquez', style: TextStyle(fontWeight: FontWeight.w400),),
                    subtitle: Text('CSU San Marcos'),),
                ],),),
          ],
        ),
      ),

    );
  }
}