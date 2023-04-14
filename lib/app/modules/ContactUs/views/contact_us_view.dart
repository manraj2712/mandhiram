import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';

import '../controllers/contact_us_controller.dart';

class ContactUsView extends GetView<ContactUsController> {
  const ContactUsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ContactUsController());
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
                'CONTACT US',
                style: TextStyle(
                    fontSize: 20,
                    color: AppColor.apcolor,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'May I help you, contact me',
                style: TextStyle(fontSize: 15, color: Colors.black45),
                
              ),
            ],
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: ScreenUtil().setHeight(30),
                horizontal: ScreenUtil().setWidth(25)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: [
                      Image(
                        fit: BoxFit.fill,
                        image: Image.asset(AppImage.cont1).image,
                        height: ScreenUtil().setHeight(310),
                        width: ScreenUtil().setWidth(425),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: ScreenUtil().setWidth(55),
                            top: ScreenUtil().setHeight(35)),
                        child: Image(
                          fit: BoxFit.fill,
                          image: Image.asset(AppImage.cont2).image,
                          height: ScreenUtil().setHeight(210),
                          width: ScreenUtil().setWidth(265),
                        ),
                      ),
                    ],
                  ),
                ),
                const Text('Contact Number: 24/7 '),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1800 xxx xxxx',
                      style: TextStyle(
                          color: AppColor.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    GestureDetector(
                      onTap: () {
                        Clipboard.setData(
                            const ClipboardData(text: '1800 xxx xxxx'));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.copy,
                            color: AppColor.apcolor,
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(10),
                          ),
                          Text(
                            'COPY',
                            style: TextStyle(
                              color: AppColor.apcolor,
                              fontSize: ScreenUtil().setWidth(16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(40),
                ),
                const Text('Contact Mail - 02 Working Days'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mandhiram12@gmail.com',
                      style: TextStyle(
                          color: AppColor.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Clipboard.setData(const ClipboardData(
                                text: 'Mandhiram12@gmail.com'));
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
                                text: 'Mandhiram12@gmail.com'));
                          },
                          child: Text(
                            'COPY',
                            style: TextStyle(
                              color: AppColor.apcolor,
                              fontSize: ScreenUtil().setWidth(16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        )));
  }
}
