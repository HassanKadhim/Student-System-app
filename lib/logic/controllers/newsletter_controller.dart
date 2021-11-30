import 'package:get/get.dart';
import 'package:student_system/database/models/newsletter_model.dart';
import 'package:student_system/database/services/newsletter_service.dart';

class NewsLetterController extends GetxController with StateMixin{
  final NewsLetterService newsletterService = NewsLetterService();
  RxList<NewsLetter> newslette = RxList<NewsLetter>();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    newsletterService.getNewsLetter().then((allNewsLetter){
      newslette.addAll(allNewsLetter);
      change(newslette,status: RxStatus.success());
    });
  }
}