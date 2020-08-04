import 'package:flutter/material.dart';

class GestureDetectorTestRoute extends StatefulWidget {
  @override
  _GestureDetectorTestRouteState createState() =>
      _GestureDetectorTestRouteState();
}

class _GestureDetectorTestRouteState extends State<GestureDetectorTestRoute> {
  String _operation = "No Gesture detected!"; //保存事件名

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _ScaleTestRoute(),
        DragVertical(),
        Drag(),

        Center(
          child: GestureDetector(
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              width: 200.0,
              height: 100.0,
              child: Text(
                _operation,
                style: TextStyle(color: Colors.white),
              ),
            ),
            onTap: () => updateText("Tap"),
//        注意： 当同时监听onTap和onDoubleTap事件时，当用户触发tap事件时，会有200毫秒左右的延时，这是因为当用户点击完之后很可能会再次点击以触发双击事件，所以GestureDetector会等一段时间来确定是否为双击事件。如果用户只监听了onTap（没有监听onDoubleTap）事件时，则没有延时。
            onDoubleTap: () => updateText("DoubleTap"),
            onLongPress: () => updateText("LongPress"),
          ),
        ),
      ],
//      全屏拖动
//      child: Drag(),
//    单一方向拖动
    );
  }

  updateText(String text) {
    setState(() {
      _operation = text;
    });
  }
}

//拖动
class Drag extends StatefulWidget {
  @override
  __DragState createState() => __DragState();
}

class __DragState extends State<Drag> {
  double _top = 0.0;
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          child: GestureDetector(
            child: CircleAvatar(
              child: Text(
                "t:${_top},l:${_left}",
              ),
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

//单一方向拖动
class DragVertical extends StatefulWidget {
  @override
  _DragVerticalState createState() => _DragVerticalState();
}

class _DragVerticalState extends State<DragVertical> {
  double _top = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          child: GestureDetector(
            child: CircleAvatar(
              child: Text("A"),
            ),
            onVerticalDragUpdate: (DragUpdateDetails details) {
              setState(() {
                _top += details.delta.dy;
              });
            },
          ),
          top: _top,
        )
      ],
    );
  }
}

class _ScaleTestRoute extends StatefulWidget {
  @override
  _ScaleTestRouteState createState() => _ScaleTestRouteState();
}

class _ScaleTestRouteState extends State<_ScaleTestRoute> {
  double _width = 200.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Image.asset("images/avatar2.jpg", width: _width),
        onScaleUpdate: (ScaleUpdateDetails details) {
          setState(() {
            _width = 200 * details.scale.clamp(.8, 10.0);
          });
        },),);
  }
}
