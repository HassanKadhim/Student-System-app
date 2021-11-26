import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_system/logic/controllers/auth_controller.dart';
import 'package:student_system/routes/routes.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {

  AuthController authcontroller = Get.find();
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),(){
      if (authcontroller.isAuth()){
        Get.offAllNamed(AppRoutes.home);
      }else{
        Get.offAllNamed(AppRoutes.login);
      }
    }
    );
    super.initState();
  }
  initScreen(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff11ccef),
                Color(0xff117bef),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Image(
                image: AssetImage("assets/images/logo.png"),
              ),
              Padding(padding: EdgeInsets.all(20.0)),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              CircularProgressIndicator(
                backgroundColor: Colors.white,
                strokeWidth: 1,
              ),
            ],
          ),
        ),
      ),
   );
  }
}
