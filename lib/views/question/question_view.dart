
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_notifier.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:student_system/logic/controllers/question_controller.dart';
import 'package:student_system/views/widgets/question_list.dart';

class QuestionScreen extends GetView<QuestionController> {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الاسئلة'),
      ),
      body: controller.obx((state)=> QuestionList( controller.question),
      ),
    );
  }
}
