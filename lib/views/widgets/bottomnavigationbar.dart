import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:student_system/logic/controllers/home_controller.dart';

import '../../constants.dart';


class HomeBottomNavigationBar extends GetWidget {
  HomeBottomNavigationBar({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
      backgroundColor:kCardColor ,
      currentIndex: controller.selectedIndex.value,
      onTap: (index) => controller.onItemTap(index),
      selectedItemColor: Colors.blue,
      selectedFontSize: 13.0,
      showUnselectedLabels: true,
      items: controller.tabs
          .map((element) => BottomNavigationBarItem(
        icon: Icon(
          element['icon'],
          size: 20,


        ),
        label: element['title'],
      ))
          .toList(),
    ));
  }
}