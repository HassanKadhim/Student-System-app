import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_system/logic/controllers/student_controller.dart';
import '../../constants.dart';
import 'gradeCard.dart';

class GradeList extends GetView<StudentController> {
  @override
  Widget build(BuildContext context) {
    return Obx(()=> controller.student.value.grades.isNotEmpty
        ?  ListView.builder(
          itemCount: controller.student.value.grades.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
            padding: const EdgeInsets.only(top: 15.0 ,left: 10, right: 20),
              child: GradCard(
                controller.student.value.grades[index].subject.name,
                controller.student.value.grades[index].exam.name,
                controller.student.value.grades[index].grade.toString(),
              ),
            );
          }

          )
      : Center(
        child: const Text('لايوجد امتحانات',
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