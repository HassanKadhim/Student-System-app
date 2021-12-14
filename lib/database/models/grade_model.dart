
import 'exam_model.dart';
import 'subject_model.dart';

class GradeModel{
  int id = 0;
  int grade = 0;
  int exam_id = 0;
  int student_id = 0;
  int subject_id = 0;
  SubjectModel subject = SubjectModel();
  ExamModel exam = ExamModel();

  GradeModel({
    id,
    grade,
    exam_id,
    student_id,
    subject_id,
    subject,
    exam
  });

  GradeModel.fromJson(Map<dynamic, dynamic> json){
    id = json['id'];
    grade = json['grade'];
    exam_id = json['exam_id'];
    student_id = json['student_id'];
    subject = SubjectModel.fromJson(json['subject']);
    exam = ExamModel.fromJson(json['exam']);
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['id'] = id;
    data['grade'] = grade;
    data['exam_id'] = exam_id;
    data['student_id'] = student_id;
    data['subject'] = subject;
    data['exam'] = exam;
    return data;
  }




}