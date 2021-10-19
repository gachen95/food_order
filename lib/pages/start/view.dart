import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/common/values/values.dart';
import 'package:get/get.dart';

import 'controller.dart';

class StartPage extends GetView<StartController> {
  Widget _buildBackground() {
    return SizedBox(
      //width: ScreenUtil().setWidth(375),
      //height: ScreenUtil().setHeight(812),
      width: 375.w,
      height: 812.h,
      child: Image.asset(
        "assets/images/start/start_bg.png",
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
                colors: [Color.fromARGB(0, 0, 0, 0),Color.fromARGB(155, 0, 0, 0)])));
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.white,
        body: SizedBox(
            width: 375.w,
            height: 812.h,
            child: Stack(children: <Widget>[

              _buildBackground(),
              Positioned(top: 238.h, left: 0.w, child: _buildBackgroundGradient()),
              Positioned(top: 633.h, left: 30.w, child: _buildTitleAndStart()),
            ])));
  }

  Column _buildTitleAndStart() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Restaurant",
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Helvetica",
                fontSize: 40.sp,
                letterSpacing: 1.37.sp,
              )),
          SizedBox(
            height: 12.h,
          ),
          Text("cheeza pizza",
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Helvetica",
                //fontWeight: FontWeight.bold,
                fontSize: 27.sp,
                letterSpacing: 0.63.sp,
              )),
          SizedBox(
            height: 12.h,
          ),
          ElevatedButton.icon(
            //style: style,

            style: ElevatedButton.styleFrom(
              fixedSize: Size(180.w, 35.h),
              primary: Colors.red, // background
              onPrimary: Colors.white, // foreground
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
              //padding: EdgeInsets.all(10.0),
            ),
            onPressed: () {
              Get.offAndToNamed("/menu");
            },
            label: Icon(Icons.chevron_right_outlined),
            icon: Text(
              'START ORDER',
              style: TextStyle(
                fontFamily: "Helvetica",
                fontWeight: FontWeight.normal,
                fontSize: 14.sp,
                letterSpacing: 0.33.sp,
              ),
            ),
          ),
        ]);
  }
}
