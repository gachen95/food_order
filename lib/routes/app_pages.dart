import 'package:food_order/pages/booking/index.dart';
import 'package:food_order/pages/checkout/index.dart';
import 'package:food_order/pages/confirmation/fail/index.dart';
import 'package:food_order/pages/confirmation/index.dart';
import 'package:food_order/pages/confirmation/pin/index.dart';
import 'package:food_order/pages/confirmation/success/index.dart';
import 'package:food_order/pages/menu/index.dart';
import 'package:food_order/pages/pizza/index.dart';
import 'package:food_order/pages/seeall/index.dart';
import 'package:food_order/pages/start/index.dart';
import 'package:get/get.dart';


part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.START;

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.START,
      page: () => StartPage(),
      binding: StartBinding(),
      // middlewares: [
      //   RouteStartMiddleware(priority: 1),
      // ],
    ),
    GetPage(
      name: AppRoutes.MENU,
      page: () => MenuPage(),
      binding: MenuBinding(),
    ),
    GetPage(
      name: AppRoutes.PIZZA,
      page: () => PizzaPage(),
      binding: PizzaBinding(),
    ),
    GetPage(
      name: AppRoutes.SEEALL,
      page: () => SeeAllPage(),
      binding: SeeAllBinding(),
    ),
    GetPage(
      name: AppRoutes.BOOKING,
      page: () => BookingPage(),
      binding: BookingBinding(),
    ),

    GetPage(
      name: AppRoutes.CHECKOUT,
      page: () => CheckoutPage(),
      binding: CheckoutBinding(),
    ),
    GetPage(
      name: AppRoutes.CONFIRMATION,
      page: () => ConfirmationPage(),
      binding: ConfirmationBinding(),
      children: [
        GetPage(
          name: AppRoutes.PIN,
          page: () => PinPage(),
          binding: PinBinding(),
        ),
        GetPage(
          name: AppRoutes.PIN_SUCCESS,
          page: () => PinSuccessPage(),
          binding: PinSuccessBinding(),
        ),
        GetPage(
          name: AppRoutes.PIN_FAIL,
          page: () => PinFailPage(),
          binding: PinFailBinding(),
        ),
      ]
    ),
  ];
}
