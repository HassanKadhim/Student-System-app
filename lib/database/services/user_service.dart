import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UserService extends GetConnect{

  static String baseApi = "http://192.168.1.108:8000/api";
  static var client = http.Client();
  var  token =  const FlutterSecureStorage().read(key: "token");

  Future<dynamic> getUser() async{
    var user = await client.get(Uri.parse("$baseApi/auth/user"),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        });
    if(user.statusCode == 200 || user.statusCode == 201){
      return jsonDecode(user.body);
    }else {
      return null;
    }
    print(user);
  }

}