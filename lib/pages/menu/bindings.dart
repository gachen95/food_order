import 'package:get/get.dart';

import 'controller.dart';

class MenuBinding implements Bindings {
  @override
  void dependencies() {
    //Get.lazyPut<MenuController>(() => MenuController());
    Get.put<MenuController>(MenuController());
  }
}
