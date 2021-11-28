
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:student_system/database/services/auth_service.dart';
import 'package:student_system/database/services/user_service.dart';

class UserController extends GetxController with StateMixin<dynamic>{
  var  token =  const FlutterSecureStorage().read(key: "token");

  @override
  void onInit() {
    super.onInit();
    UserService().getUser().then((value) {
      change(value, status: RxStatus.success());
    },onError: (error){
      change(null,status: RxStatus.error(error.toString()));
    });
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
