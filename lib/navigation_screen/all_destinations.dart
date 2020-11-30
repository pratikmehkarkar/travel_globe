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
  String url_russia = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/russia-min.jpg?alt=media&token=e0dc572a-0dec-4bc5-b9a7-b82007b34e07";
  String url_japan = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/japan-min.png?alt=media&token=9cb9baf5-e954-4442-9aa5-34ba63df9de8";

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
                                padding: const EdgeInsets.symmetric(vertical: 15),
                                children: [
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("NY")),),
                                    title: Text("New York"),
                                    subtitle: Text("Statue of Liberty, Empire State Building & Times Square"),
                                  ),
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
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("LA")),),
                                    title: Text("Los Angeles"),
                                    subtitle: Text("Venice Beach, Griffith Observatory, Disneyland, and Hollywood Stars"),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                                    crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                                    children: [
                                      Tooltip(
                                        child: IconButton(icon: Icon(Icons.info,color: Colors.black,),
                                            onPressed: (){ }),
                                        message: 'The American Flag Has Had 27 Versions\nDrives on the right side of the road.\nUses the imperial system\nThe US Has The 4th Longest River System In The World\nThe US doesn’t Have An Official Language\nThere Is More Bourbon Than People In Kentucky',
                                        padding: EdgeInsets.all(20),
                                        margin: EdgeInsets.all(20),
                                        showDuration: Duration(seconds: 60),
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: const BorderRadius.all(Radius.circular(4)),
                                        ),
                                        textStyle: TextStyle(color: Colors.white),
                                        preferBelow: true,
                                        verticalOffset: 200,
                                      ),
                                      Text('Fun facts about the USA!  ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0),
                                      ),
                                      //Icon(
                                        //Icons.arrow_forward,
                                        //color: Colors.black,
                                        //size: 18.0,
                                     // ),
                                    ],
                                  ),
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
                                      child: CircleAvatar(child: Text("AG")),),
                                    title: Text("Agra"),
                                    subtitle: Text("Home of the magnificent Taj Mahal, Two other world heritage sites, Agra fort and Fatehpur Sikri."),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("G")),),
                                    title: Text("Goa"),
                                    subtitle: Text("Home to Dudhasagar Falls, a 600-meter high waterfall on the Mandovi River and Fort Aguada Beach"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("M")),),
                                    title: Text("Mumbai"),
                                    subtitle: Text("Gateway of India, shore of the Arabian Sea, Haji Ali, Elephanta Island"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("J")),),
                                    title: Text("Jaipur"),
                                    subtitle: Text("Pink City, Jeep safari through Nahargarh Sanctuary, Hawa Mahal, Amer Fort and Nahargarh Fort"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("BG")),),
                                    title: Text("Bengaluru"),
                                    subtitle: Text("Lal Bagh Gardens, Bannerghatta National Park, Vidhana Souta Palace, and Dodda Ganapathi Temple"),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                                    crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                                    children: [
                                      Tooltip(
                                        child: IconButton(icon: Icon(Icons.info,color: Colors.black,),
                                            onPressed: (){ }),
                                        message: 'India is the wettest inhabited place on Earth\nChenab Bridge is the highest rail bridge in the world\nThe popular game “Snakes and Ladders” originated in India\nIndia has 22 recognized languages\nRanked the second-most populous country in the world\nThe world’s largest sundial is located in India',
                                        padding: EdgeInsets.all(20),
                                        margin: EdgeInsets.all(20),
                                        showDuration: Duration(seconds: 60),
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: const BorderRadius.all(Radius.circular(4)),
                                        ),
                                        textStyle: TextStyle(color: Colors.white),
                                        preferBelow: true,
                                        verticalOffset: 200,
                                      ),

                                      Text('Fun facts about India!',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0),
                                      ),
                                      ],
                                  ),

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
                                      child: CircleAvatar(child: Text("CB")),),
                                    title: Text("Cambridge"),
                                    subtitle: Text("University of Cambridge. River Cam, Kings College Chapel, and Great St. Mary’s Church Tower"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("LO")),),
                                    title: Text("London"),
                                    subtitle: Text("Westminster, St. Paul's Cathedral, Tower of London, Big Ben, and Tower Bridge"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("CH")),),
                                    title: Text("Chester"),
                                    subtitle: Text("Chester Cathedral, Ancient Roman walls and Amphitheaters, and Grosvenor Park"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("LP")),),
                                    title: Text("Liverpool"),
                                    subtitle: Text("Home of the beatles, Two major soccer teams, and Wood Street"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("BR")),),
                                    title: Text("Bristol"),
                                    subtitle: Text("Old City, St Nicholas Market, and historic Old Vic, arguably one of the best-known theaters"),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                                    crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                                    children: [
                                      Tooltip(
                                        child: IconButton(icon: Icon(Icons.info,color: Colors.black,),
                                            onPressed: (){ }),
                                        message: 'The first postage stamp was created in the U.K.\nGolf was invented in Scotland\nQueen Elizabeth is the longest-reigning Queen in the world\nThere is no official religion in the U.K.\nThere no active volcanoes in the U.K.\nNo mountains in England are higher than a thousand meters.\nLondon has over 170 museums\nThe U.K. has not a written constitution',
                                        padding: EdgeInsets.all(20),
                                        margin: EdgeInsets.all(20),
                                        showDuration: Duration(seconds: 60),
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: const BorderRadius.all(Radius.circular(4)),
                                        ),
                                        textStyle: TextStyle(color: Colors.white),
                                        preferBelow: true,
                                        verticalOffset: 200,
                                      ),

                                      Text('Fun facts about the UK!',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0),
                                      ),
                                      ],
                                  ),

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
                                      child: CircleAvatar(child: Text("PR")),),
                                    title: Text("Paris"),
                                    subtitle: Text("Eiffel Tower, Notre Dame de Paris, Louvre, and Palace of Versailles"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("NI")),),
                                    title: Text("Nice"),
                                    subtitle: Text("French Riviera, Italian inspired architecture, Promenade des Anglais and Colline du Chateau"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("BX")),),
                                    title: Text("Bordeaux"),
                                    subtitle: Text("Garonne River, Place de la Bourse, Les Quais, and Napoleonic-era Pont de Pierre"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("LY")),),
                                    title: Text("Lyon"),
                                    subtitle: Text("Rhone River, Saone Rivers, Lyon Cathedral, and Vieux Lyon Traboules"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("AN")),),
                                    title: Text("Annecy"),
                                    subtitle: Text("North of the Alps, Lake Annecy, and Venice of Savoie"),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                                    crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                                    children: [
                                      Tooltip(
                                        child: IconButton(icon: Icon(Icons.info,color: Colors.black,),
                                            onPressed: (){ }),
                                        message: 'French was once the official language of England\nLiberte, Egalite, Fraternite is the national motto\nUses the metric system\nThe French coastline adds up to 3427km\nThe Louvre in Paris is the most visited art museum in the world\nIt is illegal to throw out food in France\nFrance is the largest country in the EU\nFrance is the most popular tourist destination in the world',
                                        padding: EdgeInsets.all(20),
                                        margin: EdgeInsets.all(20),
                                        showDuration: Duration(seconds: 60),
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: const BorderRadius.all(Radius.circular(4)),
                                        ),
                                        textStyle: TextStyle(color: Colors.white),
                                        preferBelow: true,
                                        verticalOffset: 200,
                                      ),

                                      Text('Fun facts about France!',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0),
                                      ),
                                      ],
                                  ),

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
                          imageUrl: url_russia,
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
                        Text("Russia", style: TextStyle(fontWeight: FontWeight.w400),),
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
                                      child: CircleAvatar(child: Text("MS")),),
                                    title: Text("Moscow"),
                                    subtitle: Text("Saint Basil's Cathedral, Red Square, Moscow Kremlin, and Gorky Park"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("SP")),),
                                    title: Text("Saint Petersburg"),
                                    subtitle: Text("Neva River, Nevsky Prospekt, and fine art collections at the Hermitage"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("KZ")),),
                                    title: Text("Kazan"),
                                    subtitle: Text("Kazan Kremlin, Kul-Sharif Mosque, and Bauman Street"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("VL")),),
                                    title: Text("Vladivostok"),
                                    subtitle: Text("Mountains and bays surround Vladivostok, also Minny Gorodok and Admiralsky Skver"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("SC")),),
                                    title: Text("Sochi"),
                                    subtitle: Text("Home of the 2014 Winter Olympics, Caucasus Biosphere Reserve, and great beaches."),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                                    crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                                    children: [
                                      Tooltip(
                                        child: IconButton(icon: Icon(Icons.info,color: Colors.black,),
                                            onPressed: (){ }),
                                        message: 'The longest railway in the world is in Russia\nThe coldest inhabited town on Earth is in Russia\nTetris came from Russia\nThe bloodiest siege in history was fought in Russia\nThe biggest fortress in the world is in Russia\nRussia is home to the deepest lake in the world',
                                        padding: EdgeInsets.all(20),
                                        margin: EdgeInsets.all(20),
                                        showDuration: Duration(seconds: 60),
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: const BorderRadius.all(Radius.circular(4)),
                                        ),
                                        textStyle: TextStyle(color: Colors.white),
                                        preferBelow: true,
                                        verticalOffset: 200,
                                      ),

                                      Text('Fun facts about Russia!',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0),
                                      ),
                                      ],
                                  ),

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
                          imageUrl: url_japan,
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
                        Text("Japan", style: TextStyle(fontWeight: FontWeight.w400),),
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
                                      child: CircleAvatar(child: Text("TK")),),
                                    title: Text("Tokyo"),
                                    subtitle: Text("Sensoji Temple, Tsukiji Market, Ueno Park, and Meiji Shrine"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("KY")),),
                                    title: Text("Kyoto"),
                                    subtitle: Text("Kyoto is both the spiritual and cultural capital of Japan, it also has beautiful romantic cherry blossom trees"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("HS")),),
                                    title: Text("Hiroshima"),
                                    subtitle: Text("Peace Memorial Park and Museum, and A-Bomb Dome ruins"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("NR")),),
                                    title: Text("Nara"),
                                    subtitle: Text("Considered to be the birthplace of Japanese civilization, also has Great Buddha statue in the Todai-ji temple"),),
                                  ListTile(
                                    leading: ExcludeSemantics(
                                      child: CircleAvatar(child: Text("SP")),),
                                    title: Text("Sapporo"),
                                    subtitle: Text("The capital city of the island of Hokkaido, with great mountains and hot springs, and a Snow Festival. "),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                                    crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                                    children: [
                                      Tooltip(
                                        child: IconButton(icon: Icon(Icons.info,color: Colors.black,),
                                            onPressed: (){ }),
                                        message: 'Japan is Largely Made Up of 4 Main Islands\nJapan has the World’s Second-Highest Life Expectancy\n69% of Japan is Covered in Forest\nJapan has the World’s Deepest Underwater Postbox\nJapan has a Highway that Goes Through a Building\nThe 7th Longest Coastline in the World',
                                        padding: EdgeInsets.all(20),
                                        margin: EdgeInsets.all(20),
                                        showDuration: Duration(seconds: 60),
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: const BorderRadius.all(Radius.circular(4)),
                                        ),
                                        textStyle: TextStyle(color: Colors.white),
                                        preferBelow: true,
                                        verticalOffset: 200,
                                      ),

                                      Text('Fun facts about Japan!',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0),
                                      ),
                                      ],
                                  ),

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
