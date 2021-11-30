import 'package:flutter/material.dart';
import 'package:student_system/routes/routes.dart';
import 'package:get/get.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

void main() async {
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
  await FirebaseMessaging.instance.subscribeToTopic('to');
}

