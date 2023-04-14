import 'package:get/get.dart';
import 'package:mandhiram/app/modules/Wishlist/controllers/Wishlist_controller.dart';


class WishlistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WishlistController>(
      () => WishlistController(),
    );
  }
}
