import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constants.dart';
import 'auth/login.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size; //this gonna give us total height and with of our device
    return Scaffold(
      backgroundColor:kPrimaryColor,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: kPrimaryColor,
        height: 50.0,
          items: <Widget>[
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
                  Icons.home_filled,
                  size: 30,
                  color: kTextColor,
                    )
                ),
            ] ,
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/logo.png'),
                      minRadius: 27,
                      maxRadius: 30,
                    )
                  ),
                  Container(
                    child: Text(
                      'مرحبا Hassan Kadhim',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: kShadowColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
                padding: EdgeInsets.only(right: 15.0 ,left: 15),
                width: MediaQuery.of(context).size.width - 40.0,
                height: MediaQuery.of(context).size.height - 50.0,
                child: GridView.count(
                  crossAxisCount: 2,
                  primary: false,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 15.0,
                  childAspectRatio: 0.8,
                  children: <Widget>[
                    _buildCard('الدرجات',  'fa-graduation-cap', '/grade' , context),
                    _buildCard('الدرجات',  'fa-graduation-cap', '/grade' , context),
                    _buildCard('الدرجات',  'fa-graduation-cap', '/grade' , context),
                    _buildCard('الدرجات',  'fa-graduation-cap', '/grade' , context),
                  ],
                )),
          ],
        ),
      ),
    );
  }
  Widget _buildCard(String name,  String icon,String rout, context) {

    return Padding(

        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),

        child: InkWell(

            onTap: () {
              // Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context) => CookieDetail(
              //
              //     )));
            },
            child: Container(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 3.0,
                            blurRadius: 5.0
                        ),
                      ],
                      color: Colors.white),
                  child: Column(
                    children: [
                      SizedBox(height: 7.0),
                    ],
                  ),
              ),
            ),
        ),
    );
  }
}
