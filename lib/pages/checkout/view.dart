import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/common/values/values.dart';
import 'package:food_order/routes/app_pages.dart';
import 'package:get/get.dart';

import 'controller.dart';

class CheckoutPage extends GetView<CheckoutController> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.white,
        //backgroundColor: Color(0xffF7F7F7),
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
                      height: 30.h,
                    ),
                    Divider(
                      thickness: 30.h,
                      color: Color(0xFFF7F7F7),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    _buildPaymentInfoTitle(),
                    SizedBox(
                      height: 20.h,
                    ),
                    _buildPaymentChoice(),
                    _buildPaymentDetail(),
                    SizedBox(
                      height: 30.h,
                    ),
                    Divider(
                      thickness: 30.h,
                      color: Color(0xFFF7F7F7),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    _buildButtons()
                  ])))
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
          )
        ]);
  }

  Widget _buildContact() {
    return Column(children: <Widget>[
      SizedBox(
        height: 20.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(width: 15.w),
        Text(
          "First Name",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xff0B2031)),
        ),
        SizedBox(width: 100.w),
        Text(
          "Last Name",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xff0B2031)),
        ),
      ]),
      SizedBox(
        height: 10.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
        SizedBox(
            width: 160,
            child: TextFormField(
              decoration: const InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(),
                errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 1)),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintText: 'First Name',
                hintStyle: TextStyle(
                  color: Color(0xFFAAAAAA),
                  fontSize: 14,
                  //fontWeight: FontWeight.w500
                ),
                //labelText: 'First name',
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              },
            )),
        SizedBox(
            width: 160,
            child: TextFormField(
              decoration: const InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(),
                errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 1)),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintText: 'Last Name',
                hintStyle: TextStyle(
                  color: Color(0xFFAAAAAA),
                  fontSize: 14,
                  //fontWeight: FontWeight.w500
                ),
                //labelText: 'Last name',
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              },
            ))
      ]),
      SizedBox(
        height: 20.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(width: 15.w),
        Text(
          "Phone",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xff0B2031)),
        ),
        SizedBox(width: 135.w),
        Text(
          "Email",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xff0B2031)),
        ),
      ]),
      SizedBox(
        height: 10.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
        SizedBox(
            width: 160,
            child: TextFormField(
              decoration: const InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(),
                errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 1)),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintText: '0908 032 XXXX',
                hintStyle: TextStyle(
                  color: Color(0xFFAAAAAA),
                  fontSize: 14,
                  //fontWeight: FontWeight.w500
                ),
                //labelText: 'First name',
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              },
            )),
        SizedBox(
            width: 160,
            child: TextFormField(
              decoration: const InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(),
                errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 1)),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintText: 'Email',
                hintStyle: TextStyle(
                  color: Color(0xFFAAAAAA),
                  fontSize: 14,
                  //fontWeight: FontWeight.w500
                ),
                //labelText: 'Last name',
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              },
            ))
      ]),
      SizedBox(
        height: 20.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(width: 15.w),
        Text(
          "Address",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xff0B2031)),
        ),
      ]),
      SizedBox(
        height: 10.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
        SizedBox(
            width: 330,
            child: TextFormField(
              maxLines: 6,
              decoration: const InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(),
                errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 1)),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintText: 'Your detail address for delivery',
                hintStyle: TextStyle(
                  color: Color(0xFFAAAAAA),
                  fontSize: 14,
                  //fontWeight: FontWeight.w500
                ),
                //labelText: 'First name',
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              },
            )),
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
          )
        ]);
  }

  Widget _buildPaymentChoice() {
    return
        //Stack(children: <Widget>[
        //SizedBox(height: 10.h,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
      Stack(children: <Widget>[
        SizedBox(
            // margin: EdgeInsets.only(top: (200.0).h), // 顶部系统栏 44px
            width: 105.w,
            height: 86.h,
            child: Card(
                elevation: 6,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: Colors.red, width: 2)),
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                  Image.asset(
                    'assets/images/checkout/visa.png',
                  ),
                ]))),
        Positioned(
          top: 0.h,
          right: 0.w,
          child: Image.asset(
            'assets/images/booking/check.png',
          ),
        ),
      ]),
      SizedBox(
          // margin: EdgeInsets.only(top: (200.0).h), // 顶部系统栏 44px
          width: 105.w,
          height: 86.h,
          child: Card(
              elevation: 6,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: Color(0xffAAAAAA), width: 2)),
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                Image.asset(
                  'assets/images/checkout/MasterCard.png',
                ),
              ]))),
      SizedBox(
          // margin: EdgeInsets.only(top: (200.0).h), // 顶部系统栏 44px
          width: 105.w,
          height: 86.h,
          child: Card(
              elevation: 6,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: Color(0xffAAAAAA), width: 2)),
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                Image.asset(
                  'assets/images/checkout/PayPal.png',
                  width: 79.w,
                ),
              ]))),
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
        height: 20.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(width: 15.w),
        Text(
          "Cardholder Name",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xff0B2031)),
        ),
      ]),
      SizedBox(
        height: 10.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(width: 15.w),
        SizedBox(
            width: 330,
            child: TextFormField(
              decoration: const InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(),
                errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 1)),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintText: 'Alexandre Katherey',
                hintStyle: TextStyle(
                  color: Color(0xFFAAAAAA),
                  fontSize: 14,
                  //fontWeight: FontWeight.w500
                ),
                //labelText: 'First name',
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              },
            )),
      ]),
      SizedBox(
        height: 20.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(width: 15.w),
        Text(
          "Card Number",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xff0B2031)),
        ),
      ]),
      SizedBox(
        height: 10.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(width: 15.w),
        SizedBox(
            width: 330,
            child: TextFormField(
              decoration: const InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(),
                errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 1)),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintText: '5994 6222 9982 XXXX',
                hintStyle: TextStyle(
                  color: Color(0xFFAAAAAA),
                  fontSize: 14,
                  //fontWeight: FontWeight.w500
                ),
                //labelText: 'First name',
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              },
            )),
      ]),
      SizedBox(
        height: 20.h,
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
              color: new Color(0xff0B2031)),
        ),
        SizedBox(width: 150.w),
        Text(
          "Expiration date",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xff0B2031)),
        ),
      ]),
      SizedBox(
        height: 10.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
        SizedBox(
            width: 160,
            child: TextFormField(
              decoration: const InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(),
                errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 1)),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintText: '000',
                hintStyle: TextStyle(
                  color: Color(0xFFAAAAAA),
                  fontSize: 14,
                  //fontWeight: FontWeight.w500
                ),
                //labelText: 'First name',
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              },
            )),
        SizedBox(
            width: 160,
            child: TextFormField(
              decoration: const InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(),
                errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 1)),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintText: 'MM/YY',
                hintStyle: TextStyle(
                  color: Color(0xFFAAAAAA),
                  fontSize: 14,
                  //fontWeight: FontWeight.w500
                ),
                //labelText: 'Last name',
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              },
            ))
      ]),
      SizedBox(
        height: 10.h,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        //SizedBox(width: 15.w),
        Checkbox(
          side: BorderSide(color: Color(0xffAAAAAA)),
          checkColor: Colors.white,
          //fillColor: MaterialStateProperty.resolveWith(getColor),
          value: false,
          onChanged: (bool? value) {},
        ),
        //SizedBox(width: 15.w),
        Text(
          "Save credit card information ",
          style: TextStyle(
              fontFamily: "HelveticaNeue",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              letterSpacing: 0.46.sp,
              color: new Color(0xff0B2031)),
        ),
      ])
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
          Get.toNamed(AppRoutes.CONFIRMATION);
        },
        child: Text(
          'CONTINUE',
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
}
