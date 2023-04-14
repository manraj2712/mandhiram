import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';
import 'package:mandhiram/app/modules/BottomTabBar/views/bottom_tab_bar_view.dart';
import 'package:mandhiram/app/modules/DailyInfomation/views/daily_infomation_view.dart';
import 'package:share_plus/share_plus.dart';

import '../controllers/devi_temple_details_controller.dart';

class DeviTempleDetailsView extends GetView<DeviTempleDetailsController> {
  const DeviTempleDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(DeviTempleDetailsController());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100.h),
        child: SafeArea(
          child: SizedBox(
            height: 90.h,
            child: Row(
              children: [
                SizedBox(width: 22.w),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    color: AppColor.black,
                    size: 28,
                  ),
                ),
                SizedBox(width: 20.w),
                Wrap(
                  direction: Axis.vertical,
                  children: [
                    Text(
                      'VAISHNO DEVI TEMPLE',
                      style: TextStyle(
                          fontSize: 18,
                          color: AppColor.apcolor,
                          fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      'Welcome Back Oliver\'s',
                      style: TextStyle(fontSize: 16, color: Colors.black45),
                    ),
                  ],
                ),
                SizedBox(width: 32.w),
                InkWell(
                  onTap: () {
                    Get.to(const DailyInfomationView());
                  },
                  child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      width: ScreenUtil().setWidth(108),
                      height: ScreenUtil().setHeight(43),
                      padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
                      decoration: BoxDecoration(
                        color: AppColor.black,
                        borderRadius:
                            BorderRadius.circular(ScreenUtil().setWidth(34)),
                      ),
                      child: const Center(
                          child: Text(
                        'DAILY INFO',
                        style: TextStyle(color: Colors.white),
                      ))),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image(
                    width: ScreenUtil().setWidth(430),
                    height: ScreenUtil().setHeight(458),
                    fit: BoxFit.fill,
                    image: AssetImage(AppImage.hd)),
                Container(
                  alignment: Alignment.bottomRight,
                  height: ScreenUtil().setHeight(100),
                  width: ScreenUtil().setWidth(80),
                  margin: EdgeInsets.only(
                    top: ScreenUtil().setHeight(358),
                    left: ScreenUtil().setWidth(369),
                  ),
                  child: Image.asset(AppImage.hd1),
                )
              ],
            ),
            SizedBox(height: 15.h),
            Container(
              margin:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(15)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Row(
                      children: [
                        Icon(
                          Icons.place,
                          color: AppColor.apcolor,
                        ),
                        const Text(
                          'Katri, Uttarkhand',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black54),
                        ),
                        const Spacer(),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 5),
                          width: ScreenUtil().setWidth(75),
                          height: ScreenUtil().setHeight(48),
                          padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
                          decoration: BoxDecoration(
                            color: AppColor.buttonbggrey,
                            borderRadius: BorderRadius.circular(
                                ScreenUtil().setWidth(30)),
                          ),
                          child: controller.favo.value
                              ? GestureDetector(
                                  onTap: () {
                                    controller.favo.value = false;
                                  },
                                  child: const Icon(
                                    Icons.favorite,
                                    color: Colors.pink,
                                  ))
                              : GestureDetector(
                                  onTap: () {
                                    controller.favo.value = true;
                                  },
                                  child: Icon(
                                    Icons.favorite,
                                    color: AppColor.black,
                                  )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Wrap(
                      direction: Axis.vertical,
                      children: [
                        Text(
                          'Vaishno Devi Temple',
                          style: TextStyle(
                              color: AppColor.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 26),
                        ),
                        const Text(
                          'Manifestation of the Hindu Mother Goddess,\nDurga or Adi Shakti.',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Divider(thickness: 2, color: AppColor.buttonbggrey),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Temple Events",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: 5.h),
                            Text("See All events schedule",
                                style: TextStyle(
                                    fontSize: 14.sp, color: AppColor.apcolor))
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 22, vertical: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              color: AppColor.buttonbggrey),
                          child: Row(
                            children: [
                              Text(
                                "Alert Me",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.sp),
                              ),
                              SizedBox(width: 10.w),
                              Icon(
                                Icons.notifications_off,
                                size: 20.sp,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Divider(thickness: 2, color: AppColor.buttonbggrey),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        color: const Color.fromRGBO(51, 101, 138, 1),
                        height: ScreenUtil().setHeight(50),
                        minWidth: ScreenUtil().setWidth(100),
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(51, 101, 138, 1),
                            )),
                        onPressed: () {},
                        child: Text(
                          'More info',
                          style: TextStyle(
                              color: AppColor.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Share.share("Jonson Temple HO",
                              subject: 'chat title');
                        },
                        child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            width: ScreenUtil().setWidth(75),
                            height: ScreenUtil().setHeight(48),
                            padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
                            decoration: BoxDecoration(
                              color: AppColor.buttonbggrey,
                              borderRadius: BorderRadius.circular(
                                  ScreenUtil().setWidth(30)),
                            ),
                            child: Icon(
                              Icons.share,
                              color: AppColor.black,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                        color: AppColor.white,
                        border: Border.all(color: AppColor.buttonbggrey),
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: Container(
                        padding: const EdgeInsets.all(5),
                        height: ScreenUtil().setHeight(50),
                        width: ScreenUtil().setWidth(70),
                        decoration: BoxDecoration(
                            color: AppColor.black,
                            borderRadius: BorderRadius.circular(30)),
                        child: Image.asset(AppImage.route),
                      ),
                      title: Text(
                        'Route',
                        style: TextStyle(
                            color: AppColor.black,
                            fontSize: 19,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle:
                          const Text('Bhavan, Katra, Jammu and Kashmir 182301'),
                      trailing: CircleAvatar(
                          radius: 12,
                          backgroundColor: AppColor.black,
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            color: AppColor.white,
                          )),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                        color: AppColor.white,
                        border: Border.all(color: AppColor.buttonbggrey),
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: Container(
                        padding: const EdgeInsets.all(7),
                        height: ScreenUtil().setHeight(50),
                        width: ScreenUtil().setWidth(70),
                        decoration: BoxDecoration(
                            color: AppColor.black,
                            borderRadius: BorderRadius.circular(30)),
                        child: Image.asset(AppImage.clock),
                      ),
                      title: Text(
                        'Timings',
                        style: TextStyle(
                            color: AppColor.black,
                            fontSize: 19,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: Wrap(
                        children: [
                          Text(
                            'Daily 06:30 AM to 10:30 PM',
                            style: TextStyle(color: AppColor.apcolor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          vertical: ScreenUtil().setWidth(10)),
                      height: ScreenUtil().setHeight(56),
                      decoration: BoxDecoration(
                        color: AppColor.apcolor,
                        borderRadius:
                            BorderRadius.circular(ScreenUtil().setWidth(30)),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          Get.offAll(BottomTabBarView());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: ScreenUtil().setWidth(70),
                              height: ScreenUtil().setHeight(40),
                              decoration: BoxDecoration(
                                color: AppColor.white,
                                borderRadius: BorderRadius.circular(
                                    ScreenUtil().setWidth(20)),
                              ),
                              child: Icon(
                                Icons.arrow_back_outlined,
                                size: ScreenUtil().setWidth(30),
                                color: AppColor.apcolor,
                              ),
                            ),
                            SizedBox(
                              width: ScreenUtil().setWidth(30),
                            ),
                            Text(
                              'BACK TO HOME',
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
            SizedBox(
              height: ScreenUtil().setHeight(90),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(width: 1, color: AppColor.buttonbggrey))),
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'CATEGORIES',
                style: TextStyle(
                    color: AppColor.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 17),
              ),
              SizedBox(width: 20.w),
              Container(
                height: ScreenUtil().setHeight(50),
                width: ScreenUtil().setWidth(130),
                decoration: BoxDecoration(
                    color: AppColor.buttonbggrey,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Wrap(
                    spacing: 10,
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: ScreenUtil().setHeight(40),
                        width: ScreenUtil().setWidth(47),
                        decoration: BoxDecoration(
                            color: AppColor.black,
                            borderRadius: BorderRadius.circular(30)),
                        child: Image.asset(AppImage.service),
                      ),
                      const Text('Service')
                    ],
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Container(
                height: ScreenUtil().setHeight(50),
                width: ScreenUtil().setWidth(130),
                decoration: BoxDecoration(
                    color: AppColor.buttonbggrey,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Wrap(
                    spacing: 10,
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: ScreenUtil().setHeight(40),
                        width: ScreenUtil().setWidth(47),
                        decoration: BoxDecoration(
                            color: AppColor.black,
                            borderRadius: BorderRadius.circular(30)),
                        child: Image.asset(AppImage.essential),
                      ),
                      const Text('Essential')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
