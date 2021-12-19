import 'package:get/get.dart';
import 'package:student_system/logic/controllers/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());

  }
}