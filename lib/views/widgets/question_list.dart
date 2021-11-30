
import 'package:flutter/material.dart';
import 'package:student_system/database/models/question_model.dart';

class QuestionList extends StatelessWidget {
  List<Question>question;
  QuestionList(this.question);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: this.question.length,
        itemBuilder:(BuildContext context, int position){
          return ListTile(
            title: Text(question[position].title),
            subtitle: Text(question[position].body),
          );

        }
    );
  }
}
