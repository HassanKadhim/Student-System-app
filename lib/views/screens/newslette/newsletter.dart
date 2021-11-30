import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_notifier.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:student_system/logic/controllers/newsletter_controller.dart';
import 'package:student_system/logic/controllers/question_controller.dart';
import 'package:student_system/views/widgets/newsletter_list.dart';
import 'package:student_system/views/widgets/question_list.dart';

import '../../../constants.dart';

class NewsLetterScreen extends GetView<NewsLetterController> {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SafeArea(
          bottom: false,
          child: Directionality(
            textDirection: TextDirection.rtl,
              child: controller.obx((state)=> NewsLetterList( controller.newslette),)
          ),
        ),
      ),
    );
  }
}