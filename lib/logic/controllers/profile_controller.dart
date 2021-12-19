import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:student_system/routes/routes.dart';
import 'package:http/http.dart' as http;
import '../../config.dart';

class ProfileController extends GetxController{

  var storage = const FlutterSecureStorage();
  var name = ''.obs;
  var email = ''.obs;
  RxString profilePhoto = ''.obs;

  @override
  void onInit() {
    getDate();
    super.onInit();
  }

   p(){
    print('hhhhhhhhhhhhhhhhhhhhhhhhhhhh');
  }

  getDate() async {
    name.value = (await storage.read(key: "name"))!;
    email.value = (await storage.read(key: "email"))!;
    profilePhoto.value = (await storage.read(key: "profile_photo_path"))!;
  }
  static Future sendFierTokent() async {
    final api = await Config.api;
    var  token =  await FlutterSecureStorage().read(key: "token");
    await http.post(
        Uri.parse("$api/auth/sendfiertoken"),
        headers: {"Authorization": "Bearer " + token!},
        body:{
          "fiertoken": "null"
        }
    );
  }

  logout() async {
    await sendFierTokent();
    await storage.deleteAll();
    Get.offAndToNamed(AppRoutes.login);
  }

}