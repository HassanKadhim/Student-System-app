



import 'package:student_system/database/models/subject_model.dart';

class TimeModel {
  int id = 0;
  String date ='';
  int student_id = 0;
  int subject_id = 0;
  SubjectModel subject = SubjectModel();

  TimeModel({id, date , stage_id , user_id , subject});

  TimeModel.fromJson(Map<dynamic, dynamic> json){
    id = json['id'];
    date = json['date'];
    student_id = json['student_id'];
    subject_id = json['subject_id'];
    subject = SubjectModel.fromJson(json['subject']);
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['id'] = id;
    data['date'] = date;
    data['student_id'] = student_id;
    data['subject_id'] = subject_id;
    data['subject'] = subject;
    return data;
  }

}