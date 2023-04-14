import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';
import 'package:mandhiram/app/modules/DailyInfomation/views/daily_infomation_view.dart';
import 'package:mandhiram/app/modules/FullScreenImage/views/full_screen_image_view.dart';

import '../controllers/gallery_devi_temple_controller.dart';

class GalleryDeviTempleView extends GetView<GalleryDeviTempleController> {
  const GalleryDeviTempleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.keyboard_arrow_left,
              color: AppColor.black,
              size: 28,
            ),
          ),
          title: Wrap(
            direction: Axis.vertical,
            children: [
              Text(
                'VAISHNO DEVI TEMPLE',
                style: TextStyle(
                    fontSize: 19,
                    color: AppColor.apcolor,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                '20+ Images',
                style: TextStyle(fontSize: 15, color: Colors.black45),
              ),
            ],
          ),
          actions: [
            InkWell(
              onTap: () {
                Get.to(const DailyInfomationView());
              },
              child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  width: ScreenUtil().setWidth(106),
                  height: ScreenUtil().setHeight(43),
                  padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
                  decoration: BoxDecoration(
                    color: AppColor.black,
                    borderRadius:
                        BorderRadius.circular(ScreenUtil().setWidth(34)),
                  ),
                  child: const Center(child: Text('DAILY INFO'))),
            ),
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 19),
            child: GridView.count(
                dragStartBehavior: DragStartBehavior.start,
                crossAxisCount: 3,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
                shrinkWrap: true,
                children: [
                  InkWell(
                      onTap: () {
                        Get.to(const FullScreenImageView());
                      },
                      child: Image.asset(AppImage.devi1)),
                  InkWell(
                      onTap: () {
                        Get.to(const FullScreenImageView());
                      },
                      child: Image.asset(AppImage.devi2)),
                  InkWell(
                      onTap: () {
                        Get.to(const FullScreenImageView());
                      },
                      child: Image.asset(AppImage.devi3)),
                  InkWell(
                      onTap: () {
                        Get.to(const FullScreenImageView());
                      },
                      child: Image.asset(AppImage.devi4)),
                  InkWell(
                      onTap: () {
                        Get.to(const FullScreenImageView());
                      },
                      child: Image.asset(AppImage.devi5)),
                  InkWell(
                      onTap: () {
                        Get.to(const FullScreenImageView());
                      },
                      child: Image.asset(AppImage.devi6)),
                  InkWell(
                      onTap: () {
                        Get.to(const FullScreenImageView());
                      },
                      child: Image.asset(AppImage.devi7)),
                  InkWell(
                      onTap: () {
                        Get.to(const FullScreenImageView());
                      },
                      child: Image.asset(AppImage.devi8)),
                  InkWell(
                      onTap: () {
                        Get.to(const FullScreenImageView());
                      },
                      child: Image.asset(AppImage.devi9)),
                  InkWell(
                      onTap: () {
                        Get.to(const FullScreenImageView());
                      },
                      child: Image.asset(AppImage.devi10)),
                  InkWell(
                      onTap: () {
                        Get.to(const FullScreenImageView());
                      },
                      child: Image.asset(AppImage.devi11)),
                  InkWell(
                      onTap: () {
                        Get.to(const FullScreenImageView());
                      },
                      child: Image.asset(AppImage.devi12)),
                  InkWell(
                      onTap: () {
                        Get.to(const FullScreenImageView());
                      },
                      child: Image.asset(AppImage.devi13)),
                ]),
          ),
        )));
  }

  customList() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Get.to(const GalleryDeviTempleView());
              },
              child: Image(
                  width: ScreenUtil().setWidth(135),
                  height: ScreenUtil().setHeight(233),
                  fit: BoxFit.fill,
                  image: AssetImage(AppImage.h2)),
            ),
            GestureDetector(
              onTap: () {
                Get.to(const GalleryDeviTempleView());
              },
              child: Image(
                  width: ScreenUtil().setWidth(135),
                  height: ScreenUtil().setHeight(233),
                  fit: BoxFit.fill,
                  image: AssetImage(AppImage.h3)),
            ),
            GestureDetector(
              onTap: () {
                Get.to(const GalleryDeviTempleView());
              },
              child: Image(
                  width: ScreenUtil().setWidth(135),
                  height: ScreenUtil().setHeight(233),
                  fit: BoxFit.fill,
                  image: AssetImage(AppImage.h8)),
            )
          ],
        ),
      ],
    );
  }
}
