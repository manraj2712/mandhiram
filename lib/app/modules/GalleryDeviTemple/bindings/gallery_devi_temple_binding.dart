import 'package:get/get.dart';

import '../controllers/gallery_devi_temple_controller.dart';

class GalleryDeviTempleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GalleryDeviTempleController>(
      () => GalleryDeviTempleController(),
    );
  }
}
