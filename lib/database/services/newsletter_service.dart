import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:student_system/database/models/newsletter_model.dart';


class NewsLetterService{
  Future<List<NewsLetter>> getNewsLetter() async{
    http.Response response = await http.get(
        Uri.parse("http://192.168.1.108:8000/api/newsletter")
    );
    if(response.statusCode == 200 || response.statusCode == 201){
      List<NewsLetter> newsletter =[];
      for( var item in jsonDecode(response.body)){
        newsletter.add(NewsLetter.fromMap(item));
      }
      return newsletter;

    }else{
      throw Exception('no data');
    }
  }
}
