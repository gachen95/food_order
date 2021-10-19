import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/common/values/values.dart';
import 'package:food_order/pages/menubar/menubar.dart';
import 'package:food_order/routes/app_pages.dart';
import 'package:get/get.dart';

import 'controller.dart';

class MenuPage extends GetView<MenuController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey(); // Create a key

  Widget _buildBackgroundImage(String imageName) {
    return Image.asset(
      "assets/images/menu/$imageName.png",
      fit: BoxFit.none,
      width: 375.w,
      height: 250.h,
    );
  }

  Widget _buildBackgroundGradient() {
    return Container(
        width: 375.w,
        height: 250.h,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color.fromARGB(9, 0, 0, 0), Color.fromARGB(145, 0, 0, 0)])));
  }

  Widget _buildBigMenu(String imageName, String menuName, String path) {
    return GestureDetector(
        onTap: () {
          Get.toNamed(path);
        },
        child: SizedBox(
            width: 375.w,
            height: 250.h,
            child: Stack(children: <Widget>[
              Positioned(top: 0.h, left: 0.w, child: _buildBackgroundImage(imageName)),
              Positioned(top: 0.h, left: 0.w, child: _buildBackgroundGradient()),
              Positioned(
                  top: 196.h,
                  right: 30.w,
                  child: Text(menuName,
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Helvetica",
                        //fontWeight: FontWeight.bold,
                        fontSize: 26.sp,
                        letterSpacing: 1.61.sp,
                      ))),
            ])));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey, // Assign the key to Scaffold.
        //backgroundColor: Colors.white,
        body: Stack(children: <Widget>[
      SingleChildScrollView(
          child: Column(children: <Widget>[
        _buildBigMenu("pizza", "Pizza", AppRoutes.PIZZA),
        _buildBigMenu("pasta", "Pasta", AppRoutes.PIZZA),
        _buildBigMenu("salad", "Salad", AppRoutes.PIZZA),
        _buildBigMenu("dessert", "Dessert", AppRoutes.PIZZA),
        _buildBigMenu("beverage", "Beverage", AppRoutes.PIZZA),
      ])),
      Positioned(top: 59.h, left: 15.w, child: _buildMenuButton(context, "menu")),
      Positioned(top: 59.h, right: 15.w, child: _buildMenuButton(context, "basket")),
    ]),
        //drawer: createDrawer(context));
    drawer: MenuBar());
  }

  Widget _buildMenuButton(BuildContext context, String imageName) {
    return Material(
        color: Colors.transparent,
        shape: CircleBorder(),
        clipBehavior: Clip.hardEdge,
        child: Ink(
            decoration: const ShapeDecoration(
              color: Colors.red,
              shape: CircleBorder(),
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              //constraints: const BoxConstraints(),
              //splashRadius: 40,
              icon: Image.asset(
                "assets/images/menu/$imageName.png",
                //fit: BoxFit.none,
              ),
              onPressed: () {
                if (imageName == 'menu') {
                  //Scaffold.of(context).openDrawer();
                  _scaffoldKey.currentState!.openDrawer(); // <-- Opens drawer
                }
              },
            )));
  }
}
