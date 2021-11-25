import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_system/views/widgets/gradeCarde.dart';

import '../../../constants.dart';

class Grade extends StatefulWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  _GradeState createState() => _GradeState();
}

class _GradeState extends State<Grade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  children:  <Widget>[
                    SizedBox(height: 10),
                    const Text(
                      'الدرجات ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: kTextColor,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GradCard(
                      'Java OOP',
                      'امتحان شهر اول',
                      '12',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GradCard(
                      'PHP OOP',
                      'امتحان شهر اول',
                      '60',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GradCard(
                      'Python OOP',
                      'امتحان شهر اول',
                      '50',
                    ),
                    SizedBox( height: 20,),
                    GradCard(
                      'Dart OOP',
                      'امتحان شهر اول',
                      '50',
                    ),
                    SizedBox( height: 20,),
                    GradCard(
                      'Dart OOP',
                      'امتحان شهر اول',
                      '50',
                    ),
                    SizedBox( height: 20,),
                    GradCard(
                      'Dart OOP',
                      'امتحان شهر اول',
                      '50',
                    ),
                    SizedBox( height: 20,),
                    GradCard(
                      'Dart OOP',
                      'امتحان شهر اول',
                      '50',
                    ),
                  ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
