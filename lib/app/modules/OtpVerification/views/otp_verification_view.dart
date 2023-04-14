import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';
import 'package:mandhiram/app/modules/BottomTabBar/views/bottom_tab_bar_view.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import '../controllers/otp_verification_controller.dart';

class OtpVerificationView extends GetView<OtpVerificationController> {
  const OtpVerificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SizedBox(
      height: ScreenUtil().setHeight(930),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
                margin: EdgeInsets.only(
                    top: ScreenUtil().setWidth(20),
                    left: ScreenUtil().setWidth(20),
                    right: ScreenUtil().setWidth(340)),
                alignment: Alignment.topLeft,
                height: ScreenUtil().setHeight(53),
                width: ScreenUtil().setWidth(57),
                decoration: BoxDecoration(
                  color: AppColor.loginScreenButtons,
                  borderRadius:
                      BorderRadius.circular(ScreenUtil().setWidth(20)),
                ),
                child: const Center(
                    child: Icon(
                  Icons.keyboard_arrow_left,
                  size: 29,
                ))),
          ),
          SizedBox(height: 50.h),
          Text(
            'OTP VERIFICATION',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.transparent,
                decorationThickness: 3,
                decorationStyle: TextDecorationStyle.solid,
                decoration: TextDecoration.underline,
                shadows: [
                  Shadow(color: AppColor.apcolor, offset: const Offset(0, -7))
                ],
                decorationColor: const Color.fromARGB(255, 3, 48, 91)),
          ),
          SizedBox(height: 14.h),
          Text(
            'Login verification code send to',
            style: TextStyle(
              fontSize: ScreenUtil().setWidth(18),
              // color: AppColor.apcolor,
            ),
          ),
          Text(
            '+91-xxxxxxxxx',
            style: TextStyle(
                fontSize: ScreenUtil().setWidth(17), fontWeight: FontWeight.bold
                // color: AppColor.apcolor,
                ),
          ),
          SizedBox(height: 40.h),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(16),
                vertical: ScreenUtil().setWidth(7)),
            child: OTPTextField(
              length: 6,
              width: ScreenUtil().setWidth(430),
              outlineBorderRadius: 8,
              fieldWidth: ((Get.width) / 8.7) - 2,
              otpFieldStyle: OtpFieldStyle(
                backgroundColor: Colors.grey.shade50,
                enabledBorderColor: Colors.blueGrey.shade200,
                borderColor: AppColor.apcolor,
                focusBorderColor: AppColor.apcolor,
              ),
              style: TextStyle(
                  fontSize: ScreenUtil().setWidth(24),
                  fontWeight: FontWeight.bold,
                  color: AppColor.apcolor),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              onChanged: (pin) {
                // controller.myOTP = pin;
              },
              spaceBetween: 2,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(6)),
              onCompleted: (pin) {
                if (pin.length == 6) {
                  // print('object');

                  controller.verifyOTP(pin);
                } else {
                  // SHOW_SNACKBAR(
                  //     message: "Your Entered OTP is Invalid",
                  //     isSuccess: false);
                }
              },
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'Incorrect OTP !!',
            style: TextStyle(
              fontSize: ScreenUtil().setWidth(17),
              fontWeight: FontWeight.w500,
              color: AppColor.apcolor,
            ),
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                height: ScreenUtil().setHeight(60),
                minWidth: ScreenUtil().setWidth(210),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(ScreenUtil().setWidth(11)),
                        topLeft: Radius.circular(ScreenUtil().setWidth(11)))),
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'Didn\'t Receive the ',
                      style: TextStyle(
                        fontSize: ScreenUtil().setWidth(13),
                        // color: AppColor.apcolor,
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(3),
                    ),
                    Text(
                      'OTP',
                      style: TextStyle(
                        fontSize: ScreenUtil().setWidth(13),
                        color: AppColor.apcolor,
                      ),
                    ),
                    Text(
                      ' ?',
                      style: TextStyle(
                        fontSize: ScreenUtil().setWidth(13),
                        // color: AppColor.apcolor,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(7),
              ),
              MaterialButton(
                height: ScreenUtil().setHeight(60),
                minWidth: ScreenUtil().setWidth(157),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(ScreenUtil().setWidth(11)),
                        topRight: Radius.circular(ScreenUtil().setWidth(11)))),
                color: const Color.fromARGB(255, 12, 5, 47),
                onPressed: () {},
                child: Text(
                  'Resend in 56',
                  style: TextStyle(
                    fontSize: ScreenUtil().setWidth(15),
                    color: AppColor.white,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 40.h),
          MaterialButton(
            color: AppColor.apcolor,
            shape: OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.apcolor),
                borderRadius: BorderRadius.circular(ScreenUtil().setWidth(24))),
            height: ScreenUtil().setHeight(60),
            minWidth: ScreenUtil().setWidth(380),
            onPressed: () {
              Get.offAll(BottomTabBarView());
            },
            child: Text(
              'VERIFY AND PROCEED',
              style: TextStyle(
                  fontSize: ScreenUtil().setWidth(18),
                  color: AppColor.white,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(300),
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                'By Clicking on verify and proceed you accept our',
                style: TextStyle(
                  fontSize: ScreenUtil().setWidth(15),
                  color: AppColor.black,
                ),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(7),
              ),
              Text(
                'Term and condition',
                style: TextStyle(
                  fontSize: ScreenUtil().setWidth(15),
                  color: AppColor.apcolor,
                ),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(7),
              ),
              const Text(
                '&',
              ),
              SizedBox(
                width: ScreenUtil().setWidth(7),
              ),
              Text(
                'Privacy Policy',
                style: TextStyle(
                  fontSize: ScreenUtil().setWidth(15),
                  color: AppColor.apcolor,
                ),
              ),
            ],
          ),
        ],
      ),
    )));
  }
}
