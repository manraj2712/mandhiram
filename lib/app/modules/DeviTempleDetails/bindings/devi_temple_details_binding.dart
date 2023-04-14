import 'package:get/get.dart';

import '../controllers/devi_temple_details_controller.dart';

class DeviTempleDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeviTempleDetailsController>(
      () => DeviTempleDetailsController(),
    );
  }
}
