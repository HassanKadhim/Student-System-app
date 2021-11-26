import 'package:flutter/material.dart';
import 'package:student_system/routes/routes.dart';
import 'package:get/get.dart';


void main() {
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
}

