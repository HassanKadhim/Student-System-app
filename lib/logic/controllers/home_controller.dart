import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';



class HomeController extends GetxController {
  RxInt selectedIndex = 1.obs;
  var name =''.obs;
  var storage =  const FlutterSecureStorage();

  @override
  void onInit() async {
    getName();
    // fetch();
    super.onInit();
  }
  getName() async {
    name.value = (await storage.read(key: "name"))!;
  }







  final List<Map<dynamic, dynamic>> tabs = [
    {"title": "الاشعارات", "icon": Icons.add_alert_sharp, "route": '/newsletter'},
    {"title": "الرئسية", "icon": Icons.home, "route": '/home'},
    {"title": "الملف الشخصي", "icon": Icons.person, "route": '/profile'},
  ].obs;

  void tabIndex(String route){
    for (var i = 0; i < tabs.length; i++) {
      if (tabs[i]['route'] == route) {
        selectedIndex.value = i;
      };
    }
  }

  void onItemTap(int index) {
    selectedIndex.value = index;
    Get.offAndToNamed(tabs[index]['route']);
  }



}