import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';
import 'package:mandhiram/app/modules/ContactUs/views/contact_us_view.dart';
import 'package:mandhiram/app/modules/EditYourDetails/views/edit_your_details_view.dart';
import 'package:mandhiram/app/modules/InviteFriends/views/invite_friends_view.dart';
import 'package:mandhiram/app/modules/Language/views/language_view.dart';
import 'package:mandhiram/app/modules/Login/views/login_view.dart';
import 'package:mandhiram/app/modules/Notification/views/notification_view.dart';
import 'package:mandhiram/app/modules/SettingScreen/views/setting_screen_view.dart';
import 'package:mandhiram/app/modules/TermsConditions/views/terms_conditions_view.dart';
import 'package:mandhiram/app/modules/WishListProfile/views/wish_list_profile_view.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileController());
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 100.h),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 15.h),
            child: AppBar(
              backgroundColor: AppColor.white,
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImage.logotextorange,
                    width: 172.w,
                    height: 24.h,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      'Welcome Back Oliver\'s',
                      style: TextStyle(fontSize: 15, color: Colors.black45),
                    ),
                  ),
                ],
              ),
              actions: [
                GestureDetector(
                  onTap: () {
                    Get.to(const NotificationView());
                  },
                  child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      width: ScreenUtil().setWidth(75),
                      height: ScreenUtil().setHeight(43),
                      padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
                      decoration: BoxDecoration(
                        color: AppColor.buttonbggrey,
                        borderRadius:
                            BorderRadius.circular(ScreenUtil().setWidth(30)),
                      ),
                      child: Image.asset(AppImage.noti)),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 13),
                  alignment: Alignment.topCenter,
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  height: ScreenUtil().setHeight(300),
                  width: ScreenUtil().setWidth(400),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(227, 227, 227, 0.5),
                      borderRadius:
                          BorderRadius.circular(ScreenUtil().setWidth(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Wrap(
                        spacing: 20,
                        children: [
                          CircleAvatar(
                            radius: ScreenUtil().setWidth(56),
                            backgroundColor:
                                const Color.fromRGBO(227, 227, 227, 0.5),
                            backgroundImage: AssetImage(AppImage.pro),
                            child: Container(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                height: ScreenUtil().setHeight(50),
                                width: ScreenUtil().setWidth(30),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: AppColor.white),
                                    color: AppColor.black,
                                    borderRadius: BorderRadius.circular(
                                        ScreenUtil().setWidth(13))),
                                child: Icon(
                                  Icons.add,
                                  // size: ScreenUtil().setWidth(25),
                                  color: AppColor.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 21),
                            child: Wrap(
                              runAlignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              alignment: WrapAlignment.spaceAround,
                              direction: Axis.vertical,
                              spacing: 3,
                              children: [
                                Text(
                                  'JONSON OLIVERS KHAN',
                                  style: TextStyle(
                                    color: AppColor.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: ScreenUtil().setWidth(21),
                                  ),
                                ),
                                Text(
                                  'Oliver@Khan.outlook',
                                  style: TextStyle(
                                    color: AppColor.black,
                                    fontSize: ScreenUtil().setWidth(12),
                                  ),
                                ),
                                Text(
                                  '+91-XXXXX XXXXX',
                                  style: TextStyle(
                                    color: AppColor.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: ScreenUtil().setWidth(15),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Divider(
                          thickness: 1.1,
                          color: Colors.black26,
                        ),
                      ),
                      MaterialButton(
                        color: AppColor.apcolor_dark,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: AppColor.apcolor_dark)),
                        height: ScreenUtil().setHeight(64),
                        minWidth: ScreenUtil().setWidth(360),
                        onPressed: () {
                          Get.to(const EditYourDetailsView());
                        },
                        child: Text(
                          'EDIT YOUR DETAILS',
                          style: TextStyle(
                            color: AppColor.white,
                            fontSize: 20.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(10),
                      )
                    ],
                  ),
                ),
                buildList1(),
                buildList2(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                  // height: ScreenUtil().setHeight(300),
                  width: ScreenUtil().setWidth(400),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(227, 227, 227, 0.5),
                      borderRadius:
                          BorderRadius.circular(ScreenUtil().setWidth(25))),
                  child: customList(
                      'Contact us',
                      Icon(
                        size: ScreenUtil().setWidth(33),
                        Icons.phone_in_talk,
                        color: AppColor.white,
                      ), ontap: () {
                    Get.to(const ContactUsView());
                  }),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(40),
                ),
                MaterialButton(
                  color: AppColor.apcolor,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: AppColor.apcolor)),
                  height: ScreenUtil().setHeight(57),
                  minWidth: double.infinity,
                  onPressed: () {
                    Get.offAll(const LoginView());
                  },
                  child: Text(
                    'SIGN OUT FOR MANDHIRAM',
                    style: TextStyle(
                      color: AppColor.white,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                SizedBox(height: 50.h)
              ],
            ),
          ),
        )));
  }

  customList(String title, Widget icon, {void Function()? ontap}) {
    return ListTile(
      onTap: ontap,
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.6),
      ),
      leading: Container(
          margin: const EdgeInsets.only(right: 20),
          width: ScreenUtil().setWidth(68),
          height: ScreenUtil().setHeight(52),
          padding: EdgeInsets.all(ScreenUtil().setWidth(5)),
          decoration: BoxDecoration(
            color: AppColor.apcolor_dark,
            borderRadius: BorderRadius.circular(ScreenUtil().setWidth(30)),
          ),
          child: icon),
      trailing: Icon(
        Icons.keyboard_arrow_right,
        color: AppColor.black,
      ),
    );
  }

  buildList1() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      margin: const EdgeInsets.symmetric(vertical: 9, horizontal: 0),
      // height: ScreenUtil().setHeight(300),
      width: ScreenUtil().setWidth(400),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(227, 227, 227, 0.5),
          borderRadius: BorderRadius.circular(ScreenUtil().setWidth(25))),
      child: Column(
        children: [
          customList('Language', Image.asset(AppImage.translate), ontap: () {
            Get.to(const LanguageView());
          }),
          Container(
            margin: EdgeInsets.only(left: 100.w),
            child: const Divider(
              thickness: 1.1,
              color: Color.fromRGBO(205, 205, 205, 0.5),
            ),
          ),
          customList(
              'Settings',
              Icon(
                size: ScreenUtil().setWidth(33),
                Icons.settings,
                color: AppColor.white,
              ), ontap: () {
            Get.to(const SettingScreenView());
          }),
          Container(
            margin: EdgeInsets.only(left: 100.w),
            child: const Divider(
              thickness: 1.1,
              color: Color.fromRGBO(205, 205, 205, 0.5),
            ),
          ),
          customList(
              'Wishlist',
              Icon(
                Icons.favorite,
                color: AppColor.white,
                size: ScreenUtil().setWidth(33),
              ), ontap: () {
            Get.to(const WishListProfileView());
          }),
          Container(
            margin: EdgeInsets.only(left: 100.w),
            child: const Divider(
              thickness: 1.1,
              color: Color.fromRGBO(205, 205, 205, 0.5),
            ),
          ),
          customList(
              'Archive Blog',
              Icon(
                size: ScreenUtil().setWidth(33),
                Icons.bookmark_added,
                color: AppColor.white,
              ),
              ontap: () {}),
        ],
      ),
    );
  }

  buildList2() {
    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      margin: const EdgeInsets.symmetric(vertical: 9, horizontal: 0),
      // height: ScreenUtil().setHeight(300),
      width: ScreenUtil().setWidth(400),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(227, 227, 227, 0.5),
          borderRadius: BorderRadius.circular(ScreenUtil().setWidth(25))),
      child: Column(
        children: [
          customList('Access Mode', Image.asset(AppImage.key), ontap: () {}),
          Container(
            margin: EdgeInsets.only(left: 100.w),
            child: const Divider(
              thickness: 1.1,
              color: Color.fromRGBO(205, 205, 205, 0.5),
            ),
          ),
          customList(
              'Term & conditions',
              Icon(
                size: ScreenUtil().setWidth(33),
                Icons.event_note,
                color: AppColor.white,
              ), ontap: () {
            Get.to(const TermsConditionsView());
          }),
          Container(
            margin: EdgeInsets.only(left: 100.w),
            child: const Divider(
              thickness: 1.1,
              color: Color.fromRGBO(205, 205, 205, 0.5),
            ),
          ),
          customList(
              'Invite Friends',
              Icon(
                Icons.groups,
                size: ScreenUtil().setWidth(33),
                color: AppColor.white,
              ), ontap: () {
            Get.to(const InviteFriendsView());
          }),
        ],
      ),
    );
  }
}
