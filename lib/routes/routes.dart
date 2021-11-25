import 'package:get/get.dart';
import 'package:student_system/logic/bindings/login_binding.dart';
import 'package:student_system/logic/bindings/question_binding.dart';
import 'package:student_system/views/question/question_view.dart';
import 'package:student_system/views/screens/auth/login.dart';
import 'package:student_system/views/screens/grade/grade.dart';
import 'package:student_system/views/screens/home.dart';
import 'package:student_system/views/screens/profile.dart';

class AppRoutes {

  static const question = Routes.question;
  static const home = Routes.home;
  static const login = Routes.login;
  static const pro = Routes.pro;

  static final routes = [
    GetPage(name: Routes.login, page: () =>  LoginPage(), binding: LoginBinding()),
    GetPage(name: Routes.question, page: () =>  QuestionScreen(), binding: QuestionBinding()),
    GetPage(name: Routes.home, page: () =>  HomeScreen()),
    GetPage(name: Routes.pro, page: () =>  Grade()),

  ];
}

class Routes {
  static const login = '/login';
  static const home = '/home';
  static const question = '/question';
  static const pro = '/pro';
}