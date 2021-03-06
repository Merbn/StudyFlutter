import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TapboxC extends StatefulWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

  TapboxC({Key key, this.active: false, @required this.onChanged})
      : super(key: key);

  @override
  _TapboxCState createState() => new _TapboxCState();
}

class _TapboxCState extends State<TapboxC> {
  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTap: _handleTap,
      onTapCancel: _handleTapCancel,
      child: new Container(
        child: new Center(
          child: Text.rich(TextSpan(children: [
            TextSpan(text: "Home: "),
            TextSpan(
                text: "https://www.baodi.com",
                style: TextStyle(color: Colors.blue),)
          ])) /* new Text(
            widget.active ? '活着' : '失去',
            style: new TextStyle(
                fontSize: 32.0,
                color: Colors.white,
                height: 1.2,
                fontFamily: "Courier",
                background: new Paint()..color = Colors.red,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed),
          )*/
          ,
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
            color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
            border: _highlight
                ? new Border.all(color: Colors.teal[700], width: 10.0)
                : null),
      ),
    );
  }
}
