import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:student_system/views/widgets/buildCard.dart';
import '../../constants.dart';
import 'auth/login.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      backgroundColor: kBackgroundColor,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: kBackgroundColor,
        color:kTextColor ,
        height: 50.0,
        items: <Widget>[
          Center(
              child: Icon(
                Icons.account_circle,
                size: 30,
                color: kBackgroundColor,
              )
          ),
          Center(
              child: Icon(
                Icons.home_filled,
                size: 30,
                color: kBackgroundColor,
              )
          ),
          Center(
              child: Icon(
                Icons.add_alert,
                size: 30,
                color: kBackgroundColor,
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
                    padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Container(
                        child: Text(
                          'مرحباً Hassan Kadhim',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: kTitleTextColor,
                          ),
                        ),
                      ),
                      Container(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/logo.png'),
                          minRadius: 27,
                          maxRadius: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                buildCardList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  buildCardList() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: <Widget>[
          HomeCard(
            'الدرجات ',
            'يمكن معرفة جميع الدرجات الخاصة بك',
            'assets/icons/grads.png',
            kBlueColor,
          ),
          SizedBox(
            height: 40,
          ),
          HomeCard(
            'االغيابات',
            'يمكنك معرفة جميع االغيابات الخاصة بك',
            'assets/icons/time.png',
            kYellowColor,
          ),
          SizedBox(
            height: 40,
          ),
          HomeCard(
            'االتنبيهات',
            'يمكنك معرفة جميع االغيابات الخاصة بك',
            'assets/icons/not.png',
            kOrangeColor,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}