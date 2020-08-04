import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GestureRecognizer extends StatefulWidget {
  @override
  _GestureRecognizerState createState() => _GestureRecognizerState();
}

class _GestureRecognizerState extends State<GestureRecognizer> {
  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();
  bool _toggle = false;

  @override
  void dispose() {
//    注意：使用GestureRecognizer后一定要调用其dispose()方法来释放资源（主要是取消内部的计时器）
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(TextSpan(children: [
        TextSpan(text: "弄不好"),
        TextSpan(
            text: "点我变色",
            style: TextStyle(
                fontSize: 30.0, color: _toggle ? Colors.blue : Colors.red),
            recognizer: _tapGestureRecognizer
              ..onTap = () {
                setState(() {
                  _toggle = !_toggle;
                });
              }),
        TextSpan(text: "嘛嘛嘛")
      ])),
    );
  }
}
