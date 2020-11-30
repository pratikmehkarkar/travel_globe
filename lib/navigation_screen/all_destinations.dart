import 'package:flutter/material.dart';
import 'package:meet_network_image/meet_network_image.dart';

class AllDestinations extends StatefulWidget
{
  _AllDestinationsState createState() => _AllDestinationsState();
}

class _AllDestinationsState extends State<AllDestinations>
{
  String url_usa = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/usa.png?alt=media&token=30505da3-c5dd-4417-bd06-987ad73d5029";
  String url_india = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/india.png?alt=media&token=0754dccf-d998-4e06-93aa-c21328fea41b";
  String url_uk = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/uk.png?alt=media&token=0ff0361d-bac5-41bb-bee4-115e8b322023";
  String url_france = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/france.png?alt=media&token=c3fe0784-d53b-4505-8ab4-6b4b893b1245";

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
        title: Text("All Destinations", style: TextStyle(color: Colors.black),),
      ),
      body: Center(
          child: GridView.extent(
            primary: false,
            padding: const EdgeInsets.all(16),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 200.0,
            children: <Widget>[
              Container(
                child: GestureDetector(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40), // if you need this
                      side: BorderSide(
                        color: Colors.grey.withOpacity(0.2),
                        width: 1,),),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MeetNetworkImage(
                          imageUrl: url_usa,
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          loadingBuilder: (context) => Center(
                            child: CircularProgressIndicator(),
                          ),
                          errorBuilder: (context, e) => Center(
                            child: Text('No Internet Connection !'),
                          ),
                        ),
                        //Tooltip(message: 'Click here to see all destinations'),
                        //SizedBox(height: 3.0,),
                        Text("USA", style: TextStyle(fontWeight: FontWeight.w400),),
                      ],
                    ),),
                  onTap: ()
                  {
                    showModalBottomSheet<void>
                      (context: context,
                        builder: (BuildContext context)
                        {
                          return new Container(
                            child: Scrollbar(
                              child: ListView(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                children: [
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("NY")),),
                                    title: Text("New York"),
                                    subtitle: Text("Statue of Liberty, Empire State Building & Times Square"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("SF")),),
                                    title: Text("San Francisco"),
                                    subtitle: Text("Golden Gate Bridge, Year-round fog, cable cars & Victorian homes"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("LV")),),
                                    title: Text("Las Vegas"),
                                    subtitle: Text("Neon-lit desert city with luxury resorts, theme hotels, casinos & big name entertainment"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("W")),),
                                    title: Text("Washington, D.C"),
                                    subtitle: Text("U.S Capital, home to federal gov.& cultural institutions"),),


                                ],
                              ),),
                          );
                        });
                  },
                ),
              ),
              Container(
                child: GestureDetector(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40), // if you need this
                      side: BorderSide(
                        color: Colors.grey.withOpacity(0.2),
                        width: 1,),),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MeetNetworkImage(
                          imageUrl: url_india,
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          loadingBuilder: (context) => Center(
                            child: CircularProgressIndicator(),
                          ),
                          errorBuilder: (context, e) => Center(
                            child: Text('No Internet Connection !'),
                          ),
                        ),
                        //SizedBox(height: 3.0,),
                        Text("India", style: TextStyle(fontWeight: FontWeight.w400),),
                      ],
                    ),),
                  onTap: ()
                  {
                    showModalBottomSheet<void>
                      (context: context,
                        builder: (BuildContext context)
                        {
                          return new Container(
                            child: Scrollbar(
                              child: ListView(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                children: [
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("NY")),),
                                    title: Text("New York"),
                                    subtitle: Text("Statue of Liberty, Empire State Building & Times Square"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("SF")),),
                                    title: Text("San Francisco"),
                                    subtitle: Text("Golden Gate Bridge, Year-round fog, cable cars & Victorian homes"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("LV")),),
                                    title: Text("Las Vegas"),
                                    subtitle: Text("Neon-lit desert city with luxury resorts, theme hotels, casinos & big name entertainment"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("W")),),
                                    title: Text("Washington, D.C"),
                                    subtitle: Text("U.S Capital, home to federal gov.& cultural institutions"),),


                                ],
                              ),),
                          );
                        });
                  },
                ),
              ),
              Container(
                child: GestureDetector(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40), // if you need this
                      side: BorderSide(
                        color: Colors.grey.withOpacity(0.2),
                        width: 1,),),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MeetNetworkImage(
                          imageUrl: url_uk,
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          loadingBuilder: (context) => Center(
                            child: CircularProgressIndicator(),
                          ),
                          errorBuilder: (context, e) => Center(
                            child: Text('No Internet Connection !'),
                          ),
                        ),
                        //SizedBox(height: 3.0,),
                        Text("UK", style: TextStyle(fontWeight: FontWeight.w400),),
                      ],
                    ),),
                  onTap: ()
                  {
                    showModalBottomSheet<void>
                      (context: context,
                        builder: (BuildContext context)
                        {
                          return new Container(
                            child: Scrollbar(
                              child: ListView(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                children: [
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("NY")),),
                                    title: Text("New York"),
                                    subtitle: Text("Statue of Liberty, Empire State Building & Times Square"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("SF")),),
                                    title: Text("San Francisco"),
                                    subtitle: Text("Golden Gate Bridge, Year-round fog, cable cars & Victorian homes"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("LV")),),
                                    title: Text("Las Vegas"),
                                    subtitle: Text("Neon-lit desert city with luxury resorts, theme hotels, casinos & big name entertainment"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("W")),),
                                    title: Text("Washington, D.C"),
                                    subtitle: Text("U.S Capital, home to federal gov.& cultural institutions"),),


                                ],
                              ),),
                          );
                        });
                  },
                ),
              ),
              Container(
                child: GestureDetector(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40), // if you need this
                      side: BorderSide(
                        color: Colors.grey.withOpacity(0.2),
                        width: 1,),),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MeetNetworkImage(
                          imageUrl: url_france,
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          loadingBuilder: (context) => Center(
                            child: CircularProgressIndicator(),
                          ),
                          errorBuilder: (context, e) => Center(
                            child: Text('No Internet Connection !'),
                          ),
                        ),
                        //SizedBox(height: 3.0,),
                        Text("France", style: TextStyle(fontWeight: FontWeight.w400),),
                      ],
                    ),),
                  onTap: ()
                  {
                    showModalBottomSheet<void>
                      (context: context,
                        builder: (BuildContext context)
                        {
                          return new Container(
                            child: Scrollbar(
                              child: ListView(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                children: [
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("NY")),),
                                    title: Text("New York"),
                                    subtitle: Text("Statue of Liberty, Empire State Building & Times Square"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("SF")),),
                                    title: Text("San Francisco"),
                                    subtitle: Text("Golden Gate Bridge, Year-round fog, cable cars & Victorian homes"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("LV")),),
                                    title: Text("Las Vegas"),
                                    subtitle: Text("Neon-lit desert city with luxury resorts, theme hotels, casinos & big name entertainment"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("W")),),
                                    title: Text("Washington, D.C"),
                                    subtitle: Text("U.S Capital, home to federal gov.& cultural institutions"),),


                                ],
                              ),),
                          );
                        });
                  },
                ),
              ),
              Container(
                child: GestureDetector(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40), // if you need this
                      side: BorderSide(
                        color: Colors.grey.withOpacity(0.2),
                        width: 1,),),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MeetNetworkImage(
                          imageUrl: url_usa,
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          loadingBuilder: (context) => Center(
                            child: CircularProgressIndicator(),
                          ),
                          errorBuilder: (context, e) => Center(
                            child: Text('No Internet Connection !'),
                          ),
                        ),
                        //SizedBox(height: 3.0,),
                        Text("USA", style: TextStyle(fontWeight: FontWeight.w400),),
                      ],
                    ),),
                  onTap: ()
                  {
                    showModalBottomSheet<void>
                      (context: context,
                        builder: (BuildContext context)
                        {
                          return new Container(
                            child: Scrollbar(
                              child: ListView(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                children: [
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("NY")),),
                                    title: Text("New York"),
                                    subtitle: Text("Statue of Liberty, Empire State Building & Times Square"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("SF")),),
                                    title: Text("San Francisco"),
                                    subtitle: Text("Golden Gate Bridge, Year-round fog, cable cars & Victorian homes"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("LV")),),
                                    title: Text("Las Vegas"),
                                    subtitle: Text("Neon-lit desert city with luxury resorts, theme hotels, casinos & big name entertainment"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("W")),),
                                    title: Text("Washington, D.C"),
                                    subtitle: Text("U.S Capital, home to federal gov.& cultural institutions"),),


                                ],
                              ),),
                          );
                        });
                  },
                ),
              ),
              Container(
                child: GestureDetector(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40), // if you need this
                      side: BorderSide(
                        color: Colors.grey.withOpacity(0.2),
                        width: 1,),),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MeetNetworkImage(
                          imageUrl: url_usa,
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          loadingBuilder: (context) => Center(
                            child: CircularProgressIndicator(),
                          ),
                          errorBuilder: (context, e) => Center(
                            child: Text('No Internet Connection !'),
                          ),
                        ),
                        //SizedBox(height: 3.0,),
                        Text("USA", style: TextStyle(fontWeight: FontWeight.w400),),
                      ],
                    ),),
                  onTap: ()
                  {
                    showModalBottomSheet<void>
                      (context: context,
                        builder: (BuildContext context)
                        {
                          return new Container(
                            child: Scrollbar(
                              child: ListView(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                children: [
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("NY")),),
                                    title: Text("New York"),
                                    subtitle: Text("Statue of Liberty, Empire State Building & Times Square"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("SF")),),
                                    title: Text("San Francisco"),
                                    subtitle: Text("Golden Gate Bridge, Year-round fog, cable cars & Victorian homes"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("LV")),),
                                    title: Text("Las Vegas"),
                                    subtitle: Text("Neon-lit desert city with luxury resorts, theme hotels, casinos & big name entertainment"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("W")),),
                                    title: Text("Washington, D.C"),
                                    subtitle: Text("U.S Capital, home to federal gov.& cultural institutions"),),


                                ],
                              ),),
                          );
                        });
                  },
                ),
              ),
            ],
          )),
    );
  }
}
