import 'package:final_project/HomePage.dart';
import 'package:final_project/list.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


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
                                Fluttertoast.showToast(
                                    msg: "You can select the items which you have already packed up.",
                                    toastLength: Toast.LENGTH_LONG,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.black,
                                    textColor: Colors.white,
                                    fontSize: 16.0
                                );
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
                                Fluttertoast.showToast(
                                    msg: "You can select the items which you have already packed up.",
                                    toastLength: Toast.LENGTH_LONG,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.black,
                                    textColor: Colors.white,
                                    fontSize: 16.0
                                );
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
                                Fluttertoast.showToast(
                                    msg: "You can select the items which you have already packed up.",
                                    toastLength: Toast.LENGTH_LONG,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.black,
                                    textColor: Colors.white,
                                    fontSize: 16.0
                                );
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

class _clothes extends StatefulWidget {
  @override
  _clothesState createState() => _clothesState();
}

class _clothesState extends State<_clothes>
{
  List<bool> _selections0 = List.generate(3, (_) => false);
  List<bool> _selections1 = List.generate(3, (_) => false);
  List<bool> _selections2 = List.generate(3, (_) => false);
  List<bool> _selections3 = List.generate(3, (_) => false);
  List<bool> _selections4 = List.generate(3, (_) => false);
  List<bool> _selections5 = List.generate(3, (_) => false);
  List<bool> _selections6 = List.generate(3, (_) => false);
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
        title: Text('"Dontforget" CheckList', style: TextStyle(color: Colors.black),),
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
                      Center(
                        child: ToggleButtons(
                          children: <Widget> [
                            Text("      T-shirts      ",textScaleFactor: 1.5,),
                            Text("       Socks       ",textScaleFactor: 1.5),
                            Text("      Shorts      ",textScaleFactor: 1.5),
                          ],
                          isSelected: _selections0,
                          onPressed: (int index) {
                            setState(() {
                              _selections0[index] = !_selections0[index];
                            });
                          },
                        ),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Center(
                        child: ToggleButtons(
                          children: <Widget> [
                            Text("      Pants      ",textScaleFactor: 1.5),
                            Text("      Skirts     ",textScaleFactor: 1.5),
                            Text("     Sweatshirts     ",textScaleFactor: 1.5),
                          ],
                          isSelected: _selections1,
                          onPressed: (int index) {
                            setState(() {
                              _selections1[index] = !_selections1[index];
                            });
                          },
                        ),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Center(
                        child: ToggleButtons(
                          children: <Widget> [
                            Text("  Coats/Jackets  ",textScaleFactor: 1.5),
                            Text("   Walking Shoes  ",textScaleFactor: 1.5),
                            Text("  Belts  ",textScaleFactor: 1.5),
                          ],
                          isSelected: _selections2,
                          onPressed: (int index) {
                            setState(() {
                              _selections2[index] = !_selections2[index];
                            });
                          },
                        ),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Center(
                        child: ToggleButtons(
                          children: <Widget> [
                            Text("      Gloves     ",textScaleFactor: 1.5),
                            Text("      Purses      ",textScaleFactor: 1.5),
                            Text("    Swimsuits    ",textScaleFactor: 1.5),
                          ],
                          isSelected: _selections3,
                          onPressed: (int index) {
                            setState(() {
                              _selections3[index] = !_selections3[index];
                            });
                          },
                        ),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Center(
                        child: ToggleButtons(
                          children: <Widget> [
                            Text("     Flip-flops     ",textScaleFactor: 1.5),
                            Text("     Dresses     ",textScaleFactor: 1.5),
                            Text("      Jeans      ",textScaleFactor: 1.5),
                          ],
                          isSelected: _selections4,
                          onPressed: (int index) {
                            setState(() {
                              _selections4[index] = !_selections4[index];
                            });
                          },
                        ),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Center(
                        child: ToggleButtons(
                          children: <Widget> [
                            Text("  Hiking Shoes  ",textScaleFactor: 1.5),
                            Text("   Underwear   ",textScaleFactor: 1.5),
                            Text("   Scarves    ",textScaleFactor: 1.5),
                          ],
                          isSelected: _selections5,
                          onPressed: (int index) {
                            setState(() {
                              _selections5[index] = !_selections5[index];
                            });
                          },
                        ),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Center(
                        child: ToggleButtons(
                          children: <Widget> [
                            Text("    Sunglasses    ",textScaleFactor: 1.5),
                            Text("   Dress Shoes   ",textScaleFactor: 1.5),
                            Text("     Ties     ",textScaleFactor: 1.5),
                          ],
                          isSelected: _selections6,
                          onPressed: (int index) {
                            setState(() {
                              _selections6[index] = !_selections6[index];
                            });
                          },
                        ),
                      ),
                    ]
                ),
              ],
            ),),
          Image.asset('images/tr3.gif', height: 150, width: 300,),
        ],
      ),
    );

  }

}

