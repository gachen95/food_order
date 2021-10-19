import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/common/values/values.dart';
import 'package:food_order/common/widgets/menu/index.dart';
import 'package:food_order/routes/app_pages.dart';
import 'package:get/get.dart';

import 'controller.dart';

class BookingPage extends GetView<BookingController> {
  Widget _buildBackground() {
    return SizedBox(
      width: 375.w,
      height: 268.h,
      child: Image.asset(
        "assets/images/booking/booking_bg.png",
        fit: BoxFit.none,
      ),
    );
  }

  Widget _buildBackgroundGradient() {
    return Container(
        width: 375.w,
        height: 268.h,
        decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
          Color.fromARGB(160, 0, 0, 0),
          Color.fromARGB(8, 0, 0, 0),
        ])));
  }

  Widget _buildBackgroundGradient2() {
    return Container(
        width: 375.w,
        height: 113.h,
        decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
          Color.fromARGB(0, 255, 255, 255),
          Color.fromARGB(210, 255, 255, 255),
          Color.fromARGB(250, 255, 255, 255),
          Color.fromARGB(255, 255, 255, 255),
        ])));
  }

  Stack _buildHeader() {
    return Stack(children: <Widget>[
      _buildBackground(),
      Positioned(top: 0.h, left: 0.w, child: _buildBackgroundGradient()),
      Positioned(top: 216.h, left: 0.w, child: _buildBackgroundGradient2()),
      Positioned(top: 59.h, left: 15.w, child: SmallMenu("menu", "", "")),
      Positioned(top: 59.h, right: 15.w, child: SmallMenu("basket", "", "")),
    ]);
  }

  Widget _buildTabs() {
    return SizedBox(
      height: 50,
      child: TabBar(
          labelColor: Color(0xff0B2031),
          unselectedLabelColor: Color(0xffCCCCCC),
          indicatorColor: Color(0xffE5293E),
          indicatorSize: TabBarIndicatorSize.label,
          tabs: [
            Tab(
              text: 'Book',
            ),
            Tab(
              text: 'Description',
            ),
            Tab(
              text: 'Comment',
            ),
          ]),
    );
  }

  Widget _buildBookTab() {
    String dropdownvalue = '2';
    var items = ['1', '2', '3', '4'];
    return SingleChildScrollView(
        child: Container(
            //color: Colors.white,
            padding: EdgeInsets.all(15.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
              Text(
                'Size',
                style: TextStyle(
                    fontFamily: "Helvetica",
                    fontWeight: FontWeight.normal,
                    fontSize: 18.sp,
                    letterSpacing: 1.41.sp,
                    color: const Color(0xff0B2031)),
              ),
              SizedBox(
                height: 10.h,
              ),
              _buildBookTabSize(),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Quantity',
                style: TextStyle(
                    fontFamily: "Helvetica",
                    fontWeight: FontWeight.normal,
                    fontSize: 18.sp,
                    letterSpacing: 1.41.sp,
                    color: const Color(0xff0B2031)),
              ),
              SizedBox(
                height: 10.h,
              ),
              DropdownButton(
                isExpanded: true,
                value: dropdownvalue,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items.map((String it) {
                  return DropdownMenuItem(
                    value: it,
                    child: Align(alignment: Alignment.center, child: Text(it)),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  //dropdownvalue = newValue!;
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Style of Cake',
                style: TextStyle(
                    fontFamily: "Helvetica",
                    fontWeight: FontWeight.normal,
                    fontSize: 18.sp,
                    letterSpacing: 1.41.sp,
                    color: const Color(0xff0B2031)),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(160.w, 35.h),
                    primary: Colors.red, // background
                    onPrimary: Colors.white, // foreground
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    //padding: EdgeInsets.all(10.0),
                  ),
                  onPressed: () {
                    Get.offAndToNamed("/menu");
                  },
                  child: Text(
                    'Thick',
                    style: TextStyle(
                      fontFamily: "Helvetica",
                      fontWeight: FontWeight.normal,
                      fontSize: 16.sp,
                      letterSpacing: 1.25.sp,
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(160.w, 35.h),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    //fixedSize: Size(160.w, 35.h),
                  ),
                  child: Text(
                    'Thin',
                    style: TextStyle(
                      fontFamily: "Helvetica",
                      fontWeight: FontWeight.normal,
                      fontSize: 16.sp,
                      letterSpacing: 1.25.sp,
                      color: Color(0xffAEAEAE),
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Topping',
                style: TextStyle(
                    fontFamily: "Helvetica",
                    fontWeight: FontWeight.normal,
                    fontSize: 18.sp,
                    letterSpacing: 1.41.sp,
                    color: const Color(0xff0B2031)),
              ),
              SizedBox(
                height: 10.h,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(345.w, 50.h),
                  primary: Colors.red, // background
                  onPrimary: Colors.white, // foreground
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  //padding: EdgeInsets.all(10.0),
                ),
                onPressed: () {
                  //Get.offAndToNamed("/menu");
                },
                child: Text(
                  'Add Topping',
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
              Text(
                'Other Description',
                style: TextStyle(
                    fontFamily: "Helvetica",
                    fontWeight: FontWeight.normal,
                    fontSize: 18.sp,
                    letterSpacing: 1.41.sp,
                    color: const Color(0xff0B2031)),
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
                //controller: itc.noteEditController,
                //onChanged: itc.onNoteChanged,
                maxLines: 5, minLines: 3,
                //style: TextStyle(fontSize: 18, color: context.isDarkMode ? Colors.yellow : Color(0xFF0000FF)),
                decoration:
                    //InputDecoration(hintText: "Desc", hintStyle: new TextStyle(color: Colors.grey[300]), suffixIcon: Icon(Icons.search)),
                    InputDecoration(
                  hintText: "I’m want to have extra cheese…",
                  hintStyle: new TextStyle(color: Colors.grey[300]),
                  alignLabelWithHint: true,
                  //border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Color(0xFFE0E0E0),
                      //width: 0.5.w
                      //style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(345.w, 50.h),
                  primary: Colors.red, // background
                  onPrimary: Colors.white, // foreground
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
                  //padding: EdgeInsets.all(10.0),
                ),
                onPressed: () {
                  Get.offAndToNamed(AppRoutes.CHECKOUT);
                },
                child: Text(
                  'ORDER NOW',
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
                onPressed: null,
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(345.w, 50.h),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)),
                  //fixedSize: Size(160.w, 35.h),
                ),
                child: Text(
                  'ADD TO BAG',
                  style: TextStyle(
                    fontFamily: "Helvetica",
                    fontWeight: FontWeight.normal,
                    fontSize: 16.sp,
                    letterSpacing: 1.25.sp,
                    color: Color(0xff0B2031),
                  ),
                ),
              ),
            ])));
  }

  Widget _buildBookTabSize() {
    return Stack(children: <Widget>[
      //SizedBox(height: 10.h,),
      Row(children: <Widget>[
        SizedBox(
            // margin: EdgeInsets.only(top: (200.0).h), // 顶部系统栏 44px
            width: 167.w,
            height: 166.h,
            child: Card(
                elevation: 6,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: Colors.red, width: 2)),
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 10.h,
                  ),
                  Image.asset(
                    'assets/images/booking/pizza.png',
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'SizeL',
                    style: TextStyle(
                        fontFamily: "Helvetica",
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                        letterSpacing: 1.1.sp,
                        color: const Color(0xff0B2031)),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                    Text(
                      '(8 Slices)',
                      style: TextStyle(
                          fontFamily: "Helvetica",
                          fontWeight: FontWeight.normal,
                          fontSize: 14.sp,
                          letterSpacing: 1.1.sp,
                          color: const Color(0xff0B2031)),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      '\$17.23',
                      style: TextStyle(
                          fontFamily: "Helvetica",
                          fontWeight: FontWeight.normal,
                          fontSize: 14.sp,
                          letterSpacing: 1.1.sp,
                          color: const Color(0xff20AB2C)),
                    ),
                  ])
                ]))),
        SizedBox(
            // margin: EdgeInsets.only(top: (200.0).h), // 顶部系统栏 44px
            width: 167.w,
            height: 166.h,
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
                    'assets/images/booking/pizza_unselected.png',
                    width: 85.w,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'SizeM',
                    style: TextStyle(
                        fontFamily: "Helvetica",
                        fontWeight: FontWeight.normal,
                        fontSize: 14.sp,
                        letterSpacing: 1.1.sp,
                        color: const Color(0xffAEAEAE)),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                    Text(
                      '(6 Slices)',
                      style: TextStyle(
                          fontFamily: "Helvetica",
                          fontWeight: FontWeight.normal,
                          fontSize: 14.sp,
                          letterSpacing: 1.1.sp,
                          color: const Color(0xffAEAEAE)),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      '\$10.34',
                      style: TextStyle(
                          fontFamily: "Helvetica",
                          fontWeight: FontWeight.normal,
                          fontSize: 14.sp,
                          letterSpacing: 1.1.sp,
                          color: const Color(0xffAEAEAE)),
                    ),
                  ])
                ]))),
      ]),
      Positioned(
        top: 0.h,
        left: 145.w,
        child: Image.asset(
          'assets/images/booking/check.png',
        ),
      ),
    ]);
  }

  Widget _buildDescriptionTab() {
    return SingleChildScrollView(
        child: Container(
            //color: Colors.white,
            padding: EdgeInsets.all(15.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
              Text(
                'Description',
                style: TextStyle(
                    fontFamily: "Helvetica",
                    fontWeight: FontWeight.normal,
                    fontSize: 18.sp,
                    letterSpacing: 1.41.sp,
                    color: const Color(0xffE4283D)),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Our Real Special marinara sauce with fresh tomatoes baked on our signature thin crust, baked to a perfect crisp. We create food we’re proud to serve and deliver it fast, with a smile.\n\n\nClassic marinara sauce, authentic old-world pepperoni, all-natural Italian sausage, slow-roasted ham, hardwood smoked bacon, seasoned pork and beef. Best an our Hand Tossed crust. With more than 50 years of experience under our belts, we understand how to best serve our customers through tried and true service principles. Instead of following trends, we set them. We create food we’re proud to serve and deliver it fast, with a smile.",
                overflow: TextOverflow.ellipsis,
                maxLines: 25,
              ),
            ])));
  }

  Widget _buildCommentTab() {
    return Stack(children: <Widget>[
      SingleChildScrollView(
          child: Container(
              //color: Colors.white,
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildCommentDetail('Delicious!',
                      "It’s a very delicious pizza! And I expect to try more in the next time!", 'Susan Wong'),
                  _buildCommentDetail('Excellent!!', "It’s a very great pizza, must try it!", 'Marcus'),
                  _buildCommentDetail(
                      'Not bad!!', "It’s a very delicious pizza! And I expect to try more in the next time!", 'Laarh'),
                  _buildCommentDetail('Delicious!',
                      "It’s a very delicious pizza! And I expect to try more in the next time!", 'Susan Wong'),
                ],
              ))),
      Positioned(
        bottom: 20,
        right: 20,
        child: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(Icons.add),
          backgroundColor: Color(0xFFE5293E),
        ),
      ),
    ]);
  }

  SizedBox _buildCommentDetail(String title, String detail, String name) {
    return SizedBox(
        // margin: EdgeInsets.only(top: (200.0).h), // 顶部系统栏 44px
        width: 360.w,
        height: 120.h,
        child: Card(
            elevation: 6,
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(children: <Widget>[
              SizedBox(
                height: 24.h,
              ),
              Row(children: <Widget>[
                SizedBox(
                  width: 20.w,
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.black87,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset('assets/images/booking/head.png'),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                  Row(children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: "Helvetica",
                        fontWeight: FontWeight.normal,
                        fontSize: 12.sp,
                        letterSpacing: 0.74.sp,
                        color: Color(0xff0B2031),
                      ),
                    ),
                    SizedBox(
                      width: 150.w,
                    ),
                    Text(
                      '23 Mar!',
                      style: TextStyle(
                        fontFamily: "Helvetica",
                        fontWeight: FontWeight.normal,
                        fontSize: 12.sp,
                        letterSpacing: 0.74.sp,
                        color: Color(0xffCCCCCC),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(children: <Widget>[
                    Icon(Icons.star, size: 14.w, color: new Color(0xffFFD93F)),
                    Icon(Icons.star, size: 14.w, color: new Color(0xffFFD93F)),
                    Icon(Icons.star, size: 14.w, color: new Color(0xffFFD93F)),
                    Icon(Icons.star, size: 14.w, color: new Color(0xffFFD93F)),
                    Icon(Icons.star, size: 14.w, color: new Color(0xffE8E8E8)),
                    SizedBox(
                      width: 110.w,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        fontFamily: "Helvetica",
                        fontWeight: FontWeight.normal,
                        fontSize: 12.sp,
                        letterSpacing: 0.74.sp,
                        color: Color(0xffCCCCCC),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    width: 250,
                    child: Text(
                      detail,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontFamily: "Helvetica",
                        fontWeight: FontWeight.normal,
                        fontSize: 12.sp,
                        letterSpacing: 0.74.sp,
                        color: Color(0xff0B2031),
                      ),
                    ),
                  )
                ])
              ]),
            ])));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          //backgroundColor: Colors.white,
          body: SizedBox(
              width: 375.w,
              //height: 812.h,
              child: Column(children: <Widget>[
                _buildHeader(),
                //Positioned(top: 59.h, child:
                SizedBox(
                  height: 10.h,
                ),
                _buildTitle(),
                SizedBox(
                  height: 10.h,
                ),
                _buildTabs(),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      _buildBookTab(),
                      _buildDescriptionTab(),
                      _buildCommentTab(),
                    ],
                  ),
                )
                // Container(margin: EdgeInsets.only(top: (150.0).h), child: Text("booking"))
              ])),
        ));
  }

  Row _buildTitle() {
    return Row(children: <Widget>[
      SizedBox(
        width: 10.w,
      ),
      Column(children: <Widget>[
        IconButton(
          iconSize: 32.0,
          icon: const Icon(
            Icons.chevron_left,
          ),
          onPressed: () {},
          //color:  Theme.of(context).primaryColor,
        ),
      ]),
      Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Chicken Supreme",
              style: TextStyle(
                fontFamily: "Helvetica",
                fontWeight: FontWeight.normal,
                fontSize: 18.sp,
                letterSpacing: 1.11.sp,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
                height: 35,
                width: 295,
                child: Text(
                  'Cheesy mayo sauce and mozzarella, tomatoes, green pepper, onion',
                  maxLines: 3,
                  style: TextStyle(
                      fontFamily: "Helvetica",
                      fontWeight: FontWeight.normal,
                      fontSize: 12.sp,
                      letterSpacing: 0.74.sp,
                      color: new Color(0xff706E7B)),
                )),
            Row(children: <Widget>[
              Icon(
                Icons.star,
                size: 18.w,
                color: new Color(0xffFFD93F),
              ),
              Icon(Icons.star, size: 18.w, color: new Color(0xffFFD93F)),
              Icon(Icons.star, size: 18.w, color: new Color(0xffFFD93F)),
              Icon(Icons.star, size: 18.w, color: new Color(0xffFFD93F)),
              Icon(Icons.star, size: 18.w, color: new Color(0xffE8E8E8)),
              SizedBox(
                width: 15.w,
              ),
              Text(
                "4.5",
                style: TextStyle(
                    fontFamily: "Helvetica",
                    fontWeight: FontWeight.normal,
                    fontSize: 16.sp,
                    letterSpacing: 0.34.sp,
                    color: new Color(0xffFFD93F)),
              ),
            ])
          ])
    ]);
  }
}
