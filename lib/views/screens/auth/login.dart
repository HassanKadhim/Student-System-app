import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:student_system/logic/controllers/login_controller.dart';
import '../../../constants.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Form(
          key: controller.loginFromKey,
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.5,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff11ccef),
                        Color(0xff117bef),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(90)
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Spacer(),
                    Image.asset('assets/images/logo.png',height:200 ,),
                    // AssetImage("assets/images/logo.png"),

                    const Spacer(),

                    const Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: 32,
                            right: 32
                        ),
                        child: Text('تسجل الدخول',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 62),

                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width/1.2,
                        height: 45,
                        padding: const EdgeInsets.only(
                            top: 4,left: 16, right: 16, bottom: 4
                        ),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(50)
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5
                              )
                            ]
                        ),
                        child: TextFormField(
                          controller: controller.emailController,
                          validator: (v) {return controller.valideateEmail(v!);},
                          onSaved: (v) {},
                          keyboardType: TextInputType.emailAddress,
                          textDirection: TextDirection.rtl,
                          decoration: const InputDecoration(
                            fillColor: kCardColor,
                            border: InputBorder.none,
                            icon: Icon(Icons.email,
                              color: Colors.grey,
                            ),
                            hintTextDirection: TextDirection.rtl,
                            hintText: 'البريد الالكتروني ',
                          ),
                          cursorColor: kCardColor,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/1.2,
                        height: 45,
                        margin: const EdgeInsets.only(top: 32),
                        padding: const EdgeInsets.only(
                            top: 4,left: 16, right: 16, bottom: 4
                        ),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(50)
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5
                              )
                            ]
                        ),
                        child: TextFormField(
                          textDirection: TextDirection.rtl,
                          controller: controller.passwordController,
                          validator: (v) {return controller.valideatePassworde(v!);},
                          onSaved: (v) {},
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'كلمة المرور',
                            hintTextDirection: TextDirection.rtl,
                            border: InputBorder.none,
                            icon: Icon(Icons.vpn_key,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      const SizedBox(height: 10),
                      Obx(() => controller.isLoading.value == true ?
                      const Center(child: CircularProgressIndicator()):const Text("")),
                      const SizedBox(height: 10),
                      Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width/1.2,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff11ccef),
                                Color(0xff117bef),
                              ],
                            ),
                            borderRadius: BorderRadius.all(
                                Radius.circular(50)
                            )
                        ),
                         child:  MaterialButton(
                           onPressed: () {controller.doLogin(); },
                           child: const Center(
                             child: Text('الدخول',
                               style: TextStyle(
                                   color: Colors.white,
                                   fontWeight: FontWeight.bold
                               ),
                             ),
                           ),
                         ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}