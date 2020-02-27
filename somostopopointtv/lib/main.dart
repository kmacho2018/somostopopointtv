import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'aftersplash.dart';
void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new AfterSplash(),
      title: new Text('Bienvenido a SomosTopoPointTV',
      textAlign: TextAlign.center,
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0
        ),
      ),
      image: new Image.asset('assets/images/logo.png'),
      //image: new Image.network('https://flutter.io/images/catalog-widget-placeholder.png'),
      gradientBackground: new LinearGradient(colors: [Colors.white, Colors.red], begin: Alignment.topLeft, end: Alignment.bottomRight),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 150.0,
      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.white,
    );
  }
}

