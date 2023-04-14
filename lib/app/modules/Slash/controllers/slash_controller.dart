import 'dart:async';

import 'package:get/get.dart';
import 'package:mandhiram/app/modules/Started/views/started_view.dart';

class SlashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(
      const Duration(seconds: 8),
      () => Get.offAll(
        const StartedView(),
      ),
    );
  }
}
