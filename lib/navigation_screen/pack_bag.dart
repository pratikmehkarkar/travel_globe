import 'package:final_project/HomePage.dart';
import 'package:final_project/list.dart';
import 'package:flutter/material.dart';


class PackBag extends StatelessWidget
{
  //The root of flutter application
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: ()
          {
            Navigator.pop(context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text('"Dontforget" List', style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Collect relevant baggage depending on the length of journey", style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w400)),
            SizedBox(height: 2.0),
            Image.asset('images/travel.png',height: 300, width: 400,alignment: Alignment.center),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.check, color: Colors.green,),
                    title: Text('Packing Checklist', style: TextStyle(fontWeight: FontWeight.w400),),
                    subtitle: Text('We’ve created this ultimate packing list to help you pack well every time'),),
                  ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('Clothes'),
                        onPressed: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (context, animation, anotherAnimation)
                              {
                                return _clothes();
                              },
                              transitionDuration: Duration(milliseconds: 2000),
                              transitionsBuilder: (context, animation, anotherAnimation, child)
                              {
                                animation = CurvedAnimation(
                                    parent: animation, curve: curveList[35]);
                                return  SlideTransition(
                                  position: Tween(
                                      begin: Offset(1.0, 0.0),
                                      end: Offset(0.0, 0.0))
                                      .animate(animation),
                                  child: child,
                                );
                              }
                          ));
                        },
                      ),
                      FlatButton(
                        child: const Text('Toiletries'),
                        onPressed: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (context, animation, anotherAnimation)
                              {
                                return _toiletries();
                              },
                              transitionDuration: Duration(milliseconds: 2000),
                              transitionsBuilder: (context, animation, anotherAnimation, child)
                              {
                                animation = CurvedAnimation(
                                    parent: animation, curve: curveList[35]);
                                return  SlideTransition(
                                  position: Tween(
                                      begin: Offset(1.0, 0.0),
                                      end: Offset(0.0, 0.0))
                                      .animate(animation),
                                  child: child,
                                );
                              }
                          ));
                        },),
                      FlatButton(
                        child: const Text('Misc.'),
                        onPressed: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (context, animation, anotherAnimation)
                              {
                                return _misc();
                              },
                              transitionDuration: Duration(milliseconds: 2000),
                              transitionsBuilder: (context, animation, anotherAnimation, child)
                              {
                                animation = CurvedAnimation(
                                    parent: animation, curve: curveList[35]);
                                return  SlideTransition(
                                  position: Tween(
                                      begin: Offset(1.0, 0.0),
                                      end: Offset(0.0, 0.0))
                                      .animate(animation),
                                  child: child,
                                );
                              }
                          ));
                        },),
                    ],),],),),],),),
    );
  }
}
class _clothes extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //title: Text('Flutter Guide'),
        elevation: 0.0,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: ()
          {
            Navigator.pop(context, MaterialPageRoute(builder: (context) => PackBag()));
          },
        ),
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text('"Dontforget" List', style: TextStyle(color: Colors.black),),
      ),
      body:
      Column(
        children: [
          SizedBox(height: 10.0,),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              child: Text('CA', style: TextStyle(color: Colors.white),),
            ),
            label: Text('Clothes & Accessories'),
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
            Table(
              textDirection: TextDirection.ltr,
              defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              border:TableBorder.all(width: 1.0,color: Colors.black),
              children: [
                TableRow(
                    children: [
                      Text("T-shirts",textScaleFactor: 1.5,),
                      Text("Socks",textScaleFactor: 1.5),
                      Text("Shorts",textScaleFactor: 1.5),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Pants",textScaleFactor: 1.5),
                      Text("Skirts",textScaleFactor: 1.5),
                      Text("Sweatshirts",textScaleFactor: 1.5),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Coats/Jackets",textScaleFactor: 1.5),
                      Text("Walking Shoes",textScaleFactor: 1.5),
                      Text("Belts",textScaleFactor: 1.5),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Gloves",textScaleFactor: 1.5),
                      Text("Purses",textScaleFactor: 1.5),
                      Text("Swimsuits",textScaleFactor: 1.5),
                    ]
                ),
                TableRow(
                    children: [
                      Text("flip-flops",textScaleFactor: 1.5),
                      Text("Dresses",textScaleFactor: 1.5),
                      Text("Jeans",textScaleFactor: 1.5),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Hiking Shoes",textScaleFactor: 1.5),
                      Text("Underwear",textScaleFactor: 1.5),
                      Text("Scarves",textScaleFactor: 1.5),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Collapsible totes",textScaleFactor: 1.5),
                      Text("Dress Shoes",textScaleFactor: 1.5),
                      Text("Ties",textScaleFactor: 1.5),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Undershirts/bras",textScaleFactor: 1.5),
                      Text("Boxer",textScaleFactor: 1.5),
                      Text("Sunglasses",textScaleFactor: 1.5),
                    ]
                ),
              ],
            ),),
        ],
      ),
    );

  }

}
class _toiletries extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: ()
          {
            Navigator.pop(context, MaterialPageRoute(builder: (context) => PackBag()));
          },
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text('"Dontforget" List', style: TextStyle(color: Colors.black),),
      ),
      body:
      Column(
        children: [
          SizedBox(height: 10.0,),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              child: Text('T', style: TextStyle(color: Colors.white),),
            ),
            label: Text('Toiletries'),
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
            Table(
              textDirection: TextDirection.ltr,
              defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              border:TableBorder.all(width: 1.0,color: Colors.black),
              children: [
                TableRow(
                    children: [
                      Text("Toothbrush",textScaleFactor: 1.5,),
                      Text("Toothbrush",textScaleFactor: 1.5),
                      Text("Dental floss",textScaleFactor: 1.5),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Soap",textScaleFactor: 1.5),
                      Text("Deodorant",textScaleFactor: 1.5),
                      Text("Shampoo",textScaleFactor: 1.5),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Brush/comb",textScaleFactor: 1.5),
                      Text("Face cleanser",textScaleFactor: 1.5),
                      Text("Face lotion",textScaleFactor: 1.5),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Sunscreen",textScaleFactor: 1.5),
                      Text("Moisturizer",textScaleFactor: 1.5),
                      Text("Makeup",textScaleFactor: 1.5),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Shaving Supplies",textScaleFactor: 1.5),
                      Text("Clippers",textScaleFactor: 1.5),
                      Text("Tweezers",textScaleFactor: 1.5),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Hand sanitizer",textScaleFactor: 1.5),
                      Text("Bandages",textScaleFactor: 1.5),
                      Text("First-aid",textScaleFactor: 1.5),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Insect repellent",textScaleFactor: 1.5),
                      Text("Medications",textScaleFactor: 1.5),
                      Text("Pain relievers",textScaleFactor: 1.5),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Vitamin",textScaleFactor: 1.5),
                      Text("Energy Drink",textScaleFactor: 1.5),
                      Text("hygiene products",textScaleFactor: 1.5),
                    ]
                ),
              ],
            ),),
        ],
      ),
    );

  }

}
class _misc extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: ()
          {
            Navigator.pop(context, MaterialPageRoute(builder: (context) => PackBag()));
          },
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text('"Dontforget" List', style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        children: [
          SizedBox(height: 10.0,),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              child: Text('M', style: TextStyle(color: Colors.white),),
            ),
            label: Text('Miscellaneous Things'),
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
            Table(
              textDirection: TextDirection.ltr,
              defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              border:TableBorder.all(width: 1.0,color: Colors.black),
              children: [
                TableRow(
                    children: [
                      Text("Cell phone",textScaleFactor: 1.5,),
                      Text("Laptop",textScaleFactor: 1.5),
                      Text("ipad",textScaleFactor: 1.5),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Electronic Chargers",textScaleFactor: 1.5),
                      Text("Plug Adapter",textScaleFactor: 1.5),
                      Text("credit card",textScaleFactor: 1.5),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Passport",textScaleFactor: 1.5),
                      Text("Earbuds",textScaleFactor: 1.5),
                      Text("Travel pillow",textScaleFactor: 1.5),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Lip balm",textScaleFactor: 1.5),
                      Text("Ear plugs",textScaleFactor: 1.5),
                      Text("Tissues",textScaleFactor: 1.5),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Food/snacks",textScaleFactor: 1.5),
                      Text("Camera",textScaleFactor: 1.5),
                      Text("Itinerary",textScaleFactor: 1.5),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Guidebook",textScaleFactor: 1.5),
                      Text("travel blanket",textScaleFactor: 1.5),
                      Text("Insurance Cards",textScaleFactor: 1.5),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Copy of Passport",textScaleFactor: 1.5),
                      Text("Maps/directions",textScaleFactor: 1.5),
                      Text("Visa/Copy",textScaleFactor: 1.5),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Binoculars",textScaleFactor: 1.5),
                      Text("List of medications",textScaleFactor: 1.5),
                      Text("Address Book",textScaleFactor: 1.5),
                    ]
                ),
              ],
            ),),
        ],
      ),
    );

  }

}