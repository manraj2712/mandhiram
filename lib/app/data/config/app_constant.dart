// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

final getBox = GetStorage();
const authToken =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHAiOiJ0ZW1wbGUiLCJpYXQiOjE2NjExNzE1NTh9.TPSQvXjvlmj1Umh0p-bcGXb3ijlrrPzwFGY2if0lbsM";
     
// const BASEURL = "http://64.227.178.177:5000";
const BASEURL = "http://64.227.178.177:5000"; 
const userToken = "userToken";
const userNumber = "userNumber";
const isUserLoggedIn = "isLoggedIn";
const COLORPRIMARYDARK = Color(0xff003a00);

class AppVersion {
  static String currentAppVersion = "1.0.1";
  static String latestAppVersion = '0.0.0';
  static int getExtendedVersionNumber(String version) {
    List versionCells = version.split('.');
    versionCells = versionCells.map((i) => int.parse(i)).toList();
    return versionCells[0] * 10000 + versionCells[1] * 100 + versionCells[2];
  }
}
