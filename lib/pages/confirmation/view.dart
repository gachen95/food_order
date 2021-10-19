import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/common/values/values.dart';
import 'package:food_order/routes/app_pages.dart';
import 'package:get/get.dart';

import 'controller.dart';

class ConfirmationPage extends GetView<ConfirmationController> {
  const ConfirmationPage({Key? key}) : super(key: key);

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
        body: SizedBox(
            width: 375.w,
            //height: 812.h,
            child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _buildHeader(),
                  SizedBox(
                    height: 20.h,
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: <Widget>[
                    _buildContactTitle(),
                    _buildContact(),
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
                    _buildPaymentInfoTitle(),
                    SizedBox(
                      height: 15.h,
                    ),
                    _buildPaymentChoice(),
                    SizedBox(
                      height: 25.h,
                    ),
                    _buildPaymentDetail(),
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
                    _buildOrderTitle(),
                    _buildOrderDetail(),
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
                    _buildButtons()
                  ]))),
                ])));
  }

  Widget _buildContactTitle() {
    return Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: 20.w),
          Container(
              height: 24,
              width: 24,
              alignment: Alignment.center,
              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black87
                  //border: Border.all(width: 1, color: Colors.red)
                  ),
              child: Text(
                "1",
                style: TextStyle(
                  fontFamily: "Helvetica",
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  letterSpacing: 0.74.sp,
                  color: Colors.white,
                ),
              )),
          SizedBox(width: 20.w),
          Text(
            "Contact Info",
            style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              letterSpacing: 1.14.sp,
              color: Colors.black87,
            ),
          ),
          SizedBox(width: 100.w),
          TextButton(
            child: Text(
              "Edit",
              style: TextStyle(
                  fontFamily: "HelveticaNeue",
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                  letterSpacing: 0.56.sp,
                  color: new Color(0xffE5293E)),
            ),
            onPressed: () {
              /// Get.offAndToNamed(AppRoutes.SEEALL);
            },
          )
        ]);
  }

  Widget _buildContact() {
    return Column(children: <Widget>[
      SizedBox(
        height: 15.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(width: 15.w),
        Text(
          "NAME",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xffAAAAAA)),
        ),
        SizedBox(width: 130.w),
        Text(
          "PHONE NUMBER",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xffAAAAAA)),
        ),
      ]),
      SizedBox(
        height: 10.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(width: 15.w),
        Text(
          "Alexandre Katherey",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xff0B2031)),
        ),
        SizedBox(width: 35.w),
        Text(
          "+78 1123 43439",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xff0B2031)),
        ),
      ]),
      SizedBox(
        height: 15.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(width: 15.w),
        Text(
          "EMAIL",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xffAAAAAA)),
        ),
      ]),
      SizedBox(
        height: 10.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(width: 15.w),
        Text(
          "alexandrekatherey@gmail.us.com",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xff0B2031)),
        ),
      ]),
      SizedBox(
        height: 15.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(width: 15.w),
        Text(
          "ADDRESS",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xffAAAAAA)),
        ),
      ]),
      SizedBox(
        height: 10.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(width: 15.w),
        SizedBox(
          width: 340,
          child: Text(
            "1783 High Street Thusdays, Vendt VMN 4780, New York",
            maxLines: 3,
            style: TextStyle(
                fontFamily: "HelveticaNeue",
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
                letterSpacing: 0.46.sp,
                color: new Color(0xff0B2031)),
          ),
        )
      ]),
    ]);
  }

  Widget _buildPaymentInfoTitle() {
    return Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: 20.w),
          Container(
              height: 24,
              width: 24,
              alignment: Alignment.center,
              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black87
                  //border: Border.all(width: 1, color: Colors.red)
                  ),
              child: Text(
                "2",
                style: TextStyle(
                  fontFamily: "Helvetica",
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  letterSpacing: 0.74.sp,
                  color: Colors.white,
                ),
              )),
          SizedBox(width: 20.w),
          Text(
            "Payment Info",
            style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              letterSpacing: 1.14.sp,
              color: Colors.black87,
            ),
          ),
          SizedBox(width: 80.w),
          TextButton(
            child: Text(
              "Edit",
              style: TextStyle(
                  fontFamily: "HelveticaNeue",
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                  letterSpacing: 0.56.sp,
                  color: new Color(0xffE5293E)),
            ),
            onPressed: () {
              /// Get.offAndToNamed(AppRoutes.SEEALL);
            },
          )
        ]);
  }

  Widget _buildPaymentChoice() {
    return
        //Stack(children: <Widget>[
        //SizedBox(height: 10.h,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
      Image.asset(
        'assets/images/confirmation/visa_PNG30.png',
      ),
      SizedBox(
        width: 200,
        child: Text(
          "You will need to confirm the payment after the formation of your order",
          maxLines: 3,
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xffAAAAAA)),
        ),
      )
    ]);
    // Positioned(
    //   top: 0.h,
    //   left: 145.w,
    //   child: Image.asset(
    //     'assets/images/booking/check.png',
    //   ),
    // ),
    //]);
  }

  Widget _buildPaymentDetail() {
    return Column(children: <Widget>[
      SizedBox(
        height: 0.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(width: 15.w),
        Text(
          "CARDHOLDER NAME",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xffAAAAAA)),
        ),
        SizedBox(width: 15.w),
        Text(
          "CARD NUMBER",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xffAAAAAA)),
        ),
      ]),
      SizedBox(
        height: 10.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(width: 15.w),
        Text(
          "Alexandre Katherey",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xff0B2031)),
        ),
        SizedBox(width: 28.w),
        Text(
          "1234 5678 9123 456",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xff0B2031)),
        ),
      ]),
      SizedBox(
        height: 15.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(width: 15.w),
        Text(
          "CVC",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xffAAAAAA)),
        ),
        SizedBox(width: 140.w),
        Text(
          "Expiration date",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xffAAAAAA)),
        ),
      ]),
      SizedBox(
        height: 10.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(width: 15.w),
        Text(
          "333",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xff0B2031)),
        ),
        SizedBox(width: 150.w),
        Text(
          "07/23",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xff0B2031)),
        ),
      ]),
    ]);
  }

  Widget _buildOrderTitle() {
    return Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: 20.w),
          Container(
              height: 24,
              width: 24,
              alignment: Alignment.center,
              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black87
                  //border: Border.all(width: 1, color: Colors.red)
                  ),
              child: Text(
                "3",
                style: TextStyle(
                  fontFamily: "Helvetica",
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  letterSpacing: 0.74.sp,
                  color: Colors.white,
                ),
              )),
          SizedBox(width: 20.w),
          Text(
            "Your Order",
            style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              letterSpacing: 1.14.sp,
              color: Colors.black87,
            ),
          ),
          SizedBox(width: 110.w),
          TextButton(
            child: Text(
              "Edit",
              style: TextStyle(
                  fontFamily: "HelveticaNeue",
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                  letterSpacing: 0.56.sp,
                  color: new Color(0xffE5293E)),
            ),
            onPressed: () {
              /// Get.offAndToNamed(AppRoutes.SEEALL);
            },
          )
        ]);
  }

  Widget _buildOrderDetail() {
    return Column(children: <Widget>[
      SizedBox(
        height: 0.h,
      ),
      _buildOrderDetailRow1(),
      Divider(color: Color(0xFFE2E2E2 ),),
      SizedBox(
        height: 10.h,
      ),
      _buildOrderDetailRow2(),
      Divider(color: Color(0xFFE2E2E2 ),),
      SizedBox(
        height: 10.h,
      ),
      _buildOrderDetailRow3(),
      SizedBox(
        height: 30.h,
      ),
      DottedLine(
        lineLength: 330.w,
        lineThickness: 0.5,
        dashLength: 10.0,
        dashColor: Color(0xff0B2031),
        dashRadius: 0.0,
        dashGapLength: 6.0,
        dashGapColor: Colors.transparent,
        dashGapRadius: 0.0,
      ),
      SizedBox(
        height: 10.h,
      ),
    Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <Widget>[
      Text(
        "TOTAL",
        style: TextStyle(
            fontFamily: "Helvetica",
            fontWeight: FontWeight.w400,
            fontSize: 16.sp,
            letterSpacing: 0.46.sp,
            color: new Color(0xff0B2031)),
      ),
      Text(
        "\$30.60",
        style: TextStyle(
            fontFamily: "Helvetica",
            fontWeight: FontWeight.w400,
            fontSize: 26.sp,
            letterSpacing: 0.46.sp,
            color: new Color(0xff20AB2C)),
      ),
      ])
    ]);
  }

  Widget _buildOrderDetailRow1() {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
      SizedBox(width: 15.w),
      Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Image.asset(
          'assets/images/confirmation/pizza-png-13.png',
        ),
      ]),
      SizedBox(width: 10.w),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          Text(
            "Chicken Supreme (L)",
            style: TextStyle(
                fontFamily: "Helvetica",
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                letterSpacing: 0.46.sp,
                color: new Color(0xff0B2031)),
          ),
          SizedBox(width: 15.w),
          Text(
            "x 1",
            style: TextStyle(
                fontFamily: "Helvetica",
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                letterSpacing: 0.46.sp,
                color: new Color(0xff0B2031)),
          ),
          SizedBox(width: 15.w),
          Text(
            "\$20.34",
            style: TextStyle(
                fontFamily: "Helvetica",
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                letterSpacing: 0.46.sp,
                color: new Color(0xff20AB2C)),
          ),
        ]),
        SizedBox(height: 6.h),
        Text(
          "Topping: Cheese Mozzarella",
          style: TextStyle(
              fontFamily: "Helvetica",
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0x880B2031)),
        ),
        SizedBox(height: 6.h),
        Text(
          "Notes: No notes",
          style: TextStyle(
              fontFamily: "Helvetica",
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0x880B2031)),
        ),
      ]),
    ]);
  }

  Widget _buildOrderDetailRow2() {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
      SizedBox(width: 15.w),
      Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Image.asset(
          'assets/images/confirmation/coca-cola-can.png',
          width: 82.w,
          height: 82.h,
        ),
      ]),
      SizedBox(width: 10.w),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          Text(
            "Coca-Cola",
            style: TextStyle(
                fontFamily: "Helvetica",
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                letterSpacing: 0.46.sp,
                color: new Color(0xff0B2031)),
          ),
          SizedBox(width: 85.w),
          Text(
            "x 2",
            style: TextStyle(
                fontFamily: "Helvetica",
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                letterSpacing: 0.46.sp,
                color: new Color(0xff0B2031)),
          ),
          SizedBox(width: 15.w),
          Text(
            "\$1.12",
            style: TextStyle(
                fontFamily: "Helvetica",
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                letterSpacing: 0.46.sp,
                color: new Color(0xff20AB2C)),
          ),
        ]),
        SizedBox(height: 6.h),
        Text(
          "Notes: No notes",
          style: TextStyle(
              fontFamily: "Helvetica",
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0x880B2031)),
        ),
      ]),
    ]);
  }

  Widget _buildOrderDetailRow3() {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
      SizedBox(width: 15.w),
      Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Image.asset(
          'assets/images/confirmation/Vegetables.png',
          width: 80.w
        ),
      ]),
      SizedBox(width: 10.w),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          Text(
            "Seafood Pasta (L)",
            style: TextStyle(
                fontFamily: "Helvetica",
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                letterSpacing: 0.46.sp,
                color: new Color(0xff0B2031)),
          ),
          SizedBox(width: 30.w),
          Text(
            "x 1",
            style: TextStyle(
                fontFamily: "Helvetica",
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                letterSpacing: 0.46.sp,
                color: new Color(0xff0B2031)),
          ),
          SizedBox(width: 15.w),
          Text(
            "\$8.70",
            style: TextStyle(
                fontFamily: "Helvetica",
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                letterSpacing: 0.46.sp,
                color: new Color(0xff20AB2C)),
          ),
        ]),
        SizedBox(height: 6.h),
        Text(
          "Topping: Cheese Mozzarella",
          style: TextStyle(
              fontFamily: "Helvetica",
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0x880B2031)),
        ),
        SizedBox(height: 6.h),
        Text(
          "Notes: No notes",
          style: TextStyle(
              fontFamily: "Helvetica",
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0x880B2031)),
        ),
      ]),
    ]);
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
          Get.toNamed(AppRoutes.CONFIRMATION + AppRoutes.PIN);
        },
        child: Text(
          'CONFIRM',
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
