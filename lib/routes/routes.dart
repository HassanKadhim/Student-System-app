import 'package:get/get.dart';
import 'package:student_system/logic/bindings/login_binding.dart';
import 'package:student_system/logic/bindings/question_binding.dart';
import 'package:student_system/views/question/question_view.dart';
import 'package:student_system/views/screens/auth/login_view.dart';

class AppRoutes {

  static const question = Routes.question;
  static const home = Routes.home;
  static const login = Routes.login;
  static final routes = [
    GetPage(name: Routes.login, page: () =>  LoginView(), binding: LoginBinding()),
    GetPage(name: Routes.question, page: () =>  QuestionScreen(), binding: QuestionBinding()),

  ];
}

class Routes {
  static const login = '/login';
  static const home = '/home';
  static const question = '/question';
}