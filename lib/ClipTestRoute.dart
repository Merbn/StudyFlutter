import 'package:flutter/material.dart';
import 'package:study_flutter_app/MyClipper.dart';
import 'NavBar.dart';

class ClipTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget avatar = Image.asset(
      "images/avatar2.jpg",
      width: 50.0,
    );
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Column(
          children: <Widget>[
            avatar, //不裁剪
            ClipOval(
              child: avatar,
            ) //裁减为圆形
            ,
            ClipRRect(
              //剪裁为圆角矩形
              borderRadius: BorderRadius.circular(5.0),
              child: avatar,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  widthFactor: .5, //宽度设为原来宽度一半，另一半会溢出
                  child: avatar,
                ),
                Text(
                  "你好啊",
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRect(
                  //将溢出部分剪裁
                  child: Align(
                    alignment: Alignment.topLeft,
                    widthFactor: .5, //宽度设为原来宽度一半
                    child: avatar,
                  ),
                ),
                Text(
                  "哪哈啊",
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: ClipRect(
                clipper: MyClipper(),
                child: avatar,
              ),
            ),
            NavBar(color: Colors.white, title: "标题"),
            NavBar(color: Colors.blue, title: "标题"),
          ],
        ),
      ),
    );
  }
}
