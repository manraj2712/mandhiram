import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';

class DailyInfomationController extends GetxController {
  // RxInt count = 0.obs;
  var chatController = TextEditingController();
  var isOnPress1 = true.obs;
  var isOnPress2 = true.obs;
  RxBool offON = false.obs;
  var pageController;
  @override
  void onInit() {
    pageController = PageController(
      initialPage: 0,
      viewportFraction: 1,
    );
    super.onInit();
  }

  void commentChat() {
    Get.bottomSheet(Container(
      width: Get.width,
      height: Get.height / 1.2,
      color: Colors.white,
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            const SizedBox(height: 16),
            const Text(
              "Comments",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const Divider(thickness: 1),
            ListTile(
              tileColor: AppColor.apcolor,
              title: const Text('karan'),
              leading: CircleAvatar(
                backgroundColor: AppColor.apcolor,
                radius: 20,
                backgroundImage: AssetImage(AppImage.devi1),
              ),
              subtitle: const Text('Nice !!'),
            ),
            const Divider(thickness: 1),
            ListTile(
              tileColor: AppColor.apcolor,
              title: const Text('Suraj'),
              leading: CircleAvatar(
                backgroundColor: AppColor.apcolor,
                radius: 20,
                backgroundImage: AssetImage(AppImage.cont2),
              ),
              subtitle: const Text('Beautiful pics !!'),
            ),
            const Divider(thickness: 1),
            Container(
              height: ScreenUtil().setHeight(200),
              // margin: EdgeInsets.only(top: 160),
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                controller: chatController,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 5),
                    border: InputBorder.none,
                    hintText: "Enter Comment....",
                    suffixIcon: InkWell(
                      onTap: () {
                        chatController.clear();
                      },
                      child: Icon(
                        Icons.send,
                        color: AppColor.apcolor,
                      ),
                    ),
                    hintStyle: const TextStyle(color: Colors.grey)),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
