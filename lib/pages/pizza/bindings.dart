import 'package:get/get.dart';

import 'controller.dart';

class PizzaBinding implements Bindings {
  @override
  void dependencies() {
    //Get.lazyPut<PizzaController>(() => PizzaController());
    Get.put<PizzaController>(PizzaController());
  }
}
