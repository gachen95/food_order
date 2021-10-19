import 'package:get/get.dart';

import 'controller.dart';

class PinBinding implements Bindings {
  @override
  void dependencies() {
    //Get.lazyPut<PinController>(() => PinController());
    Get.put<PinController>(PinController());
  }
}
