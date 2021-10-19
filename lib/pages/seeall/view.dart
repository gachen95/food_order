import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/common/values/values.dart';
import 'package:food_order/common/widgets/menu/index.dart';
import 'package:food_order/routes/app_pages.dart';
import 'package:get/get.dart';

import 'controller.dart';

class SeeAllPage extends GetView<SeeAllController> {
  Widget _buildBackground() {
    return SizedBox(
      //width: ScreenUtil().setWidth(375),
      //height: ScreenUtil().setHeight(812),
      width: 375.w,
      height: 330.h,
      child: Image.asset(
        "assets/images/pizza/top_bg.png",
        fit: BoxFit.none,
      ),
    );
  }

  Stack _buildHeader() {
    return Stack(children: <Widget>[
      _buildBackground(),
      Positioned(top: 59.h, left: 15.w, child: SmallMenu("menu", "", "")),
      Positioned(
        top: 73.h,
        left: 150.w,
        child: Text(
          'PIZZA',
          style: TextStyle(
            fontFamily: "Helvetica",
            fontWeight: FontWeight.normal,
            fontSize: 26.sp,
            letterSpacing: 1.61.sp,
            color: new Color(0xffFFFFFF),
          ),
        ),
      ),
      Positioned(top: 59.h, right: 15.w, child: SmallMenu("basket", "", "")),
    ]);
  }

  SizedBox _buildPizzaButton(String image, String title, String starLevel, String lPrice, String mPrice) {
    return SizedBox(
        // margin: EdgeInsets.only(top: (200.0).h), // 顶部系统栏 44px
        width: 180.w,
        height: 255.h,
        child: GestureDetector(
          child: Card(
              elevation: 6,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(children: <Widget>[
                SizedBox(
                  height: 10.h,
                ),
                Image.asset(
                  "assets/images/seeall/$image.png",
                  width: 122.w,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: "Helvetica",
                    fontWeight: FontWeight.normal,
                    fontSize: 16.sp,
                    letterSpacing: 1.26.sp,
                    //color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                  Icon(
                    Icons.star,
                    size: 14.w,
                    color: new Color(0xffFFD93F),
                  ),
                  Icon(Icons.star, size: 14.w, color: new Color(0xffFFD93F)),
                  Icon(Icons.star, size: 14.w, color: new Color(0xffFFD93F)),
                  Icon(Icons.star, size: 14.w, color: new Color(0xffFFD93F)),
                  Icon(Icons.star, size: 14.w, color: new Color(0xffE8E8E8)),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(starLevel,
                      style: TextStyle(
                        fontFamily: "Helvetica",
                        fontWeight: FontWeight.normal,
                        fontSize: 10.sp,
                        letterSpacing: 0.34.sp,
                      ))
                ]),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "(378 Reviews)",
                  style: TextStyle(
                      fontFamily: "Helvetica",
                      fontWeight: FontWeight.normal,
                      fontSize: 10.sp,
                      letterSpacing: 0.46.sp,
                      color: new Color(0xffAAAAAA)),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                  Text('Size L',
                      style: TextStyle(
                        fontFamily: "Helvetica",
                        fontWeight: FontWeight.normal,
                        fontSize: 12.sp,
                        letterSpacing: 0.64.sp,
                        color: new Color(0xff706E7B),
                      )),
                  SizedBox(
                    width: 55.w,
                  ),
                  Text(lPrice,
                      style: TextStyle(
                        fontFamily: "Helvetica",
                        fontWeight: FontWeight.normal,
                        fontSize: 12.sp,
                        letterSpacing: 0.64.sp,
                        color: new Color(0xff706E7B),
                      ))
                ]),
                SizedBox(
                  height: 8.h,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                  Text('Size M',
                      style: TextStyle(
                        fontFamily: "Helvetica",
                        fontWeight: FontWeight.normal,
                        fontSize: 12.sp,
                        letterSpacing: 0.64.sp,
                        color: new Color(0xff706E7B),
                      )),
                  SizedBox(
                    width: 55.w,
                  ),
                  Text(mPrice,
                      style: TextStyle(
                        fontFamily: "Helvetica",
                        fontWeight: FontWeight.normal,
                        fontSize: 12.sp,
                        letterSpacing: 0.64.sp,
                        color: new Color(0xff706E7B),
                      ))
                ]),
              ])),
          onTap: () {
            print("Order now ....");
            Get.offAndToNamed(AppRoutes.BOOKING);
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.white,
        body: SizedBox(
            width: 375.w,
            //height: 812.h,
            child: Stack(children: <Widget>[
              _buildHeader(),
              //Positioned(top: 59.h, child:

              Container(
                  margin: EdgeInsets.only(top: (150.0).h),
                  child:
                      // Expanded(
                      //   child:
                      SingleChildScrollView(
                          child: Column(children: <Widget>[
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                      _buildPizzaButton('pizza-supreme-special', 'Supreme Special', "4.5", "\$18.30", "\$14.60"),
                      _buildPizzaButton('pizza-moonlight', 'Moonlight', "4.5", "\$18.30", "\$14.60"),
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                      _buildPizzaButton('pizza-supreme-special', 'Supreme Special', "4.5", "\$18.30", "\$14.60"),
                      _buildPizzaButton('pizza-moonlight', 'Moonlight', "4.5", "\$18.30", "\$14.60"),
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                      _buildPizzaButton('pizza-supreme-special', 'Supreme Special', "4.5", "\$18.30", "\$14.60"),
                      _buildPizzaButton('pizza-moonlight', 'Moonlight', "4.5", "\$18.30", "\$14.60"),
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                      _buildPizzaButton('pizza-supreme-special', 'Supreme Special', "4.5", "\$18.30", "\$14.60"),
                      _buildPizzaButton('pizza-moonlight', 'Moonlight', "4.5", "\$18.30", "\$14.60"),
                    ]),
                  ])))
            ])));
  }
}
