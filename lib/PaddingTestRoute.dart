import 'package:flutter/material.dart';

class PaddingTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      //上下左右各添加16像素补白
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            //左边添加80像素补白
            padding: const EdgeInsets.only(left: 80.0),
            child: Text("哈哈哈"),
          ),
          Padding(
            //上下各添加80像素补白
            padding: const EdgeInsets.symmetric(vertical: 80.0),
            child: Text("假假按揭"),
          ),
          Padding(
            //分别制定四个方向的补白
            padding: const EdgeInsets.fromLTRB(20.0, .0, 20.0, 20.0),
            child: Text("卡卡卡"),
          )
        ],
      ),
    );
  }
}
