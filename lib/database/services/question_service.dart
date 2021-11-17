import 'dart:convert';


import 'package:http/http.dart' as http;
import 'package:student_system/database/models/question_model.dart';

class QuestionService{
  Future<List<Question>> getQuestion() async{
      http.Response response = await http.get(
          Uri.parse("https://api.enab.app/api/support/questions")
      );
      if(response.statusCode == 200 || response.statusCode == 201){
          List<Question> question =[];
          for( var item in jsonDecode(response.body)){
            question.add(Question.fromMap(item));
          }
          return question;
      }else{
        throw Exception('no data');
      }

  }

}
