import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_system/logic/controllers/auth_controller.dart';
import 'package:student_system/views/widgets/bottomnavigationbar.dart';
import 'package:student_system/views/widgets/profileCarde.dart';
import 'package:student_system/views/widgets/profilemenu.dart';

import '../../constants.dart';

class Profile extends StatelessWidget {
   Profile({Key? key}) : super(key: key);
  AuthController authcontroller = Get.find();


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
                    'مسائي',
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
                  MaterialButton(onPressed: (){authcontroller.logout();},
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
        // SingleChildScrollView(
        //   child: Directionality(
        //     textDirection: TextDirection.rtl,
        //     child: Stack(
        //       children: <Widget>[
        //         const SizedBox(
        //           height: 250,
        //           width: double.infinity,
        //           child: Image(
        //             image: AssetImage(
        //               "assets/images/cover.jpg",
        //             ),
        //             fit: BoxFit.cover,
        //           ),
        //         ),
        //         Container(
        //           margin: const EdgeInsets.fromLTRB(15, 200, 15, 15),
        //           child: Column(
        //             children: <Widget>[
        //               Stack(
        //                 children: <Widget>[
        //                   Container(
        //                     padding: const EdgeInsets.all(15),
        //                     margin: const EdgeInsets.only(top: 15),
        //                     decoration: BoxDecoration(
        //                       color: kCardColor,
        //                       borderRadius: BorderRadius.circular(20),
        //                     ),
        //                     child: Column(
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       children: <Widget>[
        //                         Container(
        //                           margin: const EdgeInsets.only(right: 95),
        //                           child: Column(
        //                             crossAxisAlignment: CrossAxisAlignment.start,
        //                             children: const <Widget>[
        //                               ListTile(
        //                                 contentPadding: EdgeInsets.all(0),
        //                                 title: Text("حسن كاظم",
        //                                   style: TextStyle(
        //                                     fontWeight: FontWeight.bold,
        //                                     fontSize: 20,
        //                                     color: kTextColor,
        //                                   ),
        //                                 ),
        //                                 //You can add Subtitle here
        //                               ),
        //                             ],
        //                           ),
        //                         ),
        //                         const SizedBox(
        //                           height: 10,
        //                         ),
        //                         Row(
        //                           children: <Widget>[
        //                             Expanded(
        //                               child: Column(
        //                                 children: const <Widget>[
        //                                   Text("5",
        //                                     style: TextStyle(
        //                                     fontWeight: FontWeight.bold,
        //                                       color: kTextColor,
        //                                     ),
        //                                   ),
        //                                   Text("الامتحانات",
        //                                     style: TextStyle(
        //                                       fontWeight: FontWeight.bold,
        //                                       color: kTextColor,
        //                                     ),
        //                                   ),
        //                                 ],
        //                               ),
        //                             ),
        //                             Expanded(
        //                               child: Column(
        //                                 children: const <Widget>[
        //                                   Text("2",
        //                                     style: TextStyle(
        //                                       fontWeight: FontWeight.bold,
        //                                       color: kTextColor,
        //                                     ),
        //                                   ),
        //                                   Text("مادري",
        //                                     style: TextStyle(
        //                                       fontWeight: FontWeight.bold,
        //                                       color: kTextColor,
        //                                     ),
        //                                   ),
        //                                 ],
        //                               ),
        //                             ),
        //                             Expanded(
        //                               child: Column(
        //                                 children: const <Widget>[
        //                                   Text("3",
        //                                     style: TextStyle(
        //                                       fontWeight: FontWeight.bold,
        //                                       color: kTextColor,
        //                                     ),
        //                                   ),
        //                                   Text("مادري",
        //                                     style: TextStyle(
        //                                       fontWeight: FontWeight.bold,
        //                                       color: kTextColor,
        //                                     ),
        //                                   ),
        //                                 ],
        //                               ),
        //                             ),
        //                             Expanded(
        //                               child: Column(
        //                                 children: const <Widget>[
        //                                   Text("1",
        //                                     style: TextStyle(
        //                                       fontWeight: FontWeight.bold,
        //                                       color: kTextColor,
        //                                     ),
        //                                   ),
        //                                   Text("الغيابات",
        //                                     style: TextStyle(
        //                                       fontWeight: FontWeight.bold,
        //                                       color: kTextColor,
        //                                     ),
        //                                   ),
        //                                 ],
        //                               ),
        //                             ),
        //                           ],
        //                         )
        //                       ],
        //                     ),
        //                   ),
        //                   Container(
        //                     width: 80,
        //                     height: 80,
        //                     margin: const EdgeInsets.only(right: 15),
        //                     decoration: BoxDecoration(
        //                       boxShadow: [
        //                         BoxShadow(
        //                           offset: const Offset(0, 0),
        //                           blurRadius: 10,
        //                           color: kCardColor.withOpacity(0.15),
        //                         ),
        //                       ],
        //                       borderRadius: BorderRadius.circular(10),
        //                       image: const DecorationImage(
        //                         image: AssetImage(
        //                           "assets/images/avtar.png",
        //                         ),
        //                         fit: BoxFit.cover,
        //                       ),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //               const SizedBox(
        //                 height: 20,
        //               ),
        //               Container(
        //
        //                 decoration: BoxDecoration(
        //                   color:kCardColor ,
        //                   borderRadius: BorderRadius.circular(20),
        //                 ),
        //                 child: Column(
        //                   children: const <Widget>[
        //                     ListTile(
        //                       title: Text(
        //                           "المعلومات الشخصية",
        //                         style: TextStyle(
        //                         fontWeight: FontWeight.bold,
        //                         fontSize: 20,
        //                         color: kTextColor,
        //                       ),
        //
        //                       ),
        //                     ),
        //                     Divider(color:kTextColor),
        //                     ListTile(
        //                       title: Text("البريد الاكتروني",
        //                         style: TextStyle(
        //                         fontWeight: FontWeight.bold,
        //                         fontSize: 15,
        //                         color: kTextColor,
        //                       ),
        //
        //                       ),
        //                       subtitle: Text("HassanKadhim@gmail.com",
        //                         style: TextStyle(
        //                           color: kTextColor,
        //                         ),
        //                       ),
        //                       leading: Icon(Icons.email,
        //                         color:Colors.blue ,
        //                       ),
        //                     ),
        //                     ListTile(
        //                       title: Text("رقم الهاتف",
        //                         style: TextStyle(
        //                           fontWeight: FontWeight.bold,
        //                           fontSize: 15,
        //                           color: kTextColor,
        //                         ),
        //                       ),
        //                       subtitle:
        //                       Text("07701111111",
        //                         style: TextStyle(
        //                           color: kTextColor,
        //                         ),
        //                       ),
        //                       leading: Icon(Icons.phone,
        //                         color:Colors.blue
        //                       ),
        //                     ),
        //                     ListTile(
        //                       title: Text("العنوان",
        //                         style: TextStyle(
        //                           fontWeight: FontWeight.bold,
        //                           fontSize: 15,
        //                           color: kTextColor,
        //                         ),
        //                       ),
        //                       subtitle: Text("البصرة - ابي الخصيب",
        //                         style: TextStyle(
        //                           color: kTextColor,
        //                         ),
        //                       ),
        //                       leading: Icon(Icons.location_city,
        //                         color:Colors.blue ,
        //                       ),
        //                     ),
        //                     ListTile(
        //                       title: Text("تاريخ الميلاد",
        //                         style: TextStyle(
        //                           fontWeight: FontWeight.bold,
        //                           fontSize: 15,
        //                           color: kTextColor,
        //                         ),
        //                       ),
        //                       subtitle: Text("6 Jul 2022",
        //                         style: TextStyle(
        //                           color: kTextColor,
        //                         ),
        //                       ),
        //                       leading: Icon(Icons.calendar_view_month,
        //                         color:Colors.blue ,
        //                       ),
        //                     ),
        //                     ListTile(
        //                       title: Text("القسم",
        //                         style: TextStyle(
        //                           fontWeight: FontWeight.bold,
        //                           fontSize: 15,
        //                           color: kTextColor,
        //                         ),),
        //                       subtitle: Text("رابعة - نظم",
        //                         style: TextStyle(
        //                           color: kTextColor,
        //                         ),
        //                       ),
        //                       leading: Icon(Icons.computer,
        //                         color:Colors.blue ,
        //                       ),
        //                     ),
        //                     ListTile(
        //                       title: Text("الدراسة",
        //                         style: TextStyle(
        //                           fontWeight: FontWeight.bold,
        //                           fontSize: 15,
        //                           color: kTextColor,
        //                         ),),
        //                       subtitle: Text("مسائي",
        //                         style: TextStyle(
        //                         color: kTextColor,
        //                         ),
        //                       ),
        //                       leading: Icon(Icons.event,
        //                         color:Colors.blue ,
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // ),

  }
}
