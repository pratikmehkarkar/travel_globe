import 'package:final_project/HomePage.dart';
import 'package:final_project/list.dart';
import 'package:final_project/localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Advisory extends StatelessWidget
{
  //The root of flutter application
  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(
        localizationsDelegates: [
          const AppLocalizationsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', ''),
          const Locale('es', ''),
        ],
        localeResolutionCallback:
            (Locale locale, Iterable<Locale> supportedLocales) {
          for (Locale supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode ||
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
        debugShowCheckedModeBanner: false,
        home: Dashboard());
  }
}
class Dashboard extends StatelessWidget {
  //String card_1 = "";
  String url_usa = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/usa.png?alt=media&token=30505da3-c5dd-4417-bd06-987ad73d5029";
  String url_india = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/india.png?alt=media&token=0754dccf-d998-4e06-93aa-c21328fea41b";
  String url_uk = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/uk.png?alt=media&token=0ff0361d-bac5-41bb-bee4-115e8b322023";
  String url_france = "https://firebasestorage.googleapis.com/v0/b/sathfcm.appspot.com/o/france.png?alt=media&token=c3fe0784-d53b-4505-8ab4-6b4b893b1245";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: ()
          {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
            //Navigator.pop(context);
          },
        ),
        //actions: <Widget>[my_simple_menu()],
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text('COVID-19 Advisory', style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        children: [
          SizedBox(height: 10.0,),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Text(AppLocalizations.instance.text('page_one'), textAlign: TextAlign.center, style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w800),),),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Image.asset('images/covid.jpg', alignment: Alignment.center,height: 200,width: 150,),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.local_pharmacy, color: Colors.red,),
                  title: Text('COVID-19 Travel Advisory', style: TextStyle(fontWeight: FontWeight.w400),),
                  subtitle: const Text('Recommendations for international/domestic traffic. Temperature screening alone, at exit or entry, is not an effective way to stop international spread, since infected individuals may be in incubation period, '
                      'may not express apparent symptoms early on in the course of the disease'),),
                ButtonBar(
                  children: <Widget>[
                    Tooltip(message: "Click here to view guidelines by WHO",
                    child: FlatButton(
                      child: const Text('View More'),
                      onPressed: () {
                        Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder: (context, animation, anotherAnimation)
                            {
                              return _covidadv();
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
                    ),),
                  ],),],),),
        ],
      ),
    );
  }
}
class _covidadv extends StatelessWidget
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
            Navigator.pop(context, MaterialPageRoute(builder: (context) => Advisory()));
          },
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.black),
        title: Text('Travel Advisory', style: TextStyle(color: Colors.black),),
      ),
      body: new SingleChildScrollView(
        padding: EdgeInsets.all(15.0),
        child: Column(
        children: [
          new Text(AppLocalizations.instance.text('page_two'),style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),textAlign: TextAlign.justify,),
          SizedBox(height: 10.0,),
          new Text(AppLocalizations.instance.text('page_three'),style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300), textAlign: TextAlign.justify,),
          SizedBox(height: 5.0,),
          new Text(AppLocalizations.instance.text('page_four'),style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.w300),textAlign: TextAlign.justify,),
          SizedBox(height: 5.0,),
          new Text(AppLocalizations.instance.text('page_five'),style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),textAlign: TextAlign.justify,),
          SizedBox(height: 5.0,),
          new Text(AppLocalizations.instance.text('page_six'),style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),textAlign: TextAlign.justify,),
        ],
      ),

      ),
    );
  }
}

/*child: new Text(
            AppLocalizations.instance.text('page_one'),
            style: new TextStyle(
              fontSize: 22.00,
              fontWeight: FontWeight.bold,
            ),
          ),*/