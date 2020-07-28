import 'package:flutter/material.dart';

class AlignTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      width: 120.0,
      color: Colors.blue[50],
      child: Align(
//        实际偏移 = (FractionalOffse.x * childWidth, FractionalOffse.y * childHeight)
//        FractionalOffset 继承自Alignment，它和Alignment唯一的区别就是坐标原点不同。FractionalOffset的坐标原点为矩形左侧定点，这布局系统的一致。
        alignment: FractionalOffset(0.2, 0.6),
        child: FlutterLogo(
          size: 60,
        ),
      ),
    );
//    return Container(
//      color: Colors.red,
//      child: Align(
//        widthFactor: 2,
//        heightFactor: 2,
//        alignment: Alignment.topRight,
//        child: FlutterLogo(
//          size: 70,
//        ),
//      ),
//    );
//    return Container(
//      height: 120.0,
//      width: 120.0,
//      color: Colors.blue[200],
//      child: Align(
//        alignment: Alignment.topRight,
//        child: FlutterLogo(
//          size: 80,
//        ),
//      ),
//    );
  }
}
