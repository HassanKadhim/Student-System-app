import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_system/logic/controllers/auth_controller.dart';
import 'package:student_system/views/widgets/bottomnavigationbar.dart';
import 'package:student_system/views/widgets/profileCard.dart';
import 'package:student_system/views/widgets/profilemenu.dart';

import '../../constants.dart';

class Profile extends GetView<AuthController> {
   Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        bottomNavigationBar:HomeBottomNavigationBar(),
        body:SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const ProfilePic(),
                  const SizedBox(height: 20),
                  const Text("حسن كاظم",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: kTextColor,
                    ),
                  ),
                  const Text("hassan57905@gmail.com",
                    style: TextStyle(
                      fontSize: 10,
                      color: kTextColor,
                      letterSpacing: 1
                    ),
                  ),
                  const SizedBox(height: 20),
                  const  Divider(color: kTextColor, thickness: 0.1),
                  const SizedBox(height: 10),
                  ProfileCard(
                    'القسم',
                      Icons.view_list,
                      'رابعة - نظم',
                  ),
                  const SizedBox(height: 20),
                  ProfileCard(
                    'رقم الهاتف',
                    Icons.phone,
                    '07716857905',
                  ),
                  const SizedBox(height: 20),
                  ProfileCard(
                    'الدراسة',
                    Icons.adjust_sharp,
                    'مسائي',
                  ),
                  const SizedBox(height: 20),
                  ProfileCard(
                    'لعنوان',
                    Icons.location_city,
                    'البصرة - ابي الخصيب',
                  ),
                  const SizedBox(height: 20),
                  MaterialButton(onPressed: (){controller.logout();},
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: kCardColor.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: ListTile(
                          leading: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            decoration: BoxDecoration(

                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.login,
                                  color:kTextColor ,
                                ),
                              ],
                            ),
                          ),
                          title: const Text(
                           " تسجيل الخروج",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kTextColor,
                            ),
                          ),
                        ),
                      ),
                    ),

                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
