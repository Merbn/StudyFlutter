import 'package:flutter/cupertino.dart';

//使用AnimatedWidget简化
//通过addListener()和setState() 来更新UI这一步其实是通用的，如果每个动画中都加这么一句是比较繁琐的。AnimatedWidget类封装了调用setState()的细节，并允许我们将widget分离出来
class AnimatedIamge extends AnimatedWidget {
  AnimatedIamge({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

//  @override
//  Widget build(BuildContext context) {
//    final Animation<double> animation = listenable;
//    return Center(
//      child: Image.asset(
//        "images/avatar2.jpg",
//        width: animation.value,
//        height: animation.value,
//      ),
//    );
//  }
  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return AnimatedBuilder(
        animation: animation,
        child: Image.asset("images/avatar2.jpg"),
        builder: (BuildContext context, Widget child) {
          return new Center(
            child: Container(
              height: animation.value,
              width: animation.value,
              child: child,
            ),
          );
        });
  }
}

class ScaleAnimationTestRoute2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ScaleAnimationTestRoute2State();
  }
}

class _ScaleAnimationTestRoute2State extends State<ScaleAnimationTestRoute2>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(seconds: 3), vsync: this);
    animation = new Tween(begin: 0.0, end: 300.0).animate(controller);
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedIamge(
      animation: animation,
    );
  }
}
