import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mandhiram/app/data/config/config.dart';
import 'package:mandhiram/app/modules/DeviTempleDetails/views/devi_temple_details_view.dart';
import 'package:mandhiram/app/modules/Notification/views/notification_view.dart';
import 'package:mandhiram/app/modules/SearchMandhiram/views/search_mandhiram_view.dart';
import 'package:mandhiram/app/modules/Wishlist/controllers/wishlist_controller.dart';

class WishlistView extends GetView<WishlistController> {
  const WishlistView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(WishlistController());
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
                    Get.to(const SearchMandhiramView());
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
                      child: Icon(
                        Icons.search,
                        color: AppColor.black,
                      )),
                ),
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
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: buildList(),
            ),
          ),
        ));
  }

  customList(String img1, Widget icon1, String img2, Widget icon2,
      {void Function()? ontap}) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      child: Row(
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
                    height: ScreenUtil().setHeight(260),
                    fit: BoxFit.fill,
                    image: AssetImage(img1)),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 12, left: 140),
                  width: ScreenUtil().setWidth(42),
                  height: ScreenUtil().setHeight(32),
                  padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
                  decoration: BoxDecoration(
                    color: const Color(0x7CF4F4F4),
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
                    height: ScreenUtil().setHeight(260),
                    fit: BoxFit.fill,
                    image: AssetImage(img2)),
                Container(
                    margin: const EdgeInsets.only(top: 12, left: 140),
                    width: ScreenUtil().setWidth(42),
                    height: ScreenUtil().setHeight(32),
                    padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
                    decoration: BoxDecoration(
                      color: const Color(0x7CF4F4F4),
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
      ),
    );
  }

  buildList() {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          customList(
            AppImage.h2,
            const Icon(
              Icons.delete,
              color: Color.fromRGBO(209, 31, 49, 1),
              size: 20,
            ),
            AppImage.h3,
            const Icon(Icons.delete,
                color: Color.fromRGBO(209, 31, 49, 1), size: 20),
          ),
          customList(
            AppImage.h4,
            const Icon(Icons.delete,
                color: Color.fromRGBO(209, 31, 49, 1), size: 20),
            AppImage.h7,
            const Icon(Icons.delete,
                color: Color.fromRGBO(209, 31, 49, 1), size: 20),
          ),
          customList(
            AppImage.h6,
            const Icon(Icons.delete,
                color: Color.fromRGBO(209, 31, 49, 1), size: 20),
            AppImage.h5,
            const Icon(Icons.delete,
                color: Color.fromRGBO(209, 31, 49, 1), size: 20),
          ),
          customList(
            AppImage.h8,
            const Icon(Icons.delete,
                color: Color.fromRGBO(209, 31, 49, 1), size: 20),
            AppImage.h9,
            const Icon(Icons.delete,
                color: Color.fromRGBO(209, 31, 49, 1), size: 20),
          )
        ],
      ),
    );
  }
}
