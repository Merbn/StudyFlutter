import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ProgressRoute extends StatefulWidget {
  @override
  _ProgressRouteState createState() => _ProgressRouteState();
}

class _ProgressRouteState extends State<ProgressRoute>
    with TickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
//    动画执行时间3秒
    _animationController =
        new AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animationController.forward();
    _animationController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 206),
            child: SizedBox(
              width: 200,
              height: 200,
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey[200],
//          从灰色变成蓝色
                valueColor: ColorTween(begin: Colors.grey, end: Colors.blue)
                    .animate(_animationController),
                value: _animationController.value,
                strokeWidth: 10,
              ),
            ),
          ),
          SpinKitPouringHourglass(
            color: Colors.yellow,
            size: 50.0,
            controller: AnimationController(
                vsync: this, duration: const Duration(milliseconds: 1200)),
          )
        ],
      ),
    );
  }
}
