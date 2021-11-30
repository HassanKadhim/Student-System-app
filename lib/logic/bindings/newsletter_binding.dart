import 'package:get/get.dart';
import 'package:student_system/logic/controllers/newsletter_controller.dart';


class NewsLetterBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => NewsLetterController());
  }

}
