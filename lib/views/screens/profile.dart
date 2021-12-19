import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_system/logic/controllers/profile_controller.dart';
import 'package:student_system/logic/controllers/student_controller.dart';
import 'package:student_system/views/widgets/bottomnavigationbar.dart';
import 'package:student_system/views/widgets/profileCard.dart';
import '../../constants.dart';

class Profile extends GetView<ProfileController> {
  Profile({Key? key}) : super(key: key);

  StudentController data = Get.put(StudentController());
  static var api = 'https://basrtnapi.itourstory.com/storage/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      bottomNavigationBar: HomeBottomNavigationBar(),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Obx(
              () => Column(
                children: [
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 115,
                    width: 115,
                    child: CircleAvatar(
                        backgroundImage:
                            controller.profilePhoto.value.isNotEmpty
                                ? NetworkImage(
                                    '$api/${controller.profilePhoto.value}')
                                : NetworkImage('$api/student/img/avtar.png')),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    controller.name.value,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: kTextColor,
                    ),
                  ),
                  Text(
                    controller.email.value,
                    style: TextStyle(
                        fontSize: 10, color: kTextColor, letterSpacing: 1),
                  ),
                  const SizedBox(height: 20),
                  const Divider(color: kTextColor, thickness: 0.1),
                  const SizedBox(height: 10),
                  ProfileCard(
                      'القسم',
                      Icons.view_list,
                      data.student.value.stage.name.isNotEmpty
                          ? data.student.value.stage.name
                          : 'جاري التحميل...'),
                  const SizedBox(height: 20),
                  ProfileCard(
                      'الدراسة',
                      Icons.adjust_sharp,
                      data.student.value.type == 1
                          ? "صباحي"
                          : data.student.value.type == 2
                              ? "موازي"
                              : data.student.value.type == 3
                                  ? 'مسائي'
                                  : 'جاري التحميل...'),
                  const SizedBox(height: 20),
                  ProfileCard(
                    'لعنوان',
                    Icons.location_city,
                    data.student.value.city.isNotEmpty &&
                            data.student.value.district.isNotEmpty
                        ? '${data.student.value.city} - ${data.student.value.district}'
                        : 'جاري التحميل..',
                  ),
                  const SizedBox(height: 20),
                  ProfileCard(
                      'رقم الهاتف',
                      Icons.phone,
                      data.student.value.phoneNumber.isNotEmpty
                          ? data.student.value.phoneNumber
                          : 'جاري التحميل...'),
                  const SizedBox(height: 20),
                  FlatButton(
                    onPressed: () {
                      controller.logout();
                    },
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: kCardColor.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: ListTile(
                          leading: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            decoration: BoxDecoration(
                              color: kDengerColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(
                                  Icons.login,
                                  color: kTextColor,
                                ),
                              ],
                            ),
                          ),
                          title: const Text(
                            " تسجيل الخروج",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kTextColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
