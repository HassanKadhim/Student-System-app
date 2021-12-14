
import 'package:student_system/database/models/not_model.dart';

class Nots{

 final List<dynamic> nots;

  Nots({required this.nots});
  factory Nots.fromJson(Map<String, dynamic>json){
    return Nots(
        nots: json['notifications']
    );
  }
}

