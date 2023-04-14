import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';
import 'package:share_plus/share_plus.dart';

import '../controllers/invite_friends_controller.dart';

class InviteFriendsView extends GetView<InviteFriendsController> {
  const InviteFriendsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(InviteFriendsController());
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
                'INVITE FRIENDS',
                style: TextStyle(
                    fontSize: 19,
                    color: AppColor.apcolor,
                    fontWeight: FontWeight.w600),
              ),
              const Text(
                'Mandhiram helps your friends',
                style: TextStyle(fontSize: 15, color: Colors.black45),
              ),
            ],
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(19),
                vertical: ScreenUtil().setWidth(15)),
            height: ScreenUtil().setHeight(1030),
            width: ScreenUtil().setWidth(430),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Wrap(
                      spacing: 10,
                      children: [
                        SizedBox(
                          height: ScreenUtil().setWidth(30),
                        ),
                        Text(
                          'Refer Your',
                          style: TextStyle(
                              wordSpacing: 5,
                              fontSize: 35,
                              color: AppColor.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 247, 45, 41),
                              borderRadius: BorderRadius.circular(34)),
                          child: Text(
                            'Friends',
                            style: TextStyle(
                                fontSize: 30,
                                color: AppColor.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'and Family',
                      style: TextStyle(
                          fontSize: 35,
                          color: AppColor.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Image(
                  fit: BoxFit.fill,
                  image: Image.asset(AppImage.friend).image,
                  height: ScreenUtil().setHeight(310),
                  width: ScreenUtil().setWidth(365),
                ),
                Text(
                  'Better to see something once, than hear\nabout it a thousand times',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColor.black,
                  ),
                ),
                // SizedBox(
                //   height: ScreenUtil().setHeight(10),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // direction: Axis.vertical,
                  children: [
                    MaterialButton(
                      color: const Color.fromARGB(31, 217, 203, 203),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(31, 217, 203, 203),
                          )),
                      height: ScreenUtil().setHeight(65),
                      minWidth: ScreenUtil().setWidth(70),
                      onPressed: () {},
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Share.share('Chat Items',
                                  subject: 'Share Temple Chat');
                            },
                            child: Icon(
                              Icons.share,
                              color: AppColor.apcolor,
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(10),
                          ),
                          GestureDetector(
                            onTap: () {
                              Share.share('Chat Items',
                                  subject: 'Share Temple Chat');
                            },
                            child: Text(
                              'SHARE LINK',
                              style: TextStyle(
                                  color: AppColor.apcolor,
                                  fontSize: ScreenUtil().setWidth(16)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      color: const Color.fromARGB(31, 217, 203, 203),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(31, 217, 203, 203),
                          )),
                      height: ScreenUtil().setHeight(65),
                      minWidth: ScreenUtil().setWidth(80),
                      onPressed: () {
                        // Get.offAll(const LoginView());
                      },
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Clipboard.setData(const ClipboardData(
                                  text:
                                      'https://www.youtube.com/watch?v=hFH1R7w8X2U'));
                            },
                            child: Icon(
                              Icons.copy,
                              color: AppColor.apcolor,
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(10),
                          ),
                          GestureDetector(
                            onTap: () {
                              Clipboard.setData(const ClipboardData(
                                  text:
                                      'https://www.youtube.com/watch?v=hFH1R7w8X2U'));
                            },
                            child: Text(
                              'COPY LINK',
                              style: TextStyle(
                                color: AppColor.apcolor,
                                fontSize: ScreenUtil().setWidth(16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(10),
                ),
                Row(
                  children: [
                    Text(
                      'HOW TO SHARE',
                      style: TextStyle(
                        color: AppColor.black,
                        fontWeight: FontWeight.w500,
                        fontSize: ScreenUtil().setWidth(20),
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(10),
                    ),
                    Text(
                      'MANDHIRAM APP',
                      style: TextStyle(
                        fontSize: ScreenUtil().setWidth(24),
                        fontWeight: FontWeight.w700,
                        color: AppColor.apcolor,
                        decorationThickness: 1.9,
                        decorationStyle: TextDecorationStyle.solid,
                        decoration: TextDecoration.underline,
                        decorationColor: const Color.fromARGB(255, 3, 48, 91),
                      ),
                    )
                  ],
                ),

                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How to share Mandhiram link..?',
                        style: TextStyle(
                          color: AppColor.black,
                          fontWeight: FontWeight.w500,
                          fontSize: ScreenUtil().setWidth(17.6),
                        ),
                      ),
                      controller.isButton1.value
                          ? IconButton(
                              onPressed: () {
                                controller.isButton1.value = false;
                              },
                              icon: Icon(
                                Icons.keyboard_arrow_up,
                                size: 28,
                                color: AppColor.black,
                              ))
                          : IconButton(
                              onPressed: () {
                                controller.isButton1.value = true;
                              },
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                size: 28,
                                color: AppColor.black,
                              ))
                    ],
                  ),
                ),
                Obx(
                  () => controller.isButton1.value
                      ? const Text(
                          'Temple visit is a spiritual experience that makes a person better.')
                      : const SizedBox(),
                ),

                const Divider(
                  thickness: 1.2,
                  color: Colors.black26,
                ),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How to Login App..?',
                        style: TextStyle(
                          color: AppColor.black,
                          fontWeight: FontWeight.w500,
                          fontSize: ScreenUtil().setWidth(16.6),
                        ),
                      ),
                      controller.isButton2.value
                          ? IconButton(
                              onPressed: () {
                                controller.isButton2.value = false;
                              },
                              icon: Icon(
                                Icons.keyboard_arrow_up,
                                size: 28,
                                color: AppColor.black,
                              ))
                          : IconButton(
                              onPressed: () {
                                controller.isButton2.value = true;
                              },
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                size: 28,
                                color: AppColor.black,
                              ))
                    ],
                  ),
                ),
                Obx(
                  () => controller.isButton2.value
                      ? const Text(
                          'Temple visit is a spiritual experience that makes a person better.')
                      : const SizedBox(),
                ),
                const Divider(
                  thickness: 1.2,
                  color: Colors.black26,
                ),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Mandhiram Uses..?',
                        style: TextStyle(
                          color: AppColor.black,
                          fontWeight: FontWeight.w500,
                          fontSize: ScreenUtil().setWidth(16.6),
                        ),
                      ),
                      controller.isButton3.value
                          ? IconButton(
                              onPressed: () {
                                controller.isButton3.value = false;
                              },
                              icon: Icon(
                                Icons.keyboard_arrow_up,
                                size: 28,
                                color: AppColor.black,
                              ))
                          : IconButton(
                              onPressed: () {
                                controller.isButton3.value = true;
                              },
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                size: 28,
                                color: AppColor.black,
                              ))
                    ],
                  ),
                ),
                Obx(
                  () => controller.isButton3.value
                      ? const Text(
                          'Temple visit is a spiritual experience that makes a person better.')
                      : const SizedBox(),
                ),
                SizedBox(
                  height: ScreenUtil().setWidth(10),
                ),
              ],
            ),
          ),
        )));
  }
}
