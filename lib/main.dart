import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:student_system/routes/routes.dart';
import 'package:get/get.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp(
      GetMaterialApp(
        title: 'نظام ادارة الطلاب',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "NotoKufiArabic",
          primarySwatch: Colors.blue,
        ),
        initialRoute: AppRoutes.splash,
        getPages: AppRoutes.routes ,
      ),
  );
   await FirebaseMessaging.instance.subscribeToTopic('all');

}

