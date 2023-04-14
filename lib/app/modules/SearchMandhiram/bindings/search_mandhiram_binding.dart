import 'package:get/get.dart';

import '../controllers/search_mandhiram_controller.dart';

class SearchMandhiramBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchMandhiramController>(
      () => SearchMandhiramController(),
    );
  }
}
