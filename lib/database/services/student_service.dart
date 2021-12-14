import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:student_system/database/models/student_model.dart';
import 'package:http/http.dart' as http;
import '../../config.dart';

class StudentService extends GetConnect {
  RxList students = <StudentModel>[].obs;

  void fetch() async {

    final api = await Config.api;
    var  token =  await FlutterSecureStorage().read(key: "token").toString();
    http.Response res = await http.get(
        Uri.parse("$api/auth/student"),
        headers: {"Authorization": token}
    );
    if (res.statusCode == 200) {
      List response = json.decode(res.body)['data'];
      for (var i in response) {
        students.add(StudentModel.fromJson(i));
      }
    }

  }
}