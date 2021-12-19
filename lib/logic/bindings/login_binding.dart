
import 'package:get/get.dart';
import 'package:student_system/logic/controllers/auth_controller.dart';
import 'package:student_system/logic/controllers/login_controller.dart';
import 'package:student_system/logic/controllers/profile_controller.dart';

class LoginBinding extends Bindings {
   @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => ProfileController());

  }
 }