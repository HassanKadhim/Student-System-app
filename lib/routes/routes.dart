import 'package:get/get.dart';
import 'package:student_system/logic/bindings/login_binding.dart';
import 'package:student_system/logic/bindings/newsletter_binding.dart';
import 'package:student_system/logic/bindings/profile_binding.dart';
import 'package:student_system/logic/bindings/student_binding.dart';
import 'package:student_system/logic/bindings/user_binding.dart';
import 'package:student_system/views/screens/auth/login.dart';
import 'package:student_system/views/screens/grade/grade.dart';
import 'package:student_system/views/screens/home.dart';
import 'package:student_system/views/screens/newslette/detils.dart';
import 'package:student_system/views/screens/newslette/newsletter.dart';
import 'package:student_system/views/screens/notification/notification.dart';
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
  static const profile = '/profile';
  static const question = '/question';
  static const splash = '/splash';
  static const details = '/details';


  static final routes = [
    GetPage(name: login, page: () =>  const LoginPage(), binding: LoginBinding()),
    GetPage(name: home, page: () =>   const HomeScreen(), binding: UserBinding()),
    GetPage(name: splash, page: () =>   const SplashScreen(), binding: LoginBinding()),
    GetPage(name: time, page: () =>  const Time() , binding: StudentBinding()),
    GetPage(name: grade, page: () =>  const Grade(), binding: StudentBinding()),
    GetPage(name: not, page: () =>  const Notification(), binding: StudentBinding()),
    GetPage(name: newsletter, page: () =>   NewsLetterScreen(),binding: NewsLetterBinding()),
    GetPage(name: details, page: () =>   Details(),binding: NewsLetterBinding()),
    GetPage(name: profile, page: () =>   Profile(),binding: ProfileBinding()),

  ];
}

