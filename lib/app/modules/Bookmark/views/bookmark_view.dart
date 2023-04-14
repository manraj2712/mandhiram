import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/app_color.dart';
import 'package:mandhiram/app/data/config/app_image.dart';

import '../controllers/bookmark_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookmarkView extends GetView<BookmarkController> {
  const BookmarkView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100.h),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 15.h),
          child: AppBar(
            backgroundColor: AppColor.white,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImage.logotextorange,
                  width: 172.w,
                  height: 24.h,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    'Welcome Back Oliver\'s',
                    style: TextStyle(fontSize: 15, color: Colors.black45),
                  ),
                ),
              ],
            ),
            // actions: [
            //   GestureDetector(
            //     onTap: () {
            //       Get.to(const SearchMandhiramView());
            //     },
            //     child: Container(
            //         margin: const EdgeInsets.symmetric(
            //             vertical: 5, horizontal: 5),
            //         width: ScreenUtil().setWidth(75),
            //         height: ScreenUtil().setHeight(43),
            //         padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
            //         decoration: BoxDecoration(
            //           color: AppColor.buttonbggrey,
            //           borderRadius:
            //               BorderRadius.circular(ScreenUtil().setWidth(30)),
            //         ),
            //         child: Icon(
            //           Icons.search,
            //           color: AppColor.black,
            //         )),
            //   ),
            //   GestureDetector(
            //     onTap: () {
            //       Get.to(const NotificationView());
            //     },
            //     child: Container(
            //         margin: const EdgeInsets.symmetric(
            //             vertical: 5, horizontal: 5),
            //         width: ScreenUtil().setWidth(75),
            //         height: ScreenUtil().setHeight(43),
            //         padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
            //         decoration: BoxDecoration(
            //           color: AppColor.buttonbggrey,
            //           borderRadius:
            //               BorderRadius.circular(ScreenUtil().setWidth(30)),
            //         ),
            //         child: Image.asset(AppImage.noti)),
            //   ),
            // ],
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'BookmarkView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
