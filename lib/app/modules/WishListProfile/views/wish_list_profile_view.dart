import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';
import 'package:mandhiram/app/modules/DeviTempleDetails/views/devi_temple_details_view.dart';
import 'package:mandhiram/app/modules/Notification/views/notification_view.dart';

import '../controllers/wish_list_profile_controller.dart';

class WishListProfileView extends GetView<WishListProfileController> {
  const WishListProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(WishListProfileController());
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
                'WISHLIST',
                style: TextStyle(
                    fontSize: 20,
                    color: AppColor.apcolor,
                    fontWeight: FontWeight.w500),
              ),
              const Text(
                'See your saved categories',
                style: TextStyle(fontSize: 15, color: Colors.black45),
              ),
            ],
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Get.to(const NotificationView());
              },
              child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  width: ScreenUtil().setWidth(75),
                  height: ScreenUtil().setHeight(43),
                  padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 195, 189, 189),
                    borderRadius:
                        BorderRadius.circular(ScreenUtil().setWidth(30)),
                  ),
                  child: Image.asset(AppImage.noti)),
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: buildList(),
            ),
          ),
        ));
  }

  customList(String img1, Widget icon1, String img2, Widget icon2,
      {void Function()? ontap}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Stack(
          children: [
            InkWell(
              onTap: () {
                Get.to(const DeviTempleDetailsView());
              },
              child: Image(
                  width: ScreenUtil().setWidth(190),
                  height: ScreenUtil().setHeight(293),
                  fit: BoxFit.fill,
                  image: AssetImage(img1)),
            ),
            Container(
                margin: EdgeInsets.only(
                    top: ScreenUtil().setHeight(17),
                    left: ScreenUtil().setWidth(120)),
                width: ScreenUtil().setWidth(55),
                height: ScreenUtil().setHeight(45),
                padding: EdgeInsets.all(ScreenUtil().setWidth(4)),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 195, 189, 189),
                  borderRadius:
                      BorderRadius.circular(ScreenUtil().setWidth(34)),
                ),
                child: Center(
                  child: icon1,
                )),
          ],
        ),
        InkWell(
          onTap: () {
            Get.to(const DeviTempleDetailsView());
          },
          child: Stack(
            children: [
              Image(
                  width: ScreenUtil().setWidth(190),
                  height: ScreenUtil().setHeight(293),
                  fit: BoxFit.fill,
                  image: AssetImage(img2)),
              Container(
                  margin: EdgeInsets.only(
                      top: ScreenUtil().setHeight(17),
                      left: ScreenUtil().setWidth(120)),
                  width: ScreenUtil().setWidth(55),
                  height: ScreenUtil().setHeight(45),
                  padding: EdgeInsets.all(ScreenUtil().setWidth(4)),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 195, 189, 189),
                    borderRadius:
                        BorderRadius.circular(ScreenUtil().setWidth(34)),
                  ),
                  child: Center(
                    child: icon2,
                  )),
            ],
          ),
        ),
      ],
    );
  }

  buildList() {
    return SizedBox(
      height: ScreenUtil().setHeight(1230),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          customList(
            AppImage.h2,
            const Icon(
              Icons.delete_forever,
              color: Colors.pink,
            ),
            AppImage.h3,
            const Icon(
              Icons.delete_forever,
              color: Colors.pink,
            ),
          ),
          customList(
            AppImage.h4,
            const Icon(
              Icons.delete_forever,
              color: Colors.pink,
            ),
            AppImage.h7,
            const Icon(
              Icons.delete_forever,
              color: Colors.pink,
            ),
          ),
          customList(
            AppImage.h6,
            const Icon(
              Icons.delete_forever,
              color: Colors.pink,
            ),
            AppImage.h5,
            const Icon(
              Icons.delete_forever,
              color: Colors.pink,
            ),
          ),
          customList(
            AppImage.h8,
            const Icon(
              Icons.delete_forever,
              color: Colors.pink,
            ),
            AppImage.h9,
            const Icon(
              Icons.delete_forever,
              color: Colors.pink,
            ),
          )
        ],
      ),
    );
  }
}
