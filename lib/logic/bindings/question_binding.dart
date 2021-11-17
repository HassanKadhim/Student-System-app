import 'package:get/get.dart';
import 'package:student_system/logic/controllers/question_controller.dart';

class QuestionBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => QuestionController());
  }

}