class _toiletries extends StatefulWidget {
  @override
  _toiletriesState createState() => _toiletriesState();
}

class _toiletriesState extends State<_toiletries>
{
  List<bool> _selections0 = List.generate(3, (_) => false);
  List<bool> _selections1 = List.generate(3, (_) => false);
  List<bool> _selections2 = List.generate(3, (_) => false);
  List<bool> _selections3 = List.generate(3, (_) => false);
  List<bool> _selections4 = List.generate(3, (_) => false);
  List<bool> _selections5 = List.generate(3, (_) => false);
  List<bool> _selections6 = List.generate(3, (_) => false);
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
        title: Text('"Dontforget" CheckList', style: TextStyle(color: Colors.black),),
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
              border:TableBorder.all(width: 2.0,color: Colors.black),
              children: [
                TableRow(
                  children: [
                    Center(
                    child: ToggleButtons(
                      children: <Widget> [
                        Text("   Toothbrush   ",textScaleFactor: 1.5,),
                        Text("     Mask     ",textScaleFactor: 1.5),
                        Text("   Dental floss   ",textScaleFactor: 1.5),
                      ],
                      isSelected: _selections0,
                      onPressed: (int index) {
                        setState(() {
                          _selections0[index] = !_selections0[index];
                        });
                      },
                    ),
                    ),
                  ],
                ),
                TableRow(
                    children: [
                    Center(
                    child: ToggleButtons(
                      children: <Widget> [
                        Text("   Tweezers     ",textScaleFactor: 1.5),
                      Text("   Deodorant   ",textScaleFactor: 1.5),
                      Text("   Shampoo    ",textScaleFactor: 1.5),
                      ],
                      isSelected: _selections1,
                      onPressed: (int index) {
                        setState(() {
                          _selections1[index] = !_selections1[index];
                        });
                      },
                    ),
                    ),
                ]
                ),
                TableRow(
                    children: [
                      Center(
                      child: ToggleButtons(
                        children: <Widget> [
                          Text(" Brush/Comb ",textScaleFactor: 1.5),
                          Text(" Face cleanser  ",textScaleFactor: 1.5),
                          Text(" Face lotion ",textScaleFactor: 1.5),
                        ],
                        isSelected: _selections2,
                        onPressed: (int index) {
                          setState(() {
                            _selections2[index] = !_selections2[index];
                          });
                        },
                      ),
                    ),
                    ]
                ),
                TableRow(
                    children: [
                      Center(
                        child: ToggleButtons(
                          children: <Widget> [
                            Text("   Sunscreen   ",textScaleFactor: 1.5),
                            Text("    Moisturizer    ",textScaleFactor: 1.5),
                            Text("    Makeup   ",textScaleFactor: 1.5),
                          ],
                          isSelected: _selections3,
                          onPressed: (int index) {
                            setState(() {
                              _selections3[index] = !_selections3[index];
                            });
                          },
                        ),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Center(
                        child: ToggleButtons(
                          children: <Widget> [
                            Text(" Shaving Supplies ",textScaleFactor: 1.5),
                            Text("  Medications  ",textScaleFactor: 1.5),
                            Text("   Soap   ",textScaleFactor: 1.5),
                          ],
                          isSelected: _selections4,
                          onPressed: (int index) {
                            setState(() {
                              _selections4[index] = !_selections4[index];
                            });
                          },
                        ),
                      ),

                    ]
                ),
                TableRow(
                    children: [
                      Center(
                        child: ToggleButtons(
                          children: <Widget> [
                            Text("  Hand sanitizer  ",textScaleFactor: 1.5),
                            Text("   Bandages   ",textScaleFactor: 1.5),
                            Text("   First-aid   ",textScaleFactor: 1.5),
                          ],
                          isSelected: _selections5,
                          onPressed: (int index) {
                            setState(() {
                              _selections5[index] = !_selections5[index];
                            });
                          },
                        ),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Center(
                        child: ToggleButtons(
                          children: <Widget> [
                            Text("Feminine Products",textScaleFactor: 1.5),
                            Text(" Clippers ",textScaleFactor: 1.5),
                            Text("Pain relievers",textScaleFactor: 1.5),
                          ],
                          isSelected: _selections6,
                          onPressed: (int index) {
                            setState(() {
                              _selections6[index] = !_selections6[index];
                            });
                          },
                        ),
                      ),

                    ]
                ),
              ],
            ),),
          Image.asset('images/tr1.gif', height: 150, width: 300,),
        ],
      ),
    );

  }

}

