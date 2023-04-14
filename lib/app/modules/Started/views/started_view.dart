import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';
import 'package:mandhiram/app/modules/Login/views/login_view.dart';

import '../controllers/started_controller.dart';

class StartedView extends GetView<StartedController> {
  const StartedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppImage.m1),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.45), BlendMode.colorBurn)),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image(
                  image: Image.asset(AppImage.logotxt).image,
                  height: 80,
                  width: 220,
                ),
              ),
              const Spacer(),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 163, 155, 155)
                        .withOpacity(0.7),
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'Welcome to Mandhiram',
                  style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w700,
                      color: AppColor.white),
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: Text(
                  'TEMPLE TOURISM',
                  style: TextStyle(
                      color: AppColor.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: Text(
                  'Temple info, Seva, Travel management\nand a Virtual guide',
                  style: TextStyle(
                      fontSize: 20,
                      color: AppColor.white,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(height: 50),
              Center(
                child: Container(
                  margin:
                      EdgeInsets.symmetric(vertical: ScreenUtil().setWidth(20)),
                  height: ScreenUtil().setHeight(56),
                  width: ScreenUtil().setWidth(370), //Get.width / 1.2,
                  decoration: BoxDecoration(
                    color: AppColor.apcolor,
                    borderRadius:
                        BorderRadius.circular(ScreenUtil().setWidth(32)),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Get.to(const LoginView());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: ScreenUtil().setWidth(20),
                        ),
                        Text(
                          'GET STARTED',
                          style: TextStyle(
                              fontSize: ScreenUtil().setWidth(20),
                              color: AppColor.white),
                        ),
                        const SizedBox(width: 12),
                        Container(
                          width: ScreenUtil().setWidth(72),
                          height: ScreenUtil().setHeight(40),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(
                                ScreenUtil().setWidth(24)),
                          ),
                          child: Icon(
                            Icons.arrow_right_alt_outlined,
                            size: 40,
                            color: AppColor.apcolor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
