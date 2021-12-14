import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:student_system/logic/controllers/student_controller.dart';
import 'package:student_system/views/widgets/grade_list.dart';
import 'package:student_system/views/widgets/notification_list.dart';

import '../../../constants.dart';

class Notification extends GetView<StudentController> {
  const Notification({Key? key}) : super(key: key);

  // controller.student.value.grades.map((grade) => new Text(grade.grade.toString())).toList()
  // )),

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        bottom: false,
        child: Directionality(
            textDirection: TextDirection.rtl,
            child :Column(
              children: [
                SizedBox(height: 10),
                const Text(
                  'التنبيهات',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: kTextColor,
                  ),
                ),
                const  Divider(color: kTextColor, thickness: 0.1),
                Expanded(child: NotificationList()),
              ],
            )
        ),
      ),
    );
  }
}
