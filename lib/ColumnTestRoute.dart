import 'package:flutter/material.dart';

class ColumnTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
          children: <Widget>[
            Container(
              color: Colors.red,
              child: Column(
                mainAxisSize: MainAxisSize.max,//无效，内层Colum高度为实际高度
                children: <Widget>[
                  Text("hello world "),
                  Text("I am Jack "),
                ],
              ),
            )
          ],
        ),
      ),
    );
//    return Expanded(child: Container(
//      color: Colors.green,
//      child: Padding(
//        padding: const EdgeInsets.all(26.0),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.start,
//          mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
//          children: <Widget>[
//            Container(
//              color: Colors.red,
//              child: Column(
//                mainAxisSize: MainAxisSize.max,//无效，内层Colum高度为实际高度
//                children: <Widget>[
//                  Text("hello world "),
//                  Text("I am Jack "),
//                ],
//              ),
//            )
//          ],
//        ),
//      ),
//    ));
//    return ConstrainedBox(
//      constraints: BoxConstraints(minWidth: double.infinity),
//      child: Column(
//        crossAxisAlignment: CrossAxisAlignment.center,
//        children: <Widget>[
//          Text("hi"),
//          Text("world"),
//        ],
//      ),
//    );
  }
}
