import 'package:flutter/material.dart';

class _Drag extends StatefulWidget {
  @override
  __DragState createState() => __DragState();
}

class __DragState extends State<_Drag> {
  double _top = 0.0;
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          child: GestureDetector(
            child: CircleAvatar(
              child: Text("A"),
            ),
            onPanDown: (DragDownDetails e) {
              print("用户手指按下，${e.globalPosition}");
            },
            onPanUpdate: (DragUpdateDetails e) {
              setState(() {
                _left += e.delta.dx;
                _top += e.delta.dy;
              });
            },
            onPanEnd: (DragEndDetails e) {
              print(e.velocity);
            },
          ),
          top: _top,
          left: _left,
        )
      ],
    );
  }
}
