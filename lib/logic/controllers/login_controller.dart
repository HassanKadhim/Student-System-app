import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:student_system/database/models/user_model.dart';
import 'package:student_system/database/services/auth_service.dart';
import 'package:student_system/routes/routes.dart';

import '../../config.dart';


class LoginController extends GetxController{
  var isLoading = false.obs;
  final loginFromKey = GlobalKey<FormState>();
  late TextEditingController emailController, passwordController;
  String email ='', password = '';
  final storage = const FlutterSecureStorage();
  final options = const IOSOptions(accessibility: IOSAccessibility.first_unlock);

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  String? valideateEmail(String value){
    if(!GetUtils.isEmail(value)){
      return 'Enter viled Eamil';
    }else{
      return null;
    }
  }
  String? valideatePassworde(String value){
    if(value.length < 5){
      return 'Enter viled Password';
    }else{
      return null;
    }
  }

  doLogin() async{
    bool isValidate = loginFromKey.currentState!.validate();
    if(isValidate){
      isLoading(true);
      try {
        var data = await AuthService.login(
          email: emailController.text,
          password: passwordController.text
        );
        if(data != null){
          // Set User Details



          await storage.write(key: "name" , value: data["name"], iOptions: options);
          await storage.write(key: "token", value: data["token"], iOptions: options);
          loginFromKey.currentState!.save();
          Get.offAllNamed(AppRoutes.home);
        }else{
          Get.snackbar("الدخول", "يوجد خطاء");
        }
      }finally{
        isLoading(false);
      }
    }
  }



}