import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_system/logic/controllers/student_controller.dart';
import 'package:student_system/views/widgets/notificationCard.dart';
import '../../constants.dart';
import 'gradeCard.dart';

class NotificationList extends GetView<StudentController> {
  @override
  Widget build(BuildContext context) {
    return Obx(()=> controller.student.value.notifications.isNotEmpty
        ?  ListView.builder(
        itemCount: controller.student.value.notifications.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 15.0 ,left: 10, right: 20),
            child: NotificationCard(
              controller.student.value.notifications[index].title,
              controller.student.value.notifications[index].body,

            ),
          );
        }

    )
        : Center(
      child: const Text('لايوجد  تنبيها',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: kTextColor,
        ),
      ),
    )
    );
  }

}