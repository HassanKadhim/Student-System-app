
import 'package:get/get.dart';
import 'package:student_system/database/models/question_model.dart';
import 'package:student_system/database/services/question_service.dart';
class QuestionController extends GetxController with StateMixin{
 final QuestionService questionService = QuestionService();
 RxList<Question> question = RxList<Question>();

 @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    questionService.getQuestion().then((allQuestion){
      question.addAll(allQuestion);
      change(question,status: RxStatus.success());
    });
  }
}