import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';

import '../controllers/slash_controller.dart';

class SlashView extends GetView<SlashController> {
  const SlashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(SlashController());
    return Scaffold(
      backgroundColor: AppColor.apcolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              fit: BoxFit.fill,
              image: Image.asset(AppImage.icon2).image,
              height: ScreenUtil().setHeight(200),
              width: ScreenUtil().setWidth(170),
            ),
            Image(
              image: Image.asset(AppImage.logotxt).image,
              height: ScreenUtil().setHeight(60),
              width: ScreenUtil().setWidth(250),
            ),
            // Text(
            //   'Mandhiram',
            //   style: TextStyle(
            //       color: AppColor.white,
            //       fontSize: ScreenUtil().setWidth(35),
            //       fontWeight: FontWeight.bold),
            // )
          ],
        ),
      ),
    );
  }
}
