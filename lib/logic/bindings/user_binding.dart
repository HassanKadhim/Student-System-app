import 'package:get/get.dart';
import 'package:student_system/logic/controllers/home_controller.dart';
import 'package:student_system/logic/controllers/user_controller.dart';


class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserController());
    Get.lazyPut(() => HomeController());
  }
}