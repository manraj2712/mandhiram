import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';
import 'package:mandhiram/app/modules/OtpVerification/views/otp_verification_view.dart';

class SignupController extends GetxController {
  var phone = TextEditingController();
  var name = TextEditingController();

  Future register() async {
    var response = await registerUser(
        endUrl: "$BASEURL/api/user/register",
        data: {'phone': phone.text, 'pushToken': ''});
    log(response.statusCode.toString());
    if (response.statusCode == 200) {
      Get.to(const OtpVerificationView());
      log('sucsessfully register');
      // ignore: avoid_print
      print(response.data);
      return response.data;
    } else if (response.statusCode == 400) {
      log('Invalid Fill Data');
    } else {
      Get.showSnackbar(const GetSnackBar(
        backgroundColor: Colors.red,
        message: "Something went wrong",
        duration: Duration(milliseconds: 3000),
      ));
    }
  }
}
