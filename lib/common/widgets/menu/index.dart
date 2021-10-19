import 'package:flutter/material.dart';


class SmallMenu extends StatelessWidget {
  final String imageName;
  final String menuName;
  final String path;

  SmallMenu(this.imageName, this.menuName, this.path);

  Widget _buildMenuButton(String imageName, String menuName, String path) {
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
                print("Wow! Ripple");
              },
            )));
  }

  @override
  Widget build(BuildContext context) {
    return _buildMenuButton(this.imageName, this.menuName, this.path);
  }

}