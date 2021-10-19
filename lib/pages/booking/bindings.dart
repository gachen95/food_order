import 'package:get/get.dart';

import 'controller.dart';

class BookingBinding implements Bindings {
  @override
  void dependencies() {
    //Get.lazyPut<BookingController>(() => BookingController());
    Get.put<BookingController>(BookingController());
  }
}
