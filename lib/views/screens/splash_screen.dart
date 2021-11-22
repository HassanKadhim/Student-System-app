import 'dart:async';
import 'package:flutter/material.dart';

import 'dart:math';

import 'auth/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 2);
    return new Timer(duration, route);
  }


  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xff11ccef),
                  Color(0xff117bef),
                ],)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Container(
                // color: Colors.grey,
                width: MediaQuery.of(context).size.width / 2,

              ),
            Container(
              child: Image(
                image: AssetImage("assets/images/logo.png"),
              ),
            ),
            Padding(padding: EdgeInsets.all(20.0)),
            // Text(
            //   "${Mtivion()}",
            //   style: TextStyle(
            //       fontSize: 16.0,
            //       color: Colors.white,
            //       fontWeight: FontWeight.bold),
            // ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
            )
          ],
        ),
      ),
    ));
  }
}
