import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dart:ui';

import 'package:student_system/database/models/newsletter_model.dart';

class Details extends StatelessWidget {
   Details({Key? key}) : super(key: key);
  final NewsLetter data = Get.arguments;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9E9E9),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.blue,
            expandedHeight: 250,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25))),
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                borderRadius:
                BorderRadius.vertical(bottom: Radius.circular(25)),
                child: Image.network(
                 'sdf',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                   data.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 22,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30,left: 30),
                  child: Text(
                    data.body,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.right,

                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}


