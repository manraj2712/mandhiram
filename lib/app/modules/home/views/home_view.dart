import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';
import 'package:mandhiram/app/modules/DeviTempleDetails/views/devi_temple_details_view.dart';
import 'package:mandhiram/app/modules/Notification/views/notification_view.dart';
import 'package:mandhiram/app/modules/SearchMandhiram/views/search_mandhiram_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
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
                actions: [
                  GestureDetector(
                    onTap: () {
                      Get.to(const SearchMandhiramView());
                    },
                    child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        width: ScreenUtil().setWidth(75),
                        height: ScreenUtil().setHeight(43),
                        padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
                        decoration: BoxDecoration(
                          color: AppColor.buttonbggrey,
                          borderRadius:
                              BorderRadius.circular(ScreenUtil().setWidth(30)),
                        ),
                        child: Icon(
                          Icons.search,
                          color: AppColor.black,
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(const NotificationView());
                    },
                    child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        width: ScreenUtil().setWidth(75),
                        height: ScreenUtil().setHeight(43),
                        padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
                        decoration: BoxDecoration(
                          color: AppColor.buttonbggrey,
                          borderRadius:
                              BorderRadius.circular(ScreenUtil().setWidth(30)),
                        ),
                        child: Image.asset(AppImage.noti)),
                  ),
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    height: 200,
                    // pageview
                    child: PageView(
                      controller: controller.pagecontroller,
                      children: <Widget>[
                        Image(
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.fill,
                          image: AssetImage(AppImage.h1),
                        ),
                        Image(
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.fill,
                          image: AssetImage(AppImage.h1),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller.pagecontroller,
                      count: 2,
                      effect: SlideEffect(
                          spacing: 2,
                          radius: 4,
                          dotWidth: 60,
                          dotHeight: 6,
                          activeDotColor: AppColor.apcolor),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.h),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: Image.asset(AppImage.ex).image,
                                height: ScreenUtil().setHeight(40),
                                width: ScreenUtil().setWidth(200),
                              ),
                              Text(
                                'EXPLORE TEMPLES',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.black),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Mandhiram bring you closer to God',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 30.h),
                              width: ScreenUtil().setWidth(61),
                              height: ScreenUtil().setHeight(48),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 22.w, vertical: 14.h),
                              decoration: BoxDecoration(
                                color: AppColor.buttonbggrey,
                                borderRadius: BorderRadius.circular(
                                    ScreenUtil().setWidth(24)),
                              ),
                              child: Image.asset(AppImage.filter)),
                        ],
                      ),
                    ),
                  ),
                  buildList(),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset(
                      AppImage.beyoutext,
                      width: 200.w,
                      height: 100.h,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          )),
    );
  }

  customList(String img1, Widget icon1, String img2, Widget icon2,
      {void Function()? ontap}) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Stack(
            children: [
              InkWell(
                onTap: () {
                  Get.to(const DeviTempleDetailsView());
                },
                child: Image(
                    width: ScreenUtil().setWidth(190),
                    height: ScreenUtil().setHeight(260),
                    fit: BoxFit.fill,
                    image: AssetImage(img1)),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 12, left: 140),
                  width: ScreenUtil().setWidth(42),
                  height: ScreenUtil().setHeight(32),
                  padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
                  decoration: BoxDecoration(
                    color: const Color(0x7CF4F4F4),
                    borderRadius:
                        BorderRadius.circular(ScreenUtil().setWidth(34)),
                  ),
                  child: Center(
                    child: icon1,
                  )),
            ],
          ),
          InkWell(
            onTap: () {
              Get.to(const DeviTempleDetailsView());
            },
            child: Stack(
              children: [
                Image(
                    width: ScreenUtil().setWidth(190),
                    height: ScreenUtil().setHeight(260),
                    fit: BoxFit.fill,
                    image: AssetImage(img2)),
                Container(
                    margin: const EdgeInsets.only(top: 12, left: 140),
                    width: ScreenUtil().setWidth(42),
                    height: ScreenUtil().setHeight(32),
                    padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
                    decoration: BoxDecoration(
                      color: const Color(0x7CF4F4F4),
                      borderRadius:
                          BorderRadius.circular(ScreenUtil().setWidth(34)),
                    ),
                    child: Center(
                      child: icon2,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildList() {
    return Obx(
      () => SizedBox(
        // height: ScreenUtil().setHeight(1230),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            customList(
              AppImage.h2,
              controller.favo1.value
                  ? GestureDetector(
                      onTap: () {
                        controller.favo1.value = false;
                      },
                      child: favIcon(Colors.pink))
                  : GestureDetector(
                      onTap: () {
                        controller.favo1.value = true;
                      },
                      child: favIcon(Colors.white)),
              AppImage.h3,
              controller.favo2.value
                  ? GestureDetector(
                      onTap: () {
                        controller.favo2.value = false;
                      },
                      child: favIcon(Colors.pink))
                  : GestureDetector(
                      onTap: () {
                        controller.favo2.value = true;
                      },
                      child: favIcon(Colors.white)),
            ),
            customList(
              AppImage.h4,
              controller.favo3.value
                  ? GestureDetector(
                      onTap: () {
                        controller.favo3.value = false;
                      },
                      child: favIcon(Colors.pink))
                  : GestureDetector(
                      onTap: () {
                        controller.favo3.value = true;
                      },
                      child: favIcon(Colors.white)),
              AppImage.h7,
              controller.favo4.value
                  ? GestureDetector(
                      onTap: () {
                        controller.favo4.value = false;
                      },
                      child: favIcon(Colors.pink))
                  : GestureDetector(
                      onTap: () {
                        controller.favo4.value = true;
                      },
                      child: favIcon(Colors.white)),
            ),
            customList(
              AppImage.h6,
              controller.favo5.value
                  ? GestureDetector(
                      onTap: () {
                        controller.favo5.value = false;
                      },
                      child: favIcon(Colors.pink))
                  : GestureDetector(
                      onTap: () {
                        controller.favo5.value = true;
                      },
                      child: favIcon(Colors.white)),
              AppImage.h5,
              controller.favo6.value
                  ? GestureDetector(
                      onTap: () {
                        controller.favo6.value = false;
                      },
                      child: favIcon(Colors.pink))
                  : GestureDetector(
                      onTap: () {
                        controller.favo6.value = true;
                      },
                      child: favIcon(Colors.white)),
            ),
            customList(
              AppImage.h8,
              controller.favo7.value
                  ? GestureDetector(
                      onTap: () {
                        controller.favo7.value = false;
                      },
                      child: favIcon(Colors.pink))
                  : GestureDetector(
                      onTap: () {
                        controller.favo7.value = true;
                      },
                      child: favIcon(Colors.white)),
              AppImage.h9,
              controller.favo8.value
                  ? GestureDetector(
                      onTap: () {
                        controller.favo8.value = false;
                      },
                      child: favIcon(Colors.pink))
                  : GestureDetector(
                      onTap: () {
                        controller.favo8.value = true;
                      },
                      child: favIcon(Colors.white)),
            )
          ],
        ),
      ),
    );
  }

  Icon favIcon(Color color) {
    return Icon(
      Icons.favorite,
      color: color,
      size: 15.h,
    );
  }

  Future<bool> showExitPopup(context) async {
    return await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SizedBox(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Do you want to exit?"),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            exit(0);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.apcolor),
                          child: const Text("Yes"),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                          child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        child: const Text("No",
                            style: TextStyle(color: Colors.black)),
                      ))
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
