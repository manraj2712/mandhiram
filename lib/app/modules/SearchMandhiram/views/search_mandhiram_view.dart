import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';
import 'package:mandhiram/app/modules/GalleryDeviTemple/views/gallery_devi_temple_view.dart';

import '../controllers/search_mandhiram_controller.dart';

class SearchMandhiramView extends GetView<SearchMandhiramController> {
  const SearchMandhiramView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SearchMandhiramController());
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h),
            TextFormField(
              controller: controller.search,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  disabledBorder: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(29),
                      borderSide: const BorderSide(color: Colors.transparent)),
                  fillColor: AppColor.buttonbggrey,
                  filled: true,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      controller.search.clear();
                    },
                    child: const Icon(
                      Icons.cancel,
                      size: 30,
                      color: Colors.black38,
                    ),
                  ),
                  hintText: 'May I help you here',
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                    color: AppColor.black,
                  )),
            ),
            SizedBox(height: 15.h),
            Divider(thickness: 2, color: AppColor.buttonbggrey),
            SizedBox(
              height: ScreenUtil().setHeight(9),
            ),
            buildSearchList(),
            SizedBox(height: 15.h),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 10),
              child: Row(
                children: [
                  Text(
                    'TOP TRENDING',
                    style: TextStyle(
                        fontSize: 24,
                        color: AppColor.black,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(' TEMPLES',
                      style: TextStyle(
                          color: AppColor.apcolor,
                          fontSize: 24,
                          fontWeight: FontWeight.w500))
                ],
              ),
            ),
            customList(),
            SizedBox(
              height: ScreenUtil().setHeight(29),
            ),
          ],
        ),
      ),
    )));
  }

  customSearchList(String title) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(10),
        height: ScreenUtil().setHeight(38),
        width: ScreenUtil().setWidth(52),
        decoration: BoxDecoration(
            color: AppColor.black, borderRadius: BorderRadius.circular(30)),
        child: Image.asset(AppImage.arrow),
      ),
      title: Text(
        title,
        style: TextStyle(
            color: AppColor.black, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }

  buildSearchList() {
    return Column(
      children: [
        customSearchList('Meenakshi Amman Temple'),
        customSearchList('Virupaksha Temple'),
        customSearchList('Khajuraho Group of Temples'),
        customSearchList('Brihadeeswarar Temple'),
        customSearchList('Puri Jagannath Temple'),
      ],
    );
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
                  width: 123.w,
                  height: 172.h,
                  fit: BoxFit.fill,
                  image: AssetImage(AppImage.h2)),
            ),
            GestureDetector(
              onTap: () {
                Get.to(const GalleryDeviTempleView());
              },
              child: Image(
                  width: 123.w,
                  height: 172.h,
                  fit: BoxFit.fill,
                  image: AssetImage(AppImage.h3)),
            ),
            GestureDetector(
              onTap: () {
                Get.to(const GalleryDeviTempleView());
              },
              child: Image(
                  width: 123.w,
                  height: 172.h,
                  fit: BoxFit.fill,
                  image: AssetImage(AppImage.h8)),
            )
          ],
        ),
        SizedBox(
          height: ScreenUtil().setHeight(13),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Get.to(const GalleryDeviTempleView());
              },
              child: Image(
                  width: 123.w,
                  height: 172.h,
                  fit: BoxFit.fill,
                  image: AssetImage(AppImage.h9)),
            ),
            GestureDetector(
              onTap: () {
                Get.to(const GalleryDeviTempleView());
              },
              child: Image(
                  width: 123.w,
                  height: 172.h,
                  fit: BoxFit.fill,
                  image: AssetImage(AppImage.h4)),
            ),
            GestureDetector(
              onTap: () {
                Get.to(const GalleryDeviTempleView());
              },
              child: Image(
                  width: 123.w,
                  height: 172.h,
                  fit: BoxFit.fill,
                  image: AssetImage(AppImage.h5)),
            )
          ],
        ),
      ],
    );
  }
}