class _misc extends StatefulWidget {
  @override
  _miscState createState() => _miscState();
}

class _miscState extends State<_misc>
{
  List<bool> _selections0 = List.generate(3, (_) => false);
  List<bool> _selections1 = List.generate(3, (_) => false);
  List<bool> _selections2 = List.generate(3, (_) => false);
  List<bool> _selections3 = List.generate(3, (_) => false);
  List<bool> _selections4 = List.generate(3, (_) => false);
  List<bool> _selections5 = List.generate(3, (_) => false);
  List<bool> _selections6 = List.generate(3, (_) => false);
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
        title: Text('"Dontforget" CheckList', style: TextStyle(color: Colors.black),),
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
                      Center(
                        child: ToggleButtons(
                          children: <Widget> [
                            Text("   Cell phone   ",textScaleFactor: 1.5,),
                            Text("     Laptop     ",textScaleFactor: 1.5),
                            Text("    Credit card   ",textScaleFactor: 1.5),
                          ],
                          isSelected: _selections0,
                          onPressed: (int index) {
                            setState(() {
                              _selections0[index] = !_selections0[index];
                            });
                          },
                        ),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Center(
                        child: ToggleButtons(
                          children: <Widget> [
                            Text(" Electronic Chargers ",textScaleFactor: 1.5),
                            Text(" Plug Adapter ",textScaleFactor: 1.5),
                            Text("  Ipad  ",textScaleFactor: 1.5),
                          ],
                          isSelected: _selections1,
                          onPressed: (int index) {
                            setState(() {
                              _selections1[index] = !_selections1[index];
                            });
                          },
                        ),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Center(
                        child: ToggleButtons(
                          children: <Widget> [
                            Text("  Passport    ",textScaleFactor: 1.5),
                            Text("     Earbuds    ",textScaleFactor: 1.5),
                            Text("   Travel pillow   ",textScaleFactor: 1.5),
                          ],
                          isSelected: _selections2,
                          onPressed: (int index) {
                            setState(() {
                              _selections2[index] = !_selections2[index];
                            });
                          },
                        ),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Center(
                        child: ToggleButtons(
                          children: <Widget> [
                            Text("     Lip balm    ",textScaleFactor: 1.5),
                            Text("     Ear plugs     ",textScaleFactor: 1.5),
                            Text("    Tissues     ",textScaleFactor: 1.5),
                          ],
                          isSelected: _selections3,
                          onPressed: (int index) {
                            setState(() {
                              _selections3[index] = !_selections3[index];
                            });
                          },
                        ),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Center(
                        child: ToggleButtons(
                          children: <Widget> [
                            Text("   Food/snacks   ",textScaleFactor: 1.5),
                            Text("     Camera     ",textScaleFactor: 1.5),
                            Text("   Itinerary   ",textScaleFactor: 1.5),
                          ],
                          isSelected: _selections4,
                          onPressed: (int index) {
                            setState(() {
                              _selections4[index] = !_selections4[index];
                            });
                          },
                        ),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Center(
                        child: ToggleButtons(
                          children: <Widget> [
                            Text("Guidebook",textScaleFactor: 1.5),
                            Text("Travel blanket",textScaleFactor: 1.5),
                            Text(" Insurance Cards",textScaleFactor: 1.5),
                          ],
                          isSelected: _selections5,
                          onPressed: (int index) {
                            setState(() {
                              _selections5[index] = !_selections5[index];
                            });
                          },
                        ),
                      ),
                    ]
                ),
                TableRow(
                    children: [
                      Center(
                        child: ToggleButtons(
                          children: <Widget> [
                            Text("Copy of Passport ",textScaleFactor: 1.5),
                            Text(" Maps/Directions",textScaleFactor: 1.5),
                            Text("  Visa  ",textScaleFactor: 1.5),
                          ],
                          isSelected: _selections6,
                          onPressed: (int index) {
                            setState(() {
                              _selections6[index] = !_selections6[index];
                            });
                          },
                        ),
                      ),
                    ]
                ),
              ],
            ),),
          Image.asset('images/tr2.gif', height: 150, width: 300,),
        ],
      ),
    );

  }

}