import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class GradeService extends GetConnect{

  static String baseApi = "http://192.168.1.103:8000/api";
  static var client = http.Client();
  var  token =  const FlutterSecureStorage().read(key: "token");

  static getGrade({required token}) async {

    var grade = await client.get(Uri.parse("$baseApi/auth/grade"),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        });
    if(grade.statusCode == 200 || grade.statusCode == 201){
      return jsonDecode(grade.body);

    }else {
      return null;
    }

  }

}