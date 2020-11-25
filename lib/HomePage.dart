import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_project/navigation_screen/about_us.dart';
import 'package:final_project/navigation_screen/advisory.dart';
import 'package:final_project/navigation_screen/all_destinations.dart';
import 'package:final_project/navigation_screen/pack_bag.dart';
import 'package:final_project/navigation_screen/travel_guide.dart';
import 'package:final_project/ui_components/DetailsPage.dart';
import 'package:final_project/ui_components/card_view.dart';
import 'package:flutter/material.dart';


const List<String> context_menu_choice = <String>[
  "Item 1",
  "Item 2",
  "Item 3"
];

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
  List<String> imagelist = [
    "images/nyc.jpg",
    "images/sin.jpg",
    "images/paris.jpeg",
    "images/london.jpg",
    "images/tokiyo.jpeg"
  ];

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("A Destination For The New Millennium", style:
            TextStyle(fontSize: 28.0, fontWeight: FontWeight.w800),),
            SizedBox(height: 5.0,),
            Text("Let's Discover a new destination with us", style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w400),),
            SizedBox(height: 60.0,),
            Text("Top Picks", style: TextStyle(fontSize: 28.0),),
            //SizedBox(height: 20.0,),
            CarouselSlider(
              options: CarouselOptions(
                height: 320.0,
                enableInfiniteScroll: false,
                initialPage: 1,
              ),
              // We are creating cardview for our travel-globe application
              // details page
              items: [
                InkWell(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(imagelist[0], "New York City", "USA")));
                  },
                  child: cardShape(imagelist[0], "New York City", "USA"),
                ),
                InkWell(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(imagelist[1], "South Island", "New Zealand")));
                  },
                  child: cardShape(imagelist[1], "South Island", "New Zealand"),
                ),
                InkWell(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(imagelist[2], "Paris", "France")));
                  },
                  child: cardShape(imagelist[2], "Paris", "France"),
                ),
                InkWell(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(imagelist[3], "London", "England")));
                  },
                  child: cardShape(imagelist[3], "London", "England"),
                ),
                InkWell(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(imagelist[4], "Tokyo", "Japan")));
                  },
                  child: cardShape(imagelist[4], "Tokyo", "Japan"),
                ),
                //cardShape(imagelist[0], "First", "First"),
              ],
            ),
          ],
        ),
      ),
    );
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
            leading: Icon(Icons.location_city, color: Colors.black),
            title: Text('All Destinations', style: (TextStyle(fontFamily: 'Comfortaa', color:Colors.black, fontSize: 20)),),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => AllDestinations()));
            },),
          ListTile(
            leading: Icon(Icons.title,color: Colors.black),
            title: Text('Travel Guide', style: (TextStyle(fontFamily: 'Comfortaa', color: Colors.black, fontSize: 20)),),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => TravelGuide()));
            },),
          ListTile(
            leading: Icon(Icons.check_box, color: Colors.black),
            title: Text('Pack-a-Bag', style: (TextStyle(fontFamily: 'Comfortaa', color: Colors.black, fontSize: 20)),),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => PackBag()));
            },),
          ListTile(
            leading: Icon(Icons.local_pharmacy, color: Colors.black),
            title: Text('COVID-19 Advisory', style: (TextStyle(fontFamily: 'Comfortaa', color: Colors.black, fontSize: 20)),),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Advisory()));
            },),
          ListTile(
            leading: Icon(Icons.developer_mode, color: Colors.black),
            title: Text('About Us', style: (TextStyle(fontFamily: 'Comfortaa', color: Colors.black, fontSize: 20)),),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs()));
            },),
        ],),);
  }
}
const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);
const int _blackPrimaryValue = 0xFF7041EE;
