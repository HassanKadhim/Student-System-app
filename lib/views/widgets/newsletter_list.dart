
import 'package:flutter/material.dart';
import 'package:student_system/database/models/newsletter_model.dart';
import 'package:student_system/views/widgets/newsletterCard.dart';


class NewsLetterList extends StatelessWidget {
  List<NewsLetter>newslette;
  NewsLetterList(this.newslette);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.newslette.length,
      itemBuilder:(BuildContext context, int position){
        return Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: NewsLetterCard(
              newslette[position].title,
              newslette[position].body,
          ),
        );
      }
    );
  }
}