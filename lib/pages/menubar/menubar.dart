import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  State<MenuBar> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  bool _customTileExpanded = false;

  Widget createDrawer(BuildContext context) {
    return Drawer(
        child: Container(
            color: const Color(0xFFE4283D),
            child: ListView(
              //color: Color(0xFFE4283D),
              padding: EdgeInsets.only(top: 45.h),
              children: <Widget>[
                ListTile(
                    trailing: SizedBox(
                        height: 20.0,
                        width: 20.0, // fixed width and height
                        child: Image.asset("assets/images/menubar/cancel.png")),
                    onTap: () {
                      Get.back();
                    }),
                ListTile(
                    leading: SizedBox(
                        height: 20.0,
                        width: 20.0, // fixed width and height
                        child: Image.asset("assets/images/menubar/home.png")),
                    title: Text(
                      'Home',
                      style: TextStyle(
                        fontFamily: "Helvetica",
                        fontWeight: FontWeight.normal,
                        fontSize: 18.sp,
                        letterSpacing: 1.25.sp,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    onTap: () {}),
                ExpansionTile(
                  leading: SizedBox(
                      height: 20.0,
                      width: 20.0, // fixed width and height
                      child: Image.asset("assets/images/menubar/menu.png")),
                  title: Text(
                    'Menu',
                    style: TextStyle(
                      fontFamily: "Helvetica",
                      fontWeight: FontWeight.normal,
                      fontSize: 18.sp,
                      letterSpacing: 1.25.sp,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  //collapsedIconColor: Color(0xFFFFFFFF),
                  trailing: _customTileExpanded
                      ? SizedBox(
                          height: 20.0,
                          width: 20.0, // fixed width and height
                          child: Image.asset("assets/images/menubar/arrow_up.png"))
                      : SizedBox(
                          height: 20.0,
                          width: 20.0, // fixed width and height
                          child: Image.asset("assets/images/menubar/arrow_down.png")),
                  onExpansionChanged: (bool expanded) {
                    setState(() => _customTileExpanded = expanded);
                  },
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 30.w),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ListTile(
                                leading: SizedBox(
                                    height: 20.0,
                                    width: 20.0, // fixed width and height
                                    child: Image.asset("assets/images/menubar/pizza.png")),
                                title: Text('Pizza',
                                    style: TextStyle(
                                      fontFamily: "Helvetica",
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18.sp,
                                      letterSpacing: 1.25.sp,
                                      color: Color(0xFFFFFFFF),
                                    )),
                                onTap: () {}),
                            Divider(color: Color(0xFFE2E2E2)),
                            ListTile(
                                leading: SizedBox(
                                    height: 20.0,
                                    width: 20.0, // fixed width and height
                                    child: Image.asset("assets/images/menubar/pasta.png")),
                                title: Text('Pasta',
                                    style: TextStyle(
                                      fontFamily: "Helvetica",
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18.sp,
                                      letterSpacing: 1.25.sp,
                                      color: Color(0xFFFFFFFF),
                                    )),
                                onTap: () {}),
                            Divider(color: Color(0xFFE2E2E2)),
                            ListTile(
                                leading: SizedBox(
                                    height: 20.0,
                                    width: 20.0, // fixed width and height
                                    child: Image.asset("assets/images/menubar/salads.png")),
                                title: Text('Salads',
                                    style: TextStyle(
                                      fontFamily: "Helvetica",
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18.sp,
                                      letterSpacing: 1.25.sp,
                                      color: Color(0xFFFFFFFF),
                                    )),
                                onTap: () {}),
                            Divider(color: Color(0xFFE2E2E2)),
                            ListTile(
                                leading: SizedBox(
                                    height: 20.0,
                                    width: 20.0, // fixed width and height
                                    child: Image.asset("assets/images/menubar/desert.png")),
                                title: Text('Desert',
                                    style: TextStyle(
                                      fontFamily: "Helvetica",
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18.sp,
                                      letterSpacing: 1.25.sp,
                                      color: Color(0xFFFFFFFF),
                                    )),
                                onTap: () {}),
                            Divider(color: Color(0xFFE2E2E2)),
                          ],
                        ))
                  ],
                ),
                ListTile(
                    leading: SizedBox(
                        height: 20.0,
                        width: 20.0, // fixed width and height
                        child: Image.asset("assets/images/menubar/yourbag.png")),
                    title: Text('Your Bag',
                        style: TextStyle(
                          fontFamily: "Helvetica",
                          fontWeight: FontWeight.normal,
                          fontSize: 18.sp,
                          letterSpacing: 1.25.sp,
                          color: Color(0xFFFFFFFF),
                        )),
                    onTap: () {}),
                ListTile(
                    leading: SizedBox(
                        height: 20.0,
                        width: 20.0, // fixed width and height
                        child: Image.asset("assets/images/menubar/contactus.png")),
                    title: Text('Contact us',
                        style: TextStyle(
                          fontFamily: "Helvetica",
                          fontWeight: FontWeight.normal,
                          fontSize: 18.sp,
                          letterSpacing: 1.25.sp,
                          color: Color(0xFFFFFFFF),
                        )),
                    onTap: () {}),
                ListTile(
                    leading: SizedBox(
                        height: 20.0,
                        width: 20.0, // fixed width and height
                        child: Image.asset("assets/images/menubar/policy.png")),
                    title: Text('Policy',
                        style: TextStyle(
                          fontFamily: "Helvetica",
                          fontWeight: FontWeight.normal,
                          fontSize: 18.sp,
                          letterSpacing: 1.25.sp,
                          color: Color(0xFFFFFFFF),
                        )),
                    onTap: () {}),
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    return createDrawer(context);
  }
}
