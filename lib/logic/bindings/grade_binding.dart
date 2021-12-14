import 'package:get/get.dart';
import 'package:student_system/logic/controllers/grade_controller.dart';
import 'package:student_system/logic/controllers/student_controller.dart';


class GradeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GradeController());
    Get.lazyPut(() => StudentController());
  }
}