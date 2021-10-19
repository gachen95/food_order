import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/common/values/values.dart';
import 'package:food_order/common/widgets/custom_swiper/index.dart';
import 'package:food_order/common/widgets/menu/index.dart';
import 'package:food_order/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'controller.dart';

class PizzaPage extends GetView<PizzaController> {
  final swipController = PageController(viewportFraction: 0.98, keepPage: true);

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

  Widget _buildBackgroundGradient() {
    return Container(
        width: 375.w,
        height: 574.h,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color.fromARGB(0, 0, 0, 0), Color.fromARGB(155, 0, 0, 0)])));
  }

  Widget _buildSwipperItem() {
    return Container(
        //margin: EdgeInsets.only(top: (135.0).h), // 顶部系统栏 44px

        /// width: 330.w,
        /// height: 330.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/pizza/pizza_slide_1.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Stack(children: <Widget>[
          // Image.asset(
          //   'assets/images/pizza/pizza_slide_1.png',
          //   //width: 400.w,
          //   //fit: BoxFit.fitWidth,
          // ),
          Positioned(top: 220.h, left: 24.w, child: _buildSwiperItemButton())
        ]));
  }

  SizedBox _buildSwiperItemButton() {
    return SizedBox(
        // margin: EdgeInsets.only(top: (200.0).h), // 顶部系统栏 44px
        width: 320.w,
        height: 105.h,
        child: Card(
            elevation: 6,
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(children: <Widget>[
              Container(
                  width: 231.40.w,
                  height: 105.h,
                  //color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                    Text(
                      "Seafood Pesto",
                      style: TextStyle(
                        fontFamily: "Helvetica",
                        fontWeight: FontWeight.normal,
                        fontSize: 18.sp,
                        letterSpacing: 1.41.sp,
                      ),
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Row(children: <Widget>[
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
                      Text(
                        "4.5",
                        style: TextStyle(
                            fontFamily: "Helvetica",
                            fontWeight: FontWeight.normal,
                            fontSize: 10.sp,
                            letterSpacing: 0.34.sp,
                            color: new Color(0xffFFD93F)),
                      ),
                      SizedBox(
                        width: 15.w,
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
                    ]),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(children: <Widget>[
                      Image.asset(
                        'assets/images/pizza/dish.png',
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "pizza",
                        style: TextStyle(
                            fontFamily: "Helvetica",
                            fontWeight: FontWeight.normal,
                            fontSize: 10.sp,
                            letterSpacing: 0.76.sp,
                            color: new Color(0xff706E7B)),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Icon(Icons.alarm, size: 14.w, color: new Color(0xffE8E8E8)),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "20 mins",
                        style: TextStyle(
                            fontFamily: "Helvetica",
                            fontWeight: FontWeight.normal,
                            fontSize: 10.sp,
                            letterSpacing: 0.76.sp,
                            color: new Color(0xff706E7B)),
                      ),
                    ]),
                  ])),
              GestureDetector(
                child: Container(
                    // margin: EdgeInsets.only(top: (200.0).h), // 顶部系统栏 44px
                    width: 80.w,
                    height: 105.h,
                    decoration: const BoxDecoration(
                      //borderRadius: BorderRadius.circular(10),
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
                      color: Colors.red,
                      // boxShadow: [
                      //   BoxShadow(color: Colors.green, spreadRadius: 3),
                      // ],
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'ORDER',
                            style: TextStyle(
                              fontFamily: "Helvetica",
                              fontWeight: FontWeight.normal,
                              fontSize: 12.sp,
                              letterSpacing: 0.55.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            'NOW',
                            style: TextStyle(
                              fontFamily: "Helvetica",
                              fontWeight: FontWeight.normal,
                              fontSize: 12.sp,
                              letterSpacing: 0.55.sp,
                              color: Colors.white,
                            ),
                          ),
                        ])),
                onTap: () {
                  print("Order now ....");
                  Get.offAndToNamed(AppRoutes.BOOKING);
                },
              )
            ])));
  }

  Widget _buildSwipper() {
    final pages = [
      _buildSwipperItem(),
      _buildSwipperItem(),
      _buildSwipperItem(),
      _buildSwipperItem(),
      _buildSwipperItem(),
      _buildSwipperItem()
    ];
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
      SizedBox(height: 135.h),
      SizedBox(
        //width: 930.w,
        height: 380.h,
        child: PageView.builder(
          controller: swipController,
          // itemCount: pages.length,
          itemBuilder: (_, index) {
            return pages[index % pages.length];
          },
        ),
      ),
      // SizedBox(
      //   height: 0.h,
      // ),
      SmoothPageIndicator(
        controller: swipController,
        count: pages.length,
        effect: ExpandingDotsEffect(
          dotHeight: 8,
          dotWidth: 8,
          activeDotColor: const Color(0xffE5293E),
          dotColor: const Color(0xffE5293E),
          //paintStyle:  PaintingStyle.stroke,

          // strokeWidth: 5,
        ),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.white,
        body: Container(
            width: 375.w,
            //height: 812.h,
            child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _buildHeader(),
                  Divider(
                    thickness: 2.h,
                    color: Color(0xFFE4E4E4),
                    indent: 20.w,
                    endIndent: 20.w,
                  ),
                  SizedBox(height: 10.h),
                  _buildPopular(),
                  SizedBox(height: 10.h),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: <Widget>[
                    _buildPizzaButton('pizza_fresca', 'Tropical Storm',
                        'Cheesy mayo sauce and mozzarella, tomatoes, green pepper, onio', "5", "pizza", "15 mins"),
                    _buildPizzaButton(
                        'pizza_ocean',
                        'Ocean Delight',
                        'Squid, clams, crab stick, pineapple, Cheesy mayo sauce and mozzarella',
                        "5",
                        "pizza",
                        "20 mins"),
                    _buildPizzaButton('pizza_hawaii', 'Hawaiian Paradise',
                        'Ham, pineapple, Mozzarella cheese and tomato sauce', "5", "pizza", "20 mins"),
                    _buildPizzaButton('pizza_supreme', 'Supreme',
                        'Cheesy mayo sauce and mozzarella, tomatoes, green pepper, onio', "5", "pizza", "20 mins"),
                    SizedBox(
                      height: 12.h,
                    ),
                    ElevatedButton.icon(
                      //style: style,

                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(210.w, 35.h),
                        primary: Colors.red, // background
                        onPrimary: Colors.white, // foreground
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                        //padding: EdgeInsets.all(10.0),
                      ),
                      onPressed: () {
                        //Get.offAndToNamed("/menu");
                      },
                      label: Icon(Icons.chevron_right_outlined),
                      icon: Text(
                        'CREATE YOUR OWN',
                        style: TextStyle(
                          fontFamily: "Helvetica",
                          fontWeight: FontWeight.normal,
                          fontSize: 14.sp,
                          letterSpacing: 0.33.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                  ]))),
                ])));
  }

  SizedBox _buildPizzaButton(
      String image, String title, String description, String starLevel, String kind, String waitTime) {
    return SizedBox(
        // margin: EdgeInsets.only(top: (200.0).h), // 顶部系统栏 44px
        width: 330.w,
        height: 110.h,
        child: GestureDetector(
          child: Card(
              elevation: 6,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(children: <Widget>[
                SizedBox(
                  width: 10.w,
                ),
                Image.asset(
                  "assets/images/pizza/$image.png",
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                            fontFamily: "Helvetica",
                            fontWeight: FontWeight.normal,
                            fontSize: 12.sp,
                            letterSpacing: 0.56.sp,
                            //color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 75.w,
                        ),
                        Icon(Icons.star, size: 14.w, color: new Color(0xffFFD93F)),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          starLevel,
                          style: TextStyle(
                              fontFamily: "Helvetica",
                              fontWeight: FontWeight.normal,
                              fontSize: 10.sp,
                              letterSpacing: 0.34.sp,
                              color: new Color(0xffFFD93F)),
                        ),
                      ]),
                      SizedBox(
                        height: 6.h,
                      ),
                      SizedBox(
                          height: 35,
                          width: 200,
                          child: Text(
                            description,
                            maxLines: 3,
                            style: TextStyle(
                                fontFamily: "Helvetica",
                                fontWeight: FontWeight.normal,
                                fontSize: 10.sp,
                                letterSpacing: 0.56.sp,
                                color: new Color(0xff706E7B)),
                          )),
                      Row(children: <Widget>[
                        Image.asset(
                          'assets/images/pizza/dish.png',
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          kind,
                          style: TextStyle(
                              fontFamily: "Helvetica",
                              fontWeight: FontWeight.normal,
                              fontSize: 10.sp,
                              letterSpacing: 0.76.sp,
                              color: new Color(0xff706E7B)),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Icon(Icons.alarm, size: 14.w, color: new Color(0xffE8E8E8)),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          waitTime,
                          style: TextStyle(
                              fontFamily: "Helvetica",
                              fontWeight: FontWeight.normal,
                              fontSize: 10.sp,
                              letterSpacing: 0.76.sp,
                              color: new Color(0xff706E7B)),
                        ),
                      ]),
                    ])
              ])),
          onTap: () {
            print("Order now ....");
            Get.offAndToNamed(AppRoutes.BOOKING);
          },
        ));
  }

  Row _buildPopular() {
    return Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: 20.w),
          Text(
            'Popular',
            style: TextStyle(
              fontFamily: "Helvetica",
              fontWeight: FontWeight.normal,
              fontSize: 16.sp,
              letterSpacing: 0.74.sp,
              //color: Colors.white,
            ),
          ),
          SizedBox(width: 10.w),
          Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF0B2031),
            ),
          ),
          SizedBox(width: 10.w),
          Text(
            "18 dishes",
            style: TextStyle(
                fontFamily: "Helvetica",
                fontWeight: FontWeight.normal,
                fontSize: 10.sp,
                letterSpacing: 0.76.sp,
                color: new Color(0xff706E7B)),
          ),
          SizedBox(width: 120.w),
          TextButton.icon(
            icon: Text(
              "Sell All",
              style: TextStyle(
                  fontFamily: "Helvetica",
                  fontWeight: FontWeight.normal,
                  fontSize: 12.sp,
                  letterSpacing: 0.56.sp,
                  color: new Color(0xffE5293E)),
            ),
            label: Icon(Icons.chevron_right_outlined, size: 14.w, color: new Color(0xffE5293E)),
            onPressed: () {
              Get.offAndToNamed(AppRoutes.SEEALL);
            },
          )

          //SizedBox(width: 10.w),
        ]);
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
      _buildSwipper(),
    ]);
  }
}
