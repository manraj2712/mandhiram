import 'package:get/get.dart';

import '../controllers/delete_wishlist_controller.dart';

class DeleteWishlistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeleteWishlistController>(
      () => DeleteWishlistController(),
    );
  }
}
