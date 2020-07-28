import 'package:flutter/material.dart';
import 'CounterWidget.dart';
import 'CupertinoTestRoute.dart';
import 'TapboxA.dart';
import 'ParentWidget.dart';
import 'ParentWidgetC.dart';
import 'ImageAndIconRoute.dart';
import 'SwitchAndCheckBoxTestRoute.dart';
import 'LoginRoute.dart';

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return CounterWidget();
//    return CupertinoTestRoute();
//    return TapboxA();
//    return ParentWidget();
//    return ParentWidgetC();
//    return ImageAndIconRoute();
//    return SwitchAndCheckBoxTestRoute();
//    return LoginRoute();
    return LoginRoute();
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("新的route页面"),
//      ),
//      body: Center(
//        child: Text("this is new route页面"),
//      ),
//    );
  }
}
