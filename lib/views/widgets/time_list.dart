import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_system/logic/controllers/student_controller.dart';
import 'package:student_system/views/widgets/timeCard.dart';
import '../../constants.dart';
import 'gradeCard.dart';

class TimeList extends GetView<StudentController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.student.value.timesheets.isNotEmpty
          ? ListView.builder(
              itemCount: controller.student.value.timesheets.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, left: 10, right: 20),
                  child: TimeCard(
                    controller.student.value.timesheets[index].subject.name,
                    controller.student.value.timesheets[index].date,
                  ),
                );
              })
          : Center(
              child: const Text(
                'لايوجد غياب',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: kTextColor,
                ),
              ),
            ),
    );
  }
}
