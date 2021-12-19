import 'dart:convert';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:http/http.dart' as http;

import '../../config.dart';


class AuthService {
 static var client = http.Client();

  static login({required email , password}) async {
    final api = await Config.api;

    var token = await http.post(Uri.parse("$api/auth/login"),
      body: {
        "email": email ,
        "password" : password,

      },
    );
     if(token.statusCode == 200 || token.statusCode == 201){
       var my_token = jsonDecode(token.body);
       var user = await getUser(token: my_token["access_token"]);
       user["token"] = my_token["access_token"];
       return user;

     }
  }

  static getUser({required token}) async {
    final api = await Config.api;
    var user = await client.get(Uri.parse("$api/auth/user"),
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
  }
}