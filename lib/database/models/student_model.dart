import 'package:student_system/database/models/notification_model.dart';
import 'package:student_system/database/models/time_model.dart';

import 'grade_model.dart';


class StudentModel{
  int id = 0;
  int stage_id = 0;
  int user_id = 0;
  String card_number = "0";
  String mother_name = '';
  String city = '';
  String district = '';
  String phoneNumber = "";
  String birthday = '';
  int type = 0;
  List<GradeModel> grades = [];
  List<TimeModel> timesheets = [];
  List<NotificationModel> notifications = [];

  StudentModel({
    id,
    stage_id,
    user_id,
    card_number,
    mother_name,
    city,
    district,
    phoneNumber,
    birthday,
    type,
  });

  StudentModel.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    stage_id = json['stage_id'];
    user_id = json['user_id'];
    card_number = json['card_number'];
    mother_name = json['mother_name'];
    city = json['city'];
    district = json['district'];
    phoneNumber = json['phoneNumber'];
    type = json['type'];

    if (json.containsKey("grades")) {
      for (var grade in json['grades']){
        grades.add(GradeModel.fromJson(grade));
      }
    }
    if (json.containsKey("timesheets")) {
      for (var time in json['timesheets']){
        timesheets.add(TimeModel.fromJson(time));
      }
    }
    if (json.containsKey("notifications")) {
      for (var notification in json['notifications']){
        notifications.add(NotificationModel.fromJson(notification));
      }
    }

  }
  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['id'] = id;
    data['stage_id'] = stage_id;
    data['user_id'] = user_id;
    data['card_number'] = card_number;
    data['mother_name'] = mother_name;
    data['city'] = city;
    data['district'] = district;
    data['phoneNumber'] = phoneNumber;
    data['type'] = type;

    return data;
  }




}