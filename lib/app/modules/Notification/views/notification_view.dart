import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(NotificationController());
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 100.h),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 15.h),
            child: AppBar(
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
                    'Notification',
                    style: TextStyle(
                        fontSize: 19,
                        color: AppColor.apcolor,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Message, Alerts, Updates',
                    style: TextStyle(fontSize: 15, color: Colors.black45),
                  ),
                ],
              ),
              actions: [
                InkWell(
                  onTap: () {},
                  child: Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20.w),
                      width: ScreenUtil().setWidth(75),
                      height: ScreenUtil().setHeight(43),
                      padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
                      decoration: BoxDecoration(
                        color: AppColor.buttonbggrey,
                        borderRadius:
                            BorderRadius.circular(ScreenUtil().setWidth(30)),
                      ),
                      child: Image.asset(
                        AppImage.filter,
                        fit: BoxFit.contain,
                      )),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(child: SingleChildScrollView(child: buildList())));
  }

  customList(String img1, String title, String subtitle, String time,
      {void Function()? ontap}) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.all(7),
          leading: CircleAvatar(
            radius: 32,
            // backgroundImage: AssetImage(img1),
            foregroundImage: AssetImage(img1),
          ),
          title: Text(
            title,
            style: TextStyle(
                color: AppColor.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(fontSize: 16.sp, color: Colors.black87),
          ),
          trailing: Wrap(
            crossAxisAlignment: WrapCrossAlignment.end,
            direction: Axis.vertical,
            children: [
              Text(
                time,
                style: const TextStyle(color: Colors.black45),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                size: 30,
                color: AppColor.black,
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 90.w),
          child: Divider(
            thickness: 1.2,
            color: AppColor.buttonbggrey,
          ),
        )
      ],
    );
  }

  buildList() {
    return Column(
      children: [
        customList(AppImage.icon1, 'Mandhiram Verify',
            'Recently Mandhiram successfully done', '12:30 PM'),
        customList(AppImage.devi2, 'Mandhiram Notif..',
            'Feed notifications alerts are ON Daily update', '06:12 AM'),
        customList(AppImage.devi11, 'Temple Feed ',
            'Durgamma thalli photos recently Post', '08:30 AM'),
        customList(AppImage.devi10, 'New Blog Add', 'Temple blog post add you',
            '04:00 PM'),
        customList(
            AppImage.devi9,
            'Cloud Messaging Tool',
            'Tool in firebase console. And click on Send your first message',
            '07:12 AM'),
        customList(AppImage.devi8, 'Contact your device',
            'Choose Show alerting and silent notifications', '02:40 PM'),
        customList(
            AppImage.devi7,
            'Photos and videos',
            'You can also edit the photos & videos before you send them and share',
            '06:22 AM'),
        customList(
            AppImage.devi6,
            'Push notifications',
            'The primary difference between\npush notifications and text messages',
            '05:02 AM'),
        customList(
            AppImage.devi4,
            'Custom Notifications',
            'Vibration length, light, popup\nnotifications, call ringtone, among... ',
            '05:02 AM'),
        customList(AppImage.icon2, 'Mandhiram Verify',
            'Recently Mandhiram successfully\ndone', '12:30 PM'),
        customList(AppImage.devi3, 'Mandhiram Notif..',
            'Feed notifications alerts are ON\nDaily update', '08:30 AM'),
      ],
    );
  }
}
