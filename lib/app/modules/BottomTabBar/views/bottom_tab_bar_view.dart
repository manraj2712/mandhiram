import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';
import 'package:mandhiram/app/modules/Bookmark/views/bookmark_view.dart';
import 'package:mandhiram/app/modules/Profile/views/profile_view.dart';
import 'package:mandhiram/app/modules/Wishlist/views/wishlist_view.dart';
import 'package:mandhiram/app/modules/home/views/home_view.dart';

import '../controllers/bottom_tab_bar_controller.dart';

class BottomTabBarView extends GetView<BottomTabBarController> {
  final TextStyle selectedLabelStyle = TextStyle(
      color: AppColor.apcolor, fontWeight: FontWeight.bold, fontSize: 15);
  final TextStyle unselectedLabelStyle = TextStyle(
      color: AppColor.black, fontWeight: FontWeight.w500, fontSize: 12);
  BottomTabBarView({Key? key}) : super(key: key);
  buildBottomNavigationMenu(context, controller) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            elevation: 10,
            showUnselectedLabels: false,
            showSelectedLabels: true,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex.value,
            backgroundColor: AppColor.apcolor,
            unselectedLabelStyle: unselectedLabelStyle,
            unselectedItemColor: AppColor.black,
            selectedItemColor: AppColor.apcolor,
            // fixedColor: AppColor.apcolor,
            iconSize: 30,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                  icon: Container(
                      margin: const EdgeInsets.only(bottom: 7),
                      child: Image(
                          height: 30,
                          color: controller.tabIndex.value == 0
                              ? AppColor.apcolor
                              : AppColor.black,
                          width: 30,
                          fit: BoxFit.fill,
                          image: AssetImage(AppImage.icon1))),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Container(
                      margin: const EdgeInsets.only(bottom: 7),
                      child: Image(
                          height: 30,
                          width: 30,
                          color: controller.tabIndex.value == 1
                              ? AppColor.apcolor
                              : AppColor.black,
                          fit: BoxFit.fill,
                          image: AssetImage(AppImage.book))),
                  label: 'Bookmark'),
              BottomNavigationBarItem(
                  icon: Container(
                      margin: const EdgeInsets.only(bottom: 7),
                      child: Icon(
                        Icons.favorite,
                        color: controller.tabIndex.value == 2
                            ? AppColor.apcolor
                            : AppColor.black,
                      )),
                  label: 'Wishlist'),
              BottomNavigationBarItem(
                  icon: Container(
                      margin: const EdgeInsets.only(bottom: 7),
                      child: Image(
                          height: 30,
                          width: 30,
                          fit: BoxFit.fill,
                          // color: controller.tabIndex.value == 3
                          //     ? AppColor.apcolor
                          //     : AppColor.black,
                          image: AssetImage(AppImage.pro))),
                  label: 'Profile'),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    final BottomTabBarController controller = Get.put<BottomTabBarController>(
        BottomTabBarController(),
        permanent: false);
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        bottomNavigationBar: buildBottomNavigationMenu(context, controller),
        body: Obx(() => IndexedStack(
              index: controller.tabIndex.value,
              children: const [
                HomeView(),
                BookmarkView(),
                WishlistView(),
                ProfileView()
              ],
            )),
      ),
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
