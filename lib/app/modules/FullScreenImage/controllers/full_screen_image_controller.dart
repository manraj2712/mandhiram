import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';

class FullScreenImageController extends GetxController {
  var count = 3.obs;
  List<Widget> samplePages = [
    Image(
        height: ScreenUtil().setHeight(400),
        width: ScreenUtil().setWidth(300),
        fit: BoxFit.fill,
        image: AssetImage(AppImage.devi1)),
    Image(
        height: ScreenUtil().setHeight(500),
        width: ScreenUtil().setWidth(300),
        fit: BoxFit.fill,
        image: AssetImage(AppImage.devi2)),
    Image(
        height: ScreenUtil().setHeight(500),
        width: ScreenUtil().setWidth(300),
        fit: BoxFit.fill,
        image: AssetImage(AppImage.devi3)),
    Image(
        height: ScreenUtil().setHeight(500),
        width: ScreenUtil().setWidth(300),
        fit: BoxFit.fill,
        image: AssetImage(AppImage.devi4)),
    Image(
        height: ScreenUtil().setHeight(500),
        width: ScreenUtil().setWidth(300),
        fit: BoxFit.fill,
        image: AssetImage(AppImage.devi5)),
    Image(
        height: ScreenUtil().setHeight(500),
        width: ScreenUtil().setWidth(300),
        fit: BoxFit.fill,
        image: AssetImage(AppImage.devi6)),
    Image(
        height: ScreenUtil().setHeight(400),
        width: ScreenUtil().setWidth(300),
        fit: BoxFit.fill,
        image: AssetImage(AppImage.devi7)),
    Image(
        height: ScreenUtil().setHeight(500),
        width: ScreenUtil().setWidth(300),
        fit: BoxFit.fill,
        image: AssetImage(AppImage.devi8)),
    Image(
        height: ScreenUtil().setHeight(500),
        width: ScreenUtil().setWidth(300),
        fit: BoxFit.fill,
        image: AssetImage(AppImage.devi9)),
    Image(
        height: ScreenUtil().setHeight(500),
        width: ScreenUtil().setWidth(300),
        fit: BoxFit.fill,
        image: AssetImage(AppImage.devi10)),
    Image(
        height: ScreenUtil().setHeight(500),
        width: ScreenUtil().setWidth(300),
        fit: BoxFit.fill,
        image: AssetImage(AppImage.devi11)),
    Image(
        height: ScreenUtil().setHeight(500),
        width: ScreenUtil().setWidth(300),
        fit: BoxFit.fill,
        image: AssetImage(AppImage.devi12)),
  ];
  final ccontroller = PageController(initialPage: 3, keepPage: true);
  static const kDuration = Duration(milliseconds: 300);
  static const kCurve = Curves.ease;
}
