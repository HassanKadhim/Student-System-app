import 'package:flutter/material.dart';
import 'package:student_system/views/screens/auth/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'نظام ادارة الطلاب',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "NotoKufiArabic",
        primarySwatch: Colors.blue,
      ),
      home:  LoginPage(),
    );
  }
}

