import 'package:get/get.dart';

import 'controller.dart';

class ConfirmationBinding implements Bindings {
  @override
  void dependencies() {
    //Get.lazyPut<ConfirmationController>(() => ConfirmationController());
    Get.put<ConfirmationController>(ConfirmationController());
  }
}
