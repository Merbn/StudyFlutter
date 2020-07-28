import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TapBoxB extends StatelessWidget {
  final bool active;
  final ValueChanged<bool> onChange;

  TapBoxB({Key key, this.active: false, @required this.onChange})
      : super(key: key);

  void _handleTap() {
    onChange(!active);
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
            color: active ? Colors.lightGreen[700] : Colors.grey[600]),
      ),
    );
  }
}
