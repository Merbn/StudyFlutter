//自定义路由过渡动画
import 'package:flutter/material.dart';

class FadeRoute extends PageRoute {
  FadeRoute(
      {@required this.builder,
      this.transitionDuration = const Duration(milliseconds: 500),
      this.barrierColor,
      this.barrierLabel,
      this.opaque = true,
      this.maintainState = true,
      this.barrierDismissible = false});

  final WidgetBuilder builder;
  @override
  bool opaque;
  @override
  bool barrierDismissible;
  @override
  Color barrierColor;

  @override
  String barrierLabel;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return builder(context);
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(
      opacity: animation,
      child: builder(context),
    );
  }

  @override
  bool maintainState;

  @override
  Duration transitionDuration;
}
