import 'dart:convert';


import 'package:http/http.dart' as http;


class AuthService {
 static String baseApi = "https://api.enab.app/api";
 static var client = http.Client();

  static login({required email , password}) async {
    var token = await client.post(Uri.parse("$baseApi/auth/login"),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(<String , String>{
        "email": email , "password" : password
      }),
    );

     if(token.statusCode == 200 || token.statusCode == 201){
       var my_token = jsonDecode(token.body);
       var user = await getUser(token: my_token["access_token"]);
       user["token"] = my_token["access_token"];
       return user;
     }
  }

  static getUser({required token}) async {
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
  }
}