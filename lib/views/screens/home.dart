import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:student_system/logic/controllers/user_controller.dart';
import 'package:student_system/views/widgets/buildCard.dart';
import '../../constants.dart';

class HomeScreen extends GetView<UserController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx((data) => Scaffold(
      backgroundColor: kPrimaryColor,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: kPrimaryColor,
        color:kCardColor ,
        height: 50.0,
        items: const <Widget>[
          Center(
              child: Icon(
                Icons.account_circle,
                size: 30,
                color: kTextColor,
              )
          ),
          Center(
              child: Icon(
                Icons.home_filled,
                size: 30,
                color: kTextColor,
              )
          ),
          Center(
              child: Icon(
                Icons.add_alert,
                size: 30,
                color: kTextColor,
              )
          ),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body:SafeArea(
        bottom: false,
        child:SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child :Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children:<Widget>[
            Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
              Text(data['email'],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: kTextColor,
              ),
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/avtar.png'),
              minRadius: 27,
              maxRadius: 30,
            ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        buildCardList(),
        ],
      ),
    ),
    ),
    ),
    ),
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
              'االتنبيهات',
              'يمكنك معرفة جميع االغيابات الخاصة بك',
              'assets/icons/not.png',
              '/not'
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}



