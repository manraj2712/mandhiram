import 'package:get/get.dart';

import '../controllers/daily_infomation_controller.dart';

class DailyInfomationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DailyInfomationController>(
      () => DailyInfomationController(),
    );
  }
}
