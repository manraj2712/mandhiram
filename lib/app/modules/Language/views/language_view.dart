import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';

import '../controllers/language_controller.dart';

class LanguageView extends GetView<LanguageController> {
  const LanguageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(LanguageController());
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
                'LANGUAGE',
                style: TextStyle(
                    fontSize: 20,
                    color: AppColor.apcolor,
                    fontWeight: FontWeight.w600),
              ),
              const Text(
                '13+ Language available',
                style: TextStyle(fontSize: 15, color: Colors.black45),
              ),
            ],
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: buildList(),
        )));
  }

  customListTile(String img, Widget icon, {void Function()? ontap}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: ScreenUtil().setHeight(7),
        horizontal: ScreenUtil().setWidth(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: icon,
          ),
          Image(
            fit: BoxFit.fill,
            image: Image.asset(img).image,
            height: ScreenUtil().setHeight(120),
            width: ScreenUtil().setWidth(348),
          ),
        ],
      ),
    );
  }

  buildList() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: ScreenUtil().setHeight(15),
        ),
        Obx(() => customListTile(
              AppImage.l1,
              Radio(
                value: 1,
                groupValue: controller.val.value,
                onChanged: (value) {
                  controller.val.value = value!;
                },
              ),
            )),
        Obx(() => customListTile(
              AppImage.l2,
              Radio(
                value: 2,
                groupValue: controller.val.value,
                onChanged: (value) {
                  controller.val.value = value!;
                },
              ),
            )),
        Obx(() => customListTile(
              AppImage.l3,
              Radio(
                value: 3,
                groupValue: controller.val.value,
                onChanged: (value) {
                  controller.val.value = value!;
                },
              ),
            )),
        Obx(() => customListTile(
              AppImage.l4,
              Radio(
                value: 4,
                groupValue: controller.val.value,
                onChanged: (value) {
                  controller.val.value = value!;
                },
              ),
            )),
        Obx(() => customListTile(
              AppImage.l5,
              Radio(
                value: 5,
                groupValue: controller.val.value,
                onChanged: (value) {
                  controller.val.value = value!;
                },
              ),
            )),
        Obx(() => customListTile(
              AppImage.l6,
              Radio(
                value: 6,
                groupValue: controller.val.value,
                onChanged: (value) {
                  controller.val.value = value!;
                },
              ),
            )),
        Obx(() => customListTile(
              AppImage.l7,
              Radio(
                value: 7,
                groupValue: controller.val.value,
                onChanged: (value) {
                  controller.val.value = value!;
                },
              ),
            )),
        SizedBox(
          height: ScreenUtil().setHeight(40),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: ScreenUtil().setHeight(10),
              horizontal: ScreenUtil().setWidth(10),
            ),
            height: ScreenUtil().setHeight(80),
            width: ScreenUtil().setWidth(430), //Get.width / 1.2,
            decoration: BoxDecoration(
              color: AppColor.apcolor,
              borderRadius: BorderRadius.circular(ScreenUtil().setWidth(30)),
            ),
            child: MaterialButton(
              onPressed: () {
                // Get.back();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      padding: EdgeInsets.all(
                        ScreenUtil().setWidth(5),
                      ),
                      width: ScreenUtil().setWidth(68),
                      height: ScreenUtil().setHeight(50),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius:
                            BorderRadius.circular(ScreenUtil().setWidth(20)),
                      ),
                      child: Image(
                        color: AppColor.apcolor,
                        image: Image.asset(AppImage.translate).image,
                      )),
                  SizedBox(
                    width: ScreenUtil().setWidth(30),
                  ),
                  Text(
                    'UPDATE LANGUAGE',
                    style: TextStyle(
                      color: AppColor.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(40),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
