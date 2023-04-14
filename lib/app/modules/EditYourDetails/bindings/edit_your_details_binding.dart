import 'package:get/get.dart';

import '../controllers/edit_your_details_controller.dart';

class EditYourDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditYourDetailsController>(
      () => EditYourDetailsController(),
    );
  }
}
