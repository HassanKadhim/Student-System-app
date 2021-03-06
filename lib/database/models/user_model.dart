import 'dart:convert';

// UserModel userFromJson(String str) => UserModel.toObject(json.decode(str));
//
// class UserModel {
//   User user;
//   String token;
//
//   UserModel({required this.user, required this.token});
//
//   factory UserModel.toObject(Map<String, dynamic> json) =>
//       UserModel(
//         user: User.toObject(json['user']),
//         token: json['token'],
//       );
//
//   Map<String, dynamic> toJson() => {
//     "user" : user.toJson(),
//     "token" : token,
//   };
// }
//
// class User {
//   int id;
//   String name;
//   String email;
//
//   User({required this.id, required this.name, required this.email});
//
//   factory User.toObject(Map<String, dynamic> json) =>
//       User(id: json['id'], name: json['name'], email: json['email']);
//
//   Map<String, dynamic> toJson() => {
//     "id" : id,
//     "name" : name,
//     "email" : email,
//   };
//
// }

class UserModel {
  int id = 0;
  String name = '';
  String email = '';


  UserModel({id, name, email});

  UserModel.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];

  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;

    return data;
  }


}
