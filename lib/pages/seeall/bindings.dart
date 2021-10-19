import 'package:get/get.dart';

import 'controller.dart';

class SeeAllBinding implements Bindings {
  @override
  void dependencies() {
    //Get.lazyPut<SeeAllController>(() => SeeAllController());
    Get.put<SeeAllController>(SeeAllController());
  }
}
