import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import 'auth/login.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; //this gonna give us total height and with of our device
    return Scaffold(
          body: Center(
            child: Text('مرحبا , حسن كاظم'),
          ),
    );
  }
}