// ignore_for_file: deprecated_member_use

import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/daily_infomation_controller.dart';

class DailyInfomationView extends GetView<DailyInfomationController> {
  const DailyInfomationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(DailyInfomationController());
    return Scaffold(
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(
            left: 15.w,
            right: 15.w,
            bottom: 10.h,
          ),
          padding: EdgeInsets.only(
            left: ScreenUtil().setWidth(45),
            right: ScreenUtil().setWidth(3),
            top: ScreenUtil().setHeight(17),
            bottom: ScreenUtil().setHeight(17),
          ),
          decoration: BoxDecoration(
            color: AppColor.black,
            borderRadius: BorderRadius.circular(28),
          ),
          child: Obx(
            () => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Daily information Alerts',
                        style: TextStyle(
                            fontSize: 18,
                            color: AppColor.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Popup Notifications',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white54,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  controller.offON.value
                      ? InkWell(
                          onTap: () {
                            controller.offON.value = false;
                          },
                          child: Container(
                              // margin: const EdgeInsets.symmetric(
                              //     vertical: 5, horizontal: 5),
                              // padding: EdgeInsets.symmetric(
                              //     horizontal: ScreenUtil().setWidth(7),
                              //     vertical: ScreenUtil().setHeight(4)),
                              decoration: BoxDecoration(
                                color: AppColor.green,
                                borderRadius: BorderRadius.circular(
                                    ScreenUtil().setWidth(30)),
                              ),
                              child: Image(
                                  alignment: Alignment.centerRight,
                                  width: ScreenUtil().setWidth(55),
                                  height: ScreenUtil().setHeight(40),
                                  image: AssetImage(AppImage.off))),
                        )
                      : InkWell(
                          onTap: () {
                            controller.offON.value = true;
                          },
                          child: Image(
                              alignment: Alignment.centerLeft,
                              width: ScreenUtil().setWidth(55),
                              height: ScreenUtil().setHeight(40),
                              image: AssetImage(AppImage.off))),
                ],
              ),
            ),
          ),
        ),
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
                    'DAILY INFORMATION',
                    style: TextStyle(
                        fontSize: 19,
                        color: AppColor.apcolor,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Vaishno Devi Temple',
                    style: TextStyle(fontSize: 15, color: AppColor.black),
                  ),
                ],
              ),
              actions: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      width: ScreenUtil().setWidth(61),
                      height: ScreenUtil().setHeight(48),
                      padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
                      decoration: BoxDecoration(
                        color: AppColor.buttonbggrey,
                        borderRadius:
                            BorderRadius.circular(ScreenUtil().setWidth(30)),
                      ),
                      child: Image.asset(
                        AppImage.filter,
                        height: 10.h,
                        width: 20.h,
                        fit: BoxFit.contain,
                      )),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              Container(
                margin: EdgeInsets.only(
                    top: ScreenUtil().setHeight(12),
                    left: 155,
                    right: 10,
                    bottom: ScreenUtil().setHeight(10)),
                padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil().setHeight(5), horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(51, 101, 138, 1),
                ),
                child: const Text(
                  'Yesterday',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              // AnyLinkPreview(
              //     link: 'https://www.youtube.com/watch?v=jPwWa6InIHU'),

              customTextList(
                  'Jonson Temple HO',
                  'Vaishno Devi is a manifestation of the Hindu Mother Goddess, Durga or Adi Shakti.',
                  '1 day ago'),
              customTextList(
                  'Jonson Temple HO',
                  'The words "Maa" and "Mata" are commonly used in India for mother, and thus are often heavily used in connection with Vaishno Devi. Vaishnavi took avatar from the combined energies of Mahakali, Mahalakshmi, and Mahasaraswati',
                  '1 day ago'),
              Container(
                width: 290.w,
                margin: EdgeInsets.symmetric(
                    horizontal: 10, vertical: ScreenUtil().setHeight(5)),
                padding: const EdgeInsets.all(7),
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColor.buttonbggrey),
                child: ListTile(
                  title: Text(
                    'Jonson Temple HO',
                    style: TextStyle(color: AppColor.apcolor, fontSize: 16),
                  ),
                  subtitle: AnyLinkPreview(
                    // previewHeight: 130,
                    placeholderWidget: const Text(
                        'https://pub.dev/packages/any_link_preview/example'),
                    urlLaunchMode: LaunchMode.inAppWebView,
                    link: "https://www.youtube.com/watch?v=jPwWa6InIHU",
                    displayDirection: UIDirection.uiDirectionVertical,
                    // showMultimedia: false,
                    bodyMaxLines: 9,
                    bodyTextOverflow: TextOverflow.ellipsis,
                    titleStyle: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    bodyStyle:
                        const TextStyle(color: Colors.grey, fontSize: 12),
                    errorBody: 'Show my custom error body',
                    errorTitle: 'Show my custom error title',
                    errorWidget: Container(
                      color: Colors.grey[300],
                      child: const Text('Oops!'),
                    ),
                    errorImage: "https://google.com/",
                    cache: const Duration(days: 7),
                    backgroundColor: Colors.grey[300],
                    borderRadius: 12,
                    removeElevation: true,
                    boxShadow: const [
                      BoxShadow(blurRadius: 3, color: Colors.grey)
                    ],
                    onTap: () async {
                      var url = 'https://www.youtube.com/watch?v=jPwWa6InIHU';
                      if (await canLaunch(url)) {
                        await launch(url);
                      }
                    },
                  ),
                ),
              ),

              customImageList(
                'Jonson Temple HO',
                AppImage.h2,
                '22 hour ago',
              ),
              Container(
                margin: EdgeInsets.only(
                    top: ScreenUtil().setHeight(10),
                    left: ScreenUtil().setWidth(165),
                    right: ScreenUtil().setWidth(10),
                    bottom: ScreenUtil().setHeight(10)),
                padding: EdgeInsets.symmetric(
                    vertical: ScreenUtil().setHeight(5), horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(51, 101, 138, 1),
                ),
                child: const Text(
                  'Today',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              customImageList(
                'Jonson Temple HO',
                AppImage.h3,
                '22 hour ago',
              ),
              Container(
                width: ScreenUtil().setWidth(328),
                margin: EdgeInsets.symmetric(
                    horizontal: 10, vertical: ScreenUtil().setHeight(5)),
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColor.buttonbggrey),
                child: ListTile(
                  title: Text(
                    'Jonson Temple HO',
                    style: TextStyle(color: AppColor.apcolor, fontSize: 16),
                  ),
                  subtitle: AnyLinkPreview(
                    // previewHeight: 130,
                    // placeholderWidget: Text(
                    //     'https://pub.dev/packages/any_link_preview/example'),
                    urlLaunchMode: LaunchMode.inAppWebView,
                    link: "https://www.youtube.com/watch?v=jPwWa6InIHU",
                    displayDirection: UIDirection.uiDirectionVertical,
                    // showMultimedia: false,
                    bodyMaxLines: 9,
                    bodyTextOverflow: TextOverflow.ellipsis,
                    titleStyle: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    bodyStyle:
                        const TextStyle(color: Colors.grey, fontSize: 12),
                    errorBody: 'Show my custom error body',
                    errorTitle: 'Show my custom error title',
                    errorWidget: Container(
                      color: Colors.grey[300],
                      child: const Text('Oops!'),
                    ),
                    errorImage: "https://google.com/",
                    cache: const Duration(days: 7),
                    backgroundColor: Colors.grey[300],
                    borderRadius: 12,
                    removeElevation: true,
                    boxShadow: const [
                      BoxShadow(blurRadius: 3, color: Colors.grey)
                    ],
                    onTap: () async {
                      var url = 'https://www.youtube.com/watch?v=jPwWa6InIHU';
                      if (await canLaunch(url)) {
                        await launch(url);
                      }
                    },
                  ),
                ),
              ),

              customTextList(
                  'Jonson Temple HO',
                  'Vaishno Devi is a manifestation of the Hindu Mother Goddess, Durga or Adi Shakti.',
                  '10 minute ago'),
              customImageList(
                'Jonson Temple HO',
                AppImage.devi3,
                '24 hour ago',
              ),
            ]))));
  }

  customTextList(
    String txt1,
    String txt2,
    String txt3,
  ) {
    return Stack(
      children: [
        Container(
            width: 290.w,
            padding: EdgeInsets.all(ScreenUtil().setWidth(15)),
            margin: EdgeInsets.only(
                left: ScreenUtil().setWidth(10),
                top: ScreenUtil().setHeight(10),
                bottom: ScreenUtil().setHeight(10)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(ScreenUtil().setWidth(15)),
                color: AppColor.buttonbggrey),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  txt1,
                  style: TextStyle(
                      color: AppColor.apcolor,
                      fontSize: ScreenUtil().setWidth(16)),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(7),
                ),
                Text(txt2),
                Container(
                    margin: EdgeInsets.only(
                        left: ScreenUtil().setWidth(85),
                        top: ScreenUtil().setHeight(6)),
                    alignment: Alignment.bottomRight,
                    child: Text(txt3))
              ],
            )),
        Obx(
          () => Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(40),
                    bottom: ScreenUtil().setHeight(35),
                    left: ScreenUtil().setWidth(290)),
                child: CircleAvatar(
                    radius: ScreenUtil().setWidth(15),
                    backgroundColor: AppColor.apcolor,
                    child: controller.isOnPress1.value
                        ? InkWell(
                            onTap: () {
                              controller.isOnPress1.value = false;
                            },
                            child: Icon(
                              Icons.add,
                              size: ScreenUtil().setWidth(16),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              controller.isOnPress1.value = true;
                            },
                            child: Icon(
                              Icons.close,
                              size: ScreenUtil().setWidth(16),
                            ),
                          )),
              ),
              controller.isOnPress1.value
                  ? const SizedBox()
                  : Container(
                      margin: EdgeInsets.only(
                          top: ScreenUtil().setHeight(80),
                          left: ScreenUtil().setWidth(15)),
                      child: Wrap(
                        direction: Axis.vertical,
                        spacing: 15,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Share.share("Jonson Temple HO",
                                  subject: 'chat title');
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: ScreenUtil().setWidth(18),
                                    vertical: ScreenUtil().setWidth(11)),
                                decoration: BoxDecoration(
                                  color: AppColor.buttonbggrey,
                                  borderRadius: BorderRadius.circular(
                                      ScreenUtil().setWidth(30)),
                                ),
                                child: const Icon(Icons.share)),
                          ),
                          GestureDetector(
                              onTap: () {
                                // Get.to(Dashboard());
                                controller.commentChat();
                              },
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: ScreenUtil().setWidth(18),
                                      vertical: ScreenUtil().setWidth(11)),
                                  decoration: BoxDecoration(
                                    color: AppColor.buttonbggrey,
                                    borderRadius: BorderRadius.circular(
                                        ScreenUtil().setWidth(30)),
                                  ),
                                  child: Image(
                                      height: ScreenUtil().setHeight(25),
                                      width: ScreenUtil().setWidth(25),
                                      fit: BoxFit.fill,
                                      color:
                                          const Color.fromARGB(255, 84, 73, 73),
                                      image: AssetImage((AppImage.exclude))))),
                        ],
                      ),
                    )
            ],
          ),
        )
      ],
    );
  }

  customImageList(
    String txt1,
    String img1,
    String txt2,
    // Widget icon,
  ) {
    return Stack(
      children: [
        Container(
            width: 290.w,
            padding: EdgeInsets.all(ScreenUtil().setWidth(15)),
            margin: EdgeInsets.only(
                left: ScreenUtil().setWidth(15),
                top: ScreenUtil().setHeight(10),
                bottom: ScreenUtil().setHeight(10)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(ScreenUtil().setWidth(12)),
                color: AppColor.buttonbggrey),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  txt1,
                  style: TextStyle(
                      color: AppColor.apcolor,
                      fontSize: ScreenUtil().setWidth(16)),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(7),
                ),
                Image(
                    height: ScreenUtil().setHeight(343),
                    width: ScreenUtil().setWidth(298),
                    fit: BoxFit.fill,
                    image: AssetImage(img1)),
                Container(
                    margin: EdgeInsets.only(
                        left: ScreenUtil().setWidth(28),
                        top: ScreenUtil().setHeight(6)),
                    alignment: Alignment.bottomRight,
                    child: Text(txt2))
              ],
            )),
        Obx(
          () => Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(40),
                    bottom: ScreenUtil().setHeight(25),
                    left: ScreenUtil().setWidth(295)),
                child: CircleAvatar(
                    radius: ScreenUtil().setWidth(15),
                    backgroundColor: AppColor.apcolor,
                    child: controller.isOnPress2.value
                        ? InkWell(
                            onTap: () {
                              controller.isOnPress2.value = false;
                            },
                            child: Icon(
                              Icons.add,
                              size: ScreenUtil().setWidth(16),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              controller.isOnPress2.value = true;
                            },
                            child: Icon(
                              Icons.close,
                              size: ScreenUtil().setWidth(16),
                            ),
                          )),
              ),
              controller.isOnPress2.value
                  ? const SizedBox()
                  : Container(
                      margin: EdgeInsets.only(
                          top: ScreenUtil().setHeight(80),
                          left: ScreenUtil().setWidth(15)),
                      child: Wrap(
                        direction: Axis.vertical,
                        spacing: 15,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Share.share("Jonson Temple HO",
                                  subject: 'chat title');
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: ScreenUtil().setWidth(18),
                                    vertical: ScreenUtil().setWidth(11)),
                                decoration: BoxDecoration(
                                  color: AppColor.buttonbggrey,
                                  borderRadius: BorderRadius.circular(
                                      ScreenUtil().setWidth(30)),
                                ),
                                child: const Icon(Icons.share)),
                          ),
                          GestureDetector(
                              onTap: () {
                                // Get.to(Dashboard());
                                controller.commentChat();
                              },
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: ScreenUtil().setWidth(18),
                                      vertical: ScreenUtil().setWidth(11)),
                                  decoration: BoxDecoration(
                                    color: AppColor.buttonbggrey,
                                    borderRadius: BorderRadius.circular(
                                        ScreenUtil().setWidth(30)),
                                  ),
                                  child: Image(
                                      height: ScreenUtil().setHeight(25),
                                      width: ScreenUtil().setWidth(25),
                                      fit: BoxFit.fill,
                                      color:
                                          const Color.fromARGB(255, 84, 73, 73),
                                      image: AssetImage((AppImage.exclude))))),
                        ],
                      ),
                    )
            ],
          ),
        )

        //  ReactionButton<String>(
        //   // shouldChangeReaction: false,
        //   boxReactionSpacing: ScreenUtil().setWidth(30),
        //   boxElevation: 0,
        //   boxPadding: EdgeInsets.symmetric(
        //       horizontal: ScreenUtil().setWidth(15), vertical: 8),
        //   boxPosition: VerticalPosition.TOP,
        //   boxHorizontalPosition: HorizontalPosition.CENTER,
        //   onReactionChanged: (String? value) {
        //     // print('Selected value: $value');
        //   },
        //   reactions: <Reaction<String>>[
        //     Reaction<String>(
        //       value: 'Comments',
        // icon: GestureDetector(
        //     onTap: () {
        //       // Get.to(Dashboard());
        //       controller.commentChat();
        //     },
        //     child: Image(
        //         height: ScreenUtil().setHeight(20),
        //         width: ScreenUtil().setWidth(20),
        //         fit: BoxFit.fill,
        //         color: const Color.fromARGB(255, 84, 73, 73),
        //         image: AssetImage((AppImage.exclude)))),
        //     ),
        //     Reaction<String>(
        //       value: 'Share',
        //       icon: Icon(
        //         Icons.share,
        //         size: ScreenUtil().setWidth(16),
        //       ),
        //     ),
        //   ],
        //   initialReaction: Reaction<String>(
        //     value: 'home',
        //     // previewIcon: Icon(Icons.close),
        //     icon: Icon(
        //       Icons.add,
        //       size: ScreenUtil().setWidth(16),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
