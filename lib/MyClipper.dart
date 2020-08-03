import 'package:flutter/cupertino.dart';

class MyClipper extends CustomClipper<Rect> {
//  用于获取裁剪区域的接口，
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(30.0, 15.0, 40.0, 30.0);
  }
//接口决定是否重新裁剪，
  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}