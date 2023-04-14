import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';

import '../controllers/setting_screen_controller.dart';

class SettingScreenView extends GetView<SettingScreenController> {
  const SettingScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SettingScreenController());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.keyboard_arrow_left,
              size: ScreenUtil().setWidth(35),
              color: AppColor.black,
            ),
          ),
          title: Wrap(
            direction: Axis.vertical,
            children: [
              Text(
                'SETTINGS',
                style: TextStyle(
                    fontSize: 19,
                    color: AppColor.apcolor,
                    fontWeight: FontWeight.w600),
              ),
              const Text(
                'Change as mode',
                style: TextStyle(fontSize: 15, color: Colors.black45),
              ),
            ],
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: buodlList(),
        )));
  }

  customListTile(String title, String subtitle, Widget icon,
      {void Function()? ontap}) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: ScreenUtil().setHeight(8),
          horizontal: ScreenUtil().setWidth(12)),
      padding: EdgeInsets.symmetric(
          vertical: ScreenUtil().setHeight(8),
          horizontal: ScreenUtil().setWidth(12)),
      decoration: BoxDecoration(
          color: const Color.fromARGB(26, 121, 117, 117),
          borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        onTap: ontap,
        title: Text(title),
        trailing: icon,
        subtitle: Text(subtitle),
      ),
    );
  }

  buodlList() {
    return Column(
      children: [
        SizedBox(
          height: ScreenUtil().setHeight(20),
        ),
        customListTile(
            'Mobile App Notifications',
            'Messages, Ads, Updates',
            ontap: () {},
            Obx(
              () => Container(
                child: controller.offON1.value
                    ? InkWell(
                        onTap: () {
                          controller.offON1.value = false;
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setWidth(2),
                                vertical: ScreenUtil().setHeight(4)),
                            decoration: BoxDecoration(
                              color: AppColor.green,
                              borderRadius: BorderRadius.circular(
                                  ScreenUtil().setWidth(30)),
                            ),
                            child: Image(
                                alignment: Alignment.centerRight,
                                width: ScreenUtil().setWidth(46),
                                height: ScreenUtil().setHeight(35),
                                image: AssetImage(AppImage.off))),
                      )
                    : InkWell(
                        onTap: () {
                          controller.offON1.value = true;
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setWidth(2),
                                vertical: ScreenUtil().setHeight(4)),
                            decoration: BoxDecoration(
                              color: AppColor.grey,
                              borderRadius: BorderRadius.circular(
                                  ScreenUtil().setWidth(30)),
                            ),
                            child: Image(
                                alignment: Alignment.centerLeft,
                                width: ScreenUtil().setWidth(46),
                                height: ScreenUtil().setHeight(35),
                                image: AssetImage(AppImage.off))),
                      ),
              ),
            )),
        customListTile(
            'Temple Feed Notifications',
            'Temple Feed Message',
            Obx(() => Container(
                child: controller.offON2.value
                    ? InkWell(
                        onTap: () {
                          controller.offON2.value = false;
                        },
                        child: Container(
                            // margin: const EdgeInsets.symmetric(
                            //     vertical: 5, horizontal: 5),
                            padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setWidth(2),
                                vertical: ScreenUtil().setHeight(4)),
                            decoration: BoxDecoration(
                              color: AppColor.green,
                              borderRadius: BorderRadius.circular(
                                  ScreenUtil().setWidth(30)),
                            ),
                            child: Image(
                                alignment: Alignment.centerRight,
                                width: ScreenUtil().setWidth(46),
                                height: ScreenUtil().setHeight(35),
                                image: AssetImage(AppImage.off))),
                      )
                    : InkWell(
                        onTap: () {
                          controller.offON2.value = true;
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setWidth(2),
                                vertical: ScreenUtil().setHeight(4)),
                            decoration: BoxDecoration(
                              color: AppColor.grey,
                              borderRadius: BorderRadius.circular(
                                  ScreenUtil().setWidth(30)),
                            ),
                            child: Image(
                              alignment: Alignment.centerLeft,
                              width: ScreenUtil().setWidth(46),
                              height: ScreenUtil().setHeight(35),
                              image: AssetImage(AppImage.off),
                            )))))),
        customListTile(
            'Blog Notifications',
            'All Messages',
            Obx(
              () => Container(
                child: controller.offON3.value
                    ? InkWell(
                        onTap: () {
                          controller.offON3.value = false;
                        },
                        child: Container(
                            // margin: const EdgeInsets.symmetric(
                            //     vertical: 5, horizontal: 5),
                            padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setWidth(2),
                                vertical: ScreenUtil().setHeight(4)),
                            decoration: BoxDecoration(
                              color: AppColor.green,
                              borderRadius: BorderRadius.circular(
                                  ScreenUtil().setWidth(30)),
                            ),
                            child: Image(
                                alignment: Alignment.centerRight,
                                width: ScreenUtil().setWidth(46),
                                height: ScreenUtil().setHeight(35),
                                image: AssetImage(AppImage.off))),
                      )
                    : InkWell(
                        onTap: () {
                          controller.offON3.value = true;
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setWidth(2),
                                vertical: ScreenUtil().setHeight(4)),
                            decoration: BoxDecoration(
                              color: AppColor.grey,
                              borderRadius: BorderRadius.circular(
                                  ScreenUtil().setWidth(30)),
                            ),
                            child: Image(
                                alignment: Alignment.centerLeft,
                                width: ScreenUtil().setWidth(46),
                                height: ScreenUtil().setHeight(35),
                                image: AssetImage(AppImage.off))),
                      ),
              ),
            ))
      ],
    );
  }
}
