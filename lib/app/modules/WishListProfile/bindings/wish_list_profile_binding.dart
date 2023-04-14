import 'package:get/get.dart';

import '../controllers/wish_list_profile_controller.dart';

class WishListProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WishListProfileController>(
      () => WishListProfileController(),
    );
  }
}
