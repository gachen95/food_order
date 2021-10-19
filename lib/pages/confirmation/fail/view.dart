import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/common/values/values.dart';
import 'package:get/get.dart';

import 'controller.dart';

class PinFailPage extends GetView<PinFailController> {
  const PinFailPage({Key? key}) : super(key: key);

  Widget _buildBackground() {
    return SizedBox(
      //width: ScreenUtil().setWidth(375),
      //height: ScreenUtil().setHeight(812),
      width: 375.w,
      height: 186.h,
      child: Image.asset(
        "assets/images/checkout/header_bg.png",
        fit: BoxFit.none,
      ),
    );
  }

  Stack _buildHeader() {
    return Stack(children: <Widget>[
      _buildBackground(),
      Positioned(
        top: 58.h,
        left: 116.w,
        child: Text(
          'CHECK OUT',
          style: TextStyle(
            fontFamily: "Helvetica",
            fontWeight: FontWeight.normal,
            fontSize: 22.sp,
            letterSpacing: 1.36.sp,
            color: new Color(0xffFFFFFF),
          ),
        ),
      ),
      // https://github.com/Fliggy-Mobile/fdottedline
      Positioned(
          top: 90.h,
          left: 24.w,
          child: DottedLine(
            lineLength: 330.w,
            lineThickness: 0.5,
            dashLength: 10.0,
            dashColor: Colors.white,
            dashRadius: 0.0,
            dashGapLength: 6.0,
            dashGapColor: Colors.transparent,
            dashGapRadius: 0.0,
          )),

      Positioned(
        top: 107.h,
        left: 24.w,
        child: Text(
          'Date:',
          style: TextStyle(
            fontFamily: "Helvetica",
            fontWeight: FontWeight.normal,
            fontSize: 16.sp,
            letterSpacing: 1.36.sp,
            color: new Color(0xffFFFFFF),
          ),
        ),
      ),
      Positioned(
        top: 107.h,
        right: 24.w,
        child: Text(
          'Jul 27, 2018',
          style: TextStyle(
            fontFamily: "Helvetica",
            fontWeight: FontWeight.normal,
            fontSize: 16.sp,
            letterSpacing: 1.36.sp,
            color: new Color(0xffFFFFFF),
          ),
        ),
      ),
      Positioned(
        top: 137.h,
        left: 24.w,
        child: Text(
          'Total Bill:',
          style: TextStyle(
            fontFamily: "Helvetica",
            fontWeight: FontWeight.normal,
            fontSize: 16.sp,
            letterSpacing: 1.36.sp,
            color: new Color(0xffFFFFFF),
          ),
        ),
      ),
      Positioned(
        top: 137.h,
        right: 24.w,
        child: Text(
          '\$30.60',
          style: TextStyle(
            fontFamily: "Helvetica",
            fontWeight: FontWeight.normal,
            fontSize: 16.sp,
            letterSpacing: 1.36.sp,
            color: new Color(0xffFFFFFF),
          ),
        ),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF7F7F7),
        resizeToAvoidBottomInset: false,
        body: SizedBox(
            width: 375.w,
            //height: 812.h,
            child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _buildHeader(),
                  // SizedBox(
                  //   height: 20.h,
                  // ),

                  _buildPaymentInfo(),
                  Column(children: <Widget>[
                  _buildPinFailInfo(),
                  _buildPinFailInfoEx(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Divider(
                    thickness: 10.h,
                    color: Color(0xFFF7F7F7),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  _buildButtons(),])
                ])));
  }

  Widget _buildPaymentInfo() {
    return Container(
        margin: EdgeInsets.fromLTRB(20.w, 30.h, 20.w, 30.h),
        width: 375.w,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
          Image.asset(
            'assets/images/confirmation/visa_PNG30.png',
          ),
          Text(
            "1234 5678 9123 456",
            style: TextStyle(
                fontFamily: "HelveticaNeue",
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                letterSpacing: 0.46.sp,
                color: new Color(0xff0B2031)),
          ),
        ]));
  }

  Widget _buildPinFailInfo() {
    return Container(
        margin: EdgeInsets.fromLTRB(20.w, 50.h, 20.w, 0.h),
        width: 375.w,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          CircleAvatar(
            radius: 55,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child:  Transform.rotate(
                angle: 150, //set the angel
                child:  Icon(
                Icons.add,
                color: Colors.red,
                size: 60.0,
              )),
              //backgroundImage: AssetImage('images/batman.jpg'),
            ),
          )
        ]));
  }

  Widget _buildPinFailInfoEx() {
    return Container(
        margin: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 120.h),
        width: 375.w,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text(
            'Your confirmation is',
            style: TextStyle(
              fontFamily: "Helvetica",
              fontWeight: FontWeight.normal,
              fontSize: 18.sp,
              letterSpacing: 1.25.sp,
              color: Color(0xFFAAAAAA),
            ),
          ),
          SizedBox(height: 5.h,),
          Text(
            'unsuccessful',
            style: TextStyle(
              fontFamily: "Helvetica",
              fontWeight: FontWeight.normal,
              fontSize: 18.sp,
              letterSpacing: 1.25.sp,
              color: Color(0xFFAAAAAA),
            ),
          ),
        ]));
  }

  Widget _buildButtons() {
    return Column(children: <Widget>[
      // SizedBox(
      //   height: 20.h,
      // ),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(345.w, 50.h),
          primary: Colors.red, // background
          onPrimary: Colors.white, // foreground
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
          //padding: EdgeInsets.all(10.0),
        ),
        onPressed: () {
          //Get.toNamed(AppRoutes.PinFail);
        },
        child: Text(
          'TRY AGAIN',
          style: TextStyle(
            fontFamily: "Helvetica",
            fontWeight: FontWeight.normal,
            fontSize: 16.sp,
            letterSpacing: 1.25.sp,
          ),
        ),
      ),
      SizedBox(
        height: 20.h,
      ),
      OutlinedButton(
        onPressed: () {
          Get.back();
        },
        style: ElevatedButton.styleFrom(
          fixedSize: Size(345.w, 50.h),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
          //fixedSize: Size(160.w, 35.h),
        ),
        child: Text(
          'BACK',
          style: TextStyle(
            fontFamily: "Helvetica",
            fontWeight: FontWeight.normal,
            fontSize: 16.sp,
            letterSpacing: 1.25.sp,
            color: Color(0xff0B2031),
          ),
        ),
      ),
      SizedBox(
        height: 20.h,
      ),
    ]);
  }
}
