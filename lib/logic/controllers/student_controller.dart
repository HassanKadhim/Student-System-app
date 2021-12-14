import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:student_system/database/models/grade_model.dart';
import 'package:student_system/database/models/notification_model.dart';
import 'package:student_system/database/models/student_model.dart';
import 'package:student_system/database/models/time_model.dart';
import '../../config.dart';

class StudentController  extends GetxController with StateMixin{
  Rx<StudentModel> student = StudentModel().obs;
  Rx<TimeModel> time = TimeModel().obs;
  Rx<NotificationModel> notification = NotificationModel().obs;

  @override
  void onInit() {
    fetch();
    change(student,status: RxStatus.success());
    super.onInit();
  }

  void fetch() async {

    final api = await Config.api;
    var  token =  await FlutterSecureStorage().read(key: "token");
    http.Response res = await http.get(
        Uri.parse("$api/auth/student"),
        headers: {"Authorization": "Bearer " + token!}
    );

    if (res.statusCode == 200) {
      var response = json.decode(res.body)['data'][0];
      student.value = StudentModel.fromJson(response);

    }
    //print('=====================================================');
    // for(NotificationModel i in student.value.notifications){
    //   print(i.title);
    // }

  }


}