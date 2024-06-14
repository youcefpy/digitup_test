import 'package:flutter/material.dart';

class NavBarPainter extends CustomPainter {
  final int selectedIndex;
  final Orientation orientation;
  NavBarPainter(this.selectedIndex, this.orientation);

  // this funtion is used to creating a parabol effect background of BottomAppBar
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color.fromRGBO(82, 193, 255, 1);

    double height_screen = size.height;
    double width_screen = size.width;
    print("the width is :  ${width_screen}");
    print(("the height is ${height_screen}"));
    double center = 0;

    if (orientation == Orientation.portrait) {
      if (selectedIndex == 0) {
        center = width_screen / 5 * selectedIndex + width_screen / 8;
      } else if (selectedIndex == 1) {
        center = width_screen / 5 * selectedIndex + width_screen / 9;
      } else if (selectedIndex == 2) {
        center = width_screen / 5 * selectedIndex + width_screen / 11;
      } else if (selectedIndex == 3) {
        center = width_screen / 5 * selectedIndex + width_screen / 13.5;
      } else {
        center = width_screen / 5 * selectedIndex + width_screen / 15;
      }

      Path path = Path()
        ..lineTo(center - 25, 0)
        ..quadraticBezierTo(center, -40, center + 30, 0)
        ..lineTo(width_screen, 0)
        ..lineTo(width_screen, height_screen)
        ..close();

      canvas.drawPath(path, paint);
    }

    // print("Center : ${center}");
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
