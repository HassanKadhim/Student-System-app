import 'package:get/get.dart';
import 'package:student_system/logic/bindings/login_binding.dart';
import 'package:student_system/logic/bindings/newsletter_binding.dart';
import 'package:student_system/logic/bindings/question_binding.dart';
import 'package:student_system/logic/bindings/user_binding.dart';
import 'package:student_system/views/question/question_view.dart';
import 'package:student_system/views/screens/auth/login.dart';
import 'package:student_system/views/screens/grade/grade.dart';
import 'package:student_system/views/screens/home.dart';
import 'package:student_system/views/screens/newslette/newsletter.dart';
import 'package:student_system/views/screens/nots.dart';
import 'package:student_system/views/screens/profile.dart';
import 'package:student_system/views/screens/splash_screen.dart';
import 'package:student_system/views/screens/time/time.dart';

class AppRoutes {

  static const login = '/login';
  static const home = '/home';
  static const grade = '/grade';
  static const time = '/time';
  static const not = '/not';
  static const newsletter = '/newsletter';
  static const profiele = '/profiele';
  static const question = '/question';
  static const splash = '/splash';


  static final routes = [
    GetPage(name: login, page: () =>  const LoginPage(), binding: LoginBinding()),
    GetPage(name: home, page: () =>  const HomeScreen(), binding: UserBinding()),
    GetPage(name: splash, page: () =>   SplashScreen(), binding: LoginBinding()),
    GetPage(name: time, page: () =>  const Time()),
    GetPage(name: grade, page: () =>  const Grade()),
    GetPage(name: not, page: () =>  const Nots()),
    GetPage(name: newsletter, page: () =>   NewsLetterScreen(),binding: NewsLetterBinding()),
    GetPage(name: profiele, page: () =>  const Profile()),
    GetPage(name: question, page: () =>  QuestionScreen(), binding: QuestionBinding()),
  ];
}

