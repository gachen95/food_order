import 'package:get/get.dart';

import 'controller.dart';

class PinSuccessBinding implements Bindings {
  @override
  void dependencies() {
    //Get.lazyPut<PinSuccessController>(() => PinSuccessController());
    Get.put<PinSuccessController>(PinSuccessController());
  }
}
