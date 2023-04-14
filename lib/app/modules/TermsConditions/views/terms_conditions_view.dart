import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';

import '../controllers/terms_conditions_controller.dart';

class TermsConditionsView extends GetView<TermsConditionsController> {
  const TermsConditionsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(TermsConditionsController());
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
                'TERM & CONDITIONS',
                style: TextStyle(
                    fontSize: 19,
                    color: AppColor.apcolor,
                    fontWeight: FontWeight.w600),
              ),
              const Text(
                'Read Privacy Policy',
                style: TextStyle(fontSize: 15, color: Colors.black45),
              ),
            ],
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            height: ScreenUtil().setHeight(1380),
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(19),
              vertical: ScreenUtil().setWidth(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Wrap(
                  direction: Axis.vertical,
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Image(
                      fit: BoxFit.fill,
                      image: Image.asset(AppImage.icon1).image,
                      height: ScreenUtil().setHeight(100),
                      width: ScreenUtil().setWidth(75),
                    ),
                    Text(
                      'Mandhiram',
                      style: TextStyle(
                          color: AppColor.apcolor,
                          fontSize: ScreenUtil().setWidth(22),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
                SizedBox(
                  height: ScreenUtil().setHeight(1),
                ),
                Text(
                  'Term and Conditions',
                  style: TextStyle(
                      color: AppColor.black,
                      fontSize: ScreenUtil().setWidth(21),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'The Terms of Service Agreement is mainly used for legal purposes by companies which provide software or services, such as web browsers, e-commerce, web search engines, social media, and transport services.',
                  style: TextStyle(
                    color: AppColor.black,
                    fontSize: ScreenUtil().setWidth(16),
                  ),
                ),
                Text(
                  'A legitimate terms-of-service agreement',
                  style: TextStyle(
                      color: AppColor.black,
                      fontSize: ScreenUtil().setWidth(17.7),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'is legally binding and may be subject to can enforce the terms by refusing service. Customers can enforce by filing a lawsuit or arbitration case if they can show they were actually harmed by a breach of the terms. There is a heightened risk of data going astray during corporate changes, including mergers, divestitures, buyouts, downsizing, etc..., when data can be transferred improperly .',
                  style: TextStyle(
                    color: AppColor.black,
                    fontSize: ScreenUtil().setWidth(16),
                  ),
                ),
                Wrap(
                  children: [
                    Text(
                      'A terms of service agreement',
                      style: TextStyle(
                          color: AppColor.black,
                          fontSize: ScreenUtil().setWidth(16.7),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'typically contains sections pertaining to one or more of the following topic',
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: ScreenUtil().setWidth(16),
                      ),
                    ),
                  ],
                ),
                buildList(),
                Text(
                  'Public awareness',
                  style: TextStyle(
                      color: AppColor.black,
                      fontSize: ScreenUtil().setWidth(20),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Terms of service are subject to change and vary from service to service, so several initiatives exist to increase public awareness by clarifying such differences in terms, including .',
                  style: TextStyle(
                    color: AppColor.black,
                    fontSize: ScreenUtil().setWidth(16),
                  ),
                )
              ],
            ),
          ),
        )));
  }

  customList(
    String title,
  ) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: AppColor.black,
        radius: 5,
      ),
      title: Text(title),
    );
  }

  buildList() {
    return Column(
      children: [
        customList('Disambiguation/definition of key words and phrases'),
        customList('User rights and responsibilities'),
        customList('Proper or expected usage; definition of misuse'),
        customList('Accountability for online actions, behaviour, and conduct'),
        customList('Privacy policy outlining the use of personal data'),
        customList(
            'Payment details such as membership or subscription fees, etc.'),
      ],
    );
  }
}
