
import 'package:get/get.dart';
import 'package:student_system/logic/controllers/auth_controller.dart';
import 'package:student_system/logic/controllers/login_controller.dart';

class LoginBinding extends Bindings {
   @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => AuthController());

  }
 }