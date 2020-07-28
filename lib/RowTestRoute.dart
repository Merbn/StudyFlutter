import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_flutter_app/main.dart';

class RowTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 20.0),child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row( textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "textDirection:表示水平方向子组件的布局顺序\n（是从左往右还是从右往左）",
              style: TextStyle(fontSize: 12.0),
            ),
            Text("I am  Jack", style: TextStyle(fontSize: 12.0))
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "mainAxisSize:表示Row在主轴（水平）方向占用的空间，默认是MainAxisSize.max,表示尽可能多的占用水平方向的空间，",
              style: TextStyle(fontSize: 12.0),
            ),
            Text("mainAxisAlignment：表示子组件在Row所占用水平空间内对齐方式", style: TextStyle(fontSize: 12.0))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          textDirection: TextDirection.rtl,
          children: <Widget>[
            Text(
              "verticalDirection：表示Row纵轴（垂直）的对其方向，默认是VerticalDirecation.down，表示从上到下",
              style: TextStyle(fontSize: 12.0),
            ),
            Text("I am  Jack", style: TextStyle(fontSize: 12.0))
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          verticalDirection: VerticalDirection.up,
          children: <Widget>[
            Text(
              "hello world",
              style: TextStyle(fontSize: 30.0),
            ),
            Text("I am  Jack", style: TextStyle(fontSize: 12.0))
          ],
        )
      ],
    ),);
  }
}
