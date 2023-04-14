import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';
import 'package:mandhiram/app/modules/DailyInfomation/views/daily_infomation_view.dart';

import '../controllers/full_screen_image_controller.dart';

class FullScreenImageView extends GetView<FullScreenImageController> {
  const FullScreenImageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(FullScreenImageController());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.keyboard_arrow_left,
              color: AppColor.black,
              size: 28,
            ),
          ),
          title: Wrap(
            direction: Axis.vertical,
            children: [
              Text(
                'VAISHNO DEVI TEMPLE',
                style: TextStyle(
                    fontSize: 19,
                    color: AppColor.apcolor,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                '20+ Images',
                style: TextStyle(fontSize: 15, color: Colors.black45),
              ),
            ],
          ),
          actions: [
            InkWell(
              onTap: () {
                Get.to(const DailyInfomationView());
              },
              child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  width: ScreenUtil().setWidth(106),
                  height: ScreenUtil().setHeight(43),
                  padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
                  decoration: BoxDecoration(
                    color: AppColor.black,
                    borderRadius:
                        BorderRadius.circular(ScreenUtil().setWidth(34)),
                  ),
                  child: const Center(child: Text('DAILY INFO'))),
            ),
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 19),
            height: ScreenUtil().setHeight(750),
            child: Column(children: <Widget>[
              Flexible(
                flex: 1,
                child: PageView.builder(
                  controller: controller.ccontroller,
                  itemCount: controller.samplePages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return controller.samplePages[index];
                  },
                ),
              ),
              Obx(
                () => Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.keyboard_arrow_left),
                        onPressed: () {
                          controller.ccontroller.previousPage(
                              duration: FullScreenImageController.kDuration,
                              curve: FullScreenImageController.kCurve);
                          if (controller.count.value > 1) {
                            controller.count.value--;
                          }
                        },
                      ),
                      Container(
                        height: ScreenUtil().setHeight(70),
                        width: ScreenUtil().setWidth(120),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: ScreenUtil().setHeight(50),
                              width: ScreenUtil().setWidth(60),
                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                  child: Text('${controller.count.value}')),
                            ),
                            Center(
                                child: Center(
                                    child: Text(
                              '12',
                              style: TextStyle(
                                  color: AppColor.white,
                                  fontWeight: FontWeight.bold),
                            )))
                          ],
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.keyboard_arrow_right),
                        onPressed: () {
                          controller.ccontroller.nextPage(
                              duration: FullScreenImageController.kDuration,
                              curve: FullScreenImageController.kCurve);
                          if (controller.count.value < 12) {
                            controller.count.value++;
                          }
                        },
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        )));
  }
}
