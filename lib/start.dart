// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:student_system/views/screens/home.dart';
// import 'package:student_system/views/screens/newsletter.dart';
// import 'package:student_system/views/screens/profile.dart';
//
// import 'constants.dart';
//
//
// class Start extends StatefulWidget {
//   @override
//   _StartState createState() => _StartState();
// }
//
// class _StartState extends State<Start> {
//   int _page = 0;
//   int currentPageValue = 1;
//   PageController controller = PageController(
//     initialPage: 1,
//   );
//   GlobalKey _bottomNavigationKey = GlobalKey();
//
//   final List<Widget> _page = [NewsLetter(), HomeScreen(), Profile()];
//
//   final GlobalKey _scaffoldKey = new GlobalKey();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true,
//       bottomNavigationBar: CurvedNavigationBar(
//         key: _bottomNavigationKey,
//         index: currentPageValue,
//         backgroundColor: Color(0xFF414C6B),
//         height: 50.0,
//         items: <Widget>[
//           Center(
//               child: Icon(
//                 Icons.home_filled,
//                 size: 30,
//                 color: kTextColor,
//               )
//           ),
//           Center(
//               child: Icon(
//                 Icons.home_filled,
//                 size: 30,
//                 color: kTextColor,
//               )
//           ),
//           Center(
//               child: Icon(
//                 Icons.home_filled,
//                 size: 30,
//                 color: kTextColor,
//               )
//           ),
//         ] ,
//         // backgroundColor: Color(0xff1d63aa),
//         color: Color(0xFF414C6B),
//         buttonBackgroundColor: Color(0xFF414C6B),
//         animationCurve: Curves.easeInOut,
//         animationDuration: Duration(milliseconds: 200),
//         onTap: (index) {
//           setState(() {
//             _page = index;
//           });
//         },
//       ),
//       body: index[_page],
//     );
//   }
// }
