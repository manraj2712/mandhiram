import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';
import 'package:mandhiram/app/modules/BottomTabBar/views/bottom_tab_bar_view.dart';
import 'package:mandhiram/app/modules/Login/views/login_view.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SignupController());
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Stack(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Image(
                              colorBlendMode: BlendMode.colorBurn,
                              // color: Colors.black26.withOpacity(0.3),
                              height: 350,
                              width: double.infinity,
                              fit: BoxFit.fill,
                              image: AssetImage(AppImage.m5)),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        child: Container(
                          height: 45,
                          width: 90,
                          decoration: BoxDecoration(
                            color: AppColor.loginScreenButtons,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: GestureDetector(
                              onTap: () {
                                Get.offAll(BottomTabBarView());
                              },
                              child: const Center(child: Text('Skip'))),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          TextSpan(children: [
                            const TextSpan(
                                text: "KINDLY ENTER ",
                                style: TextStyle(
                                    color: Colors.transparent,
                                    shadows: [
                                      Shadow(
                                          color: Colors.black,
                                          offset: Offset(0, -7))
                                    ])),
                            TextSpan(
                                text: "YOUR DETAILS",
                                style: TextStyle(
                                    color: Colors.transparent,
                                    decorationThickness: 3,
                                    decorationStyle: TextDecorationStyle.solid,
                                    decoration: TextDecoration.underline,
                                    shadows: [
                                      Shadow(
                                          color: AppColor.apcolor,
                                          offset: const Offset(0, -7))
                                    ],
                                    decorationColor:
                                        const Color.fromARGB(255, 3, 48, 91))),
                          ])),
                      // const SizedBox(height: 10),
                      // const Text.rich(
                      //     style: TextStyle(fontSize: 16),
                      //     TextSpan(children: [
                      //       TextSpan(text: "Time to start "),
                      //       TextSpan(
                      //           text: "Login ",
                      //           style: TextStyle(fontWeight: FontWeight.bold)),
                      //       TextSpan(text: "or "),
                      //       TextSpan(
                      //           text: "SignUp ",
                      //           style: TextStyle(fontWeight: FontWeight.bold)),
                      //       TextSpan(text: "within 20 seconds")
                      //     ])),
                      const SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Full Name',
                          style: TextStyle(
                            fontSize: ScreenUtil().setWidth(18),
                            fontWeight: FontWeight.bold,
                            // color: AppColor.apcolor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: controller.name,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  ScreenUtil().setWidth(13))),
                          hintText: 'Enter your name',
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Email ID',
                          style: TextStyle(
                            fontSize: ScreenUtil().setWidth(18),
                            fontWeight: FontWeight.bold,
                            // color: AppColor.apcolor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: controller.name,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  ScreenUtil().setWidth(13))),
                          hintText: 'Ex: madhiram@gmail.com',
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Mobile Number',
                          style: TextStyle(
                            fontSize: ScreenUtil().setWidth(18),
                            fontWeight: FontWeight.bold,
                            // color: AppColor.apcolor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: AppColor.black,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(13),
                                bottomLeft: Radius.circular(13),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '+91',
                                style: TextStyle(
                                    fontSize: 17,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(5),
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: controller.phone,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(
                                        ScreenUtil().setWidth(13)),
                                    bottomRight: Radius.circular(
                                        ScreenUtil().setWidth(13)),
                                  ),
                                ),
                                hintText: 'Enter Number',
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 25),
                      MaterialButton(
                        onPressed: () {
                          controller.register();
                          // if (controller.phone.text.isNotEmpty) {
                          //   await controller.login();
                          // }
                        },
                        height: 65,
                        minWidth: ScreenUtil().setWidth(365),
                        color: AppColor.apcolor,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                ScreenUtil().setWidth(26)),
                            borderSide: BorderSide(color: AppColor.apcolor)),
                        child: Text(
                          'CONTINUE',
                          style: TextStyle(
                            fontSize: ScreenUtil().setWidth(22),
                            color: AppColor.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Are you a new user ?',
                            style: TextStyle(
                              fontSize: 17,
                              color: AppColor.black,
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(7),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(const SignupView());
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                  color: AppColor.apcolor, fontSize: 18),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '-------------',
                            style: TextStyle(
                              fontSize: ScreenUtil().setWidth(15),
                              wordSpacing: ScreenUtil().setWidth(10),
                              letterSpacing: ScreenUtil().setWidth(5),
                              color: AppColor.black,
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(12),
                          ),
                          Text(
                            'or',
                            style: TextStyle(
                              fontSize: ScreenUtil().setWidth(18),
                              color: AppColor.black,
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(12),
                          ),
                          Text(
                            '-------------',
                            style: TextStyle(
                              fontSize: ScreenUtil().setWidth(15),
                              wordSpacing: ScreenUtil().setWidth(10),
                              letterSpacing: ScreenUtil().setWidth(5),
                              color: AppColor.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(47, 195, 189, 189),
                              borderRadius: BorderRadius.circular(34),
                            ),
                            child: Image(
                              height: 25,
                              width: 30,
                              image: AssetImage(AppImage.google),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          const SizedBox(width: 50),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(47, 195, 189, 189),
                              borderRadius: BorderRadius.circular(34),
                            ),
                            child: Image(
                              height: 25,
                              width: 30,
                              image: AssetImage(AppImage.facebook),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
