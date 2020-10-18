import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class SplashPage extends StatefulWidget {
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  void navigationToNextPage() {
    Navigator.pushReplacementNamed(context, '/');
  }

  startSplashScreenTimer() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationToNextPage);
  }

  @override
  void initState() {
    super.initState();
    startSplashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Container(
        child: new Image.asset('assets/images/tenor.gif'));
  }
}