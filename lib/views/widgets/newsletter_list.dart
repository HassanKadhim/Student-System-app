
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_system/database/models/newsletter_model.dart';
import 'package:student_system/logic/controllers/newsletter_controller.dart';
import 'package:student_system/routes/routes.dart';
import 'package:student_system/views/widgets/newsletterCard.dart';


class NewsLetterList extends StatelessWidget {
  NewsLetterController controller = Get.put(NewsLetterController());
  List<NewsLetter>newslette;
  NewsLetterList(this.newslette);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.newslette.length,
      itemBuilder:(BuildContext context, int position){
        return InkWell(
        //   onTap: () => Get.toNamed(
        //       AppRoutes.details,
        //       arguments: newslette[position].id),
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: NewsLetterCard(
                newslette[position].title,
                newslette[position].body,
            ),
          ),
        );
      }
    );
  }
}