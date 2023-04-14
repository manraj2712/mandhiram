import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var pagecontroller;
  RxBool favo1 = false.obs;
  RxBool favo2 = false.obs;
  RxBool favo3 = false.obs;
  RxBool favo4 = false.obs;
  RxBool favo5 = false.obs;
  RxBool favo6 = false.obs;
  RxBool favo7 = false.obs;
  RxBool favo8 = false.obs;
  @override
  void onInit() {
    pagecontroller = PageController(
      viewportFraction: 1,
    );
    super.onInit();
  }
}
