import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_system/logic/controllers/home_controller.dart';
import 'package:student_system/routes/routes.dart';
import 'package:student_system/views/widgets/bottomnavigationbar.dart';
import 'package:student_system/views/widgets/buildCard.dart';
import '../../constants.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  static var api = 'https://basrtnapi.itourstory.com/storage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body:SafeArea(
        bottom: false,
        child:SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child :Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children:<Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 5),
                  child: Obx(()=>  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [

                      Text('مرحباً ${controller.name.value}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: kTextColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: ()=> Get.offAndToNamed(AppRoutes.profile),
                        child:  CircleAvatar(
                          backgroundColor: kCategoryTextColor,
                          backgroundImage: controller.profilePhoto.value.isNotEmpty ?
                          NetworkImage('$api/${controller.profilePhoto.value}'):
                          NetworkImage('$api/student/img/avtar.png')
                        ),
                      ),
                    ],
                  ),),
                  ),
                const  Divider(color: kTextColor, thickness: 0.1),
                const SizedBox(
                  height: 40,
                ),
                buildCardList(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:HomeBottomNavigationBar(),
    );
  }
  buildCardList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: <Widget>[

          HomeCard(
              'الدرجات ',
              'يمكن معرفة جميع الدرجات الخاصة بك',
              'assets/icons/grads.png',
              '/grade'
          ),
          const SizedBox(height: 40,),
          HomeCard(
              'االغيابات',
              'يمكنك معرفة جميع االغيابات الخاصة بك',
              'assets/icons/time.png',
              '/time'
          ),
          const SizedBox(height: 40,),
          HomeCard(
              'التنبيهات',
              'يمكنك معرفة جميع التنبيهات الخاصة بك',
              'assets/icons/not.png',
              '/not'
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}





