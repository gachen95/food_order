import 'package:get/get.dart';

import 'controller.dart';

class PinFailBinding implements Bindings {
  @override
  void dependencies() {
    //Get.lazyPut<PinController>(() => PinController());
    Get.put<PinFailController>(PinFailController());
  }
}
