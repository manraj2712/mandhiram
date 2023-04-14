import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';

import '../controllers/edit_your_details_controller.dart';

class EditYourDetailsView extends GetView<EditYourDetailsController> {
  const EditYourDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(EditYourDetailsController());
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
                'EDIT YOUR DETAILS',
                style: TextStyle(
                    fontSize: 19,
                    color: AppColor.apcolor,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Change as new details',
                style: TextStyle(fontSize: 15, color: Colors.black45),
              ),
            ],
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            height: ScreenUtil().setHeight(808),
            padding: EdgeInsets.symmetric(
              vertical: ScreenUtil().setWidth(8),
              horizontal: ScreenUtil().setWidth(17),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: ScreenUtil().setWidth(70),
                        backgroundColor: AppColor.white,
                        backgroundImage: AssetImage(AppImage.pro),
                      ),
                      Container(
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(
                              left: ScreenUtil().setWidth(105),
                              top: ScreenUtil().setWidth(85)),
                          height: ScreenUtil().setHeight(60),
                          width: ScreenUtil().setWidth(110),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 2.5, color: AppColor.white),
                              color: AppColor.black,
                              borderRadius: BorderRadius.circular(
                                  ScreenUtil().setWidth(13))),
                          child: Center(
                            child: Text(
                              'Change',
                              style: TextStyle(
                                  fontSize: ScreenUtil().setWidth(17),
                                  color: AppColor.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(1),
                ),
                Text(
                  'Full Name',
                  style: TextStyle(
                    fontSize: ScreenUtil().setWidth(18),
                    fontWeight: FontWeight.bold,
                    // color: AppColor.apcolor,
                  ),
                ),
                TextFormField(
                  controller: controller.name,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(ScreenUtil().setWidth(13))),
                    hintText: 'Enter your name',
                  ),
                ),
                // SizedBox(
                //   height: ScreenUtil().setHeight(3),
                // ),
                Text(
                  'Email ID',
                  style: TextStyle(
                    fontSize: ScreenUtil().setWidth(18),
                    fontWeight: FontWeight.bold,
                    // color: AppColor.apcolor,
                  ),
                ),
                TextFormField(
                  controller: controller.email,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(ScreenUtil().setWidth(13))),
                    hintText: 'xyz@gmail.com',
                  ),
                ),
                // SizedBox(
                //   height: ScreenUtil().setHeight(3),
                // ),
                Text(
                  'Mobile Number',
                  style: TextStyle(
                    fontSize: ScreenUtil().setWidth(18),
                    fontWeight: FontWeight.bold,
                    // color: AppColor.apcolor,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: ScreenUtil().setWidth(1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: ScreenUtil().setHeight(73),
                        width: ScreenUtil().setWidth(80),
                        decoration: BoxDecoration(
                          color: AppColor.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(ScreenUtil().setWidth(13)),
                            bottomLeft:
                                Radius.circular(ScreenUtil().setWidth(13)),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '+91',
                            style: TextStyle(
                                fontSize: ScreenUtil().setWidth(17),
                                color: AppColor.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(5),
                      ),
                      Expanded(
                        // flex: 1,
                        child: SizedBox(
                          height: ScreenUtil().setHeight(80),
                          width: ScreenUtil().setWidth(360),
                          child: TextFormField(
                            controller: controller.phone,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(
                                      ScreenUtil().setWidth(13)),
                                  bottomRight: Radius.circular(
                                      ScreenUtil().setWidth(13)),
                                ),
                              ),
                              hintText: 'Enter Number',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(40),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        vertical: ScreenUtil().setWidth(10)),
                    height: ScreenUtil().setHeight(67),
                    width: ScreenUtil().setWidth(430), //Get.width / 1.2,
                    decoration: BoxDecoration(
                      color: AppColor.apcolor,
                      borderRadius:
                          BorderRadius.circular(ScreenUtil().setWidth(30)),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        // Get.back();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              padding: EdgeInsets.all(
                                ScreenUtil().setWidth(5),
                              ),
                              width: ScreenUtil().setWidth(68),
                              height: ScreenUtil().setHeight(50),
                              decoration: BoxDecoration(
                                color: AppColor.white,
                                borderRadius: BorderRadius.circular(
                                    ScreenUtil().setWidth(20)),
                              ),
                              child: Image.asset(AppImage.refresh)),
                          SizedBox(
                            width: ScreenUtil().setWidth(30),
                          ),
                          Text(
                            'UPDATE DETAILS',
                            style: TextStyle(
                              color: AppColor.white,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
