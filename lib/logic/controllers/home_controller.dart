import 'dart:convert';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

import '../../config.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = 1.obs;
  var storage = const FlutterSecureStorage();
  var name = ''.obs;
  RxString profilePhoto = ''.obs;

  void onInit() async {
    getName();

    super.onInit();


  }

  getName() async {
    name.value = (await storage.read(key: "name"))!;
    profilePhoto.value = (await storage.read(key: "profile_photo_path"))!;
  }


  final List<Map<dynamic, dynamic>> tabs = [
    {
      "title": "الاشعارات",
      "icon": Icons.add_alert_sharp,
      "route": '/newsletter'
    },
    {"title": "الرئسية", "icon": Icons.home, "route": '/home'},
    {"title": "الملف الشخصي", "icon": Icons.person, "route": '/profile'},
  ].obs;

  void tabIndex(String route) {
    for (var i = 0; i < tabs.length; i++) {
      if (tabs[i]['route'] == route) {
        selectedIndex.value = i;
      }
      ;
    }
  }

  void onItemTap(int index) {
    selectedIndex.value = index;
    Get.offAndToNamed(tabs[index]['route']);
  }
}
