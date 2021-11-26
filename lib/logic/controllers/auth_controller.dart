import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:student_system/routes/routes.dart';

class AuthController extends GetxController{
  var storage =  const FlutterSecureStorage();
  var name = ''.obs;
  var token = '';

  @override
  void onInit(){
      auth();
      super.onInit();
    }
  auth() async {
    name.value =(await storage.read(key: "name"))!;
    token =(await storage.read(key: "token"))!;
  }

  bool isAuth(){
    return token.isNotEmpty;
  }

  logout() async {
    await storage.deleteAll();
    Get.toNamed(AppRoutes.login);
  }
}