import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:student_system/database/models/newsletter_model.dart';

import '../../config.dart';


class NewsLetterService{

  Future<List<NewsLetter>> getNewsLetter() async{
    final api = await Config.api;
    http.Response response = await http.get(
        Uri.parse("$api/newsletter")
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
