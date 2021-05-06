import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:loginsample_app/pages/landingpage.dart';
import 'package:splashscreen/splashscreen.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new LandingPage(),
        image: Image.asset('images/Logo2.png'),
        backgroundColor: Colors.black,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 200.0,
        onClick: () => print("Flutter Egypt"),
        loaderColor: Colors.red);
  }
}
