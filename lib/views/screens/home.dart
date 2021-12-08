import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:student_system/views/widgets/bottomnavigationbar.dart';
import 'package:student_system/views/widgets/buildCard.dart';
import '../../constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  var name;

  @override
  void initState() {
    super.initState();
    getData();
  }
  Future getData() async{
     name = await const FlutterSecureStorage().read(key: 'name');
    setState(() {
      name;
    });
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: kPrimaryColor,
        body:SafeArea(
          bottom: false,
          child:SingleChildScrollView(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child :Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children:<Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 5),
                    child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('مرحباً ${name}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: kTextColor,
                              ),
                            ),
                            const CircleAvatar(
                              backgroundImage: AssetImage('assets/images/avtar.png'),
                              minRadius: 27,
                              maxRadius: 30,
                            ),
                          ],
                        ),
                    ),

                  const  Divider(color: kTextColor, thickness: 0.1),
                  const SizedBox(
                    height: 40,
                  ),
                  buildCardList(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar:HomeBottomNavigationBar(),
      );
    }
    buildCardList() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: <Widget>[
            HomeCard(
                'الدرجات ',
                'يمكن معرفة جميع الدرجات الخاصة بك',
                'assets/icons/grads.png',
                '/grade'
            ),
            const SizedBox(height: 40,),
            HomeCard(
                'االغيابات',
                'يمكنك معرفة جميع االغيابات الخاصة بك',
                'assets/icons/time.png',
                '/time'
            ),
            const SizedBox(height: 40,),
            HomeCard(
                'االتنبيهات',
                'يمكنك معرفة جميع االغيابات الخاصة بك',
                'assets/icons/not.png',
                '/newsletter'
            ),
            const SizedBox(height: 10,),
          ],
        ),
      );
    }
  }





