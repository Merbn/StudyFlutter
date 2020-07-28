import 'package:flutter/cupertino.dart';
import 'package:study_flutter_app/TapBoxB.dart';
import 'package:study_flutter_app/TapboxC.dart';

class ParentWidgetC extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ParentWidgetCStaste();
  }
}

class _ParentWidgetCStaste extends State<ParentWidgetC> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new TapboxC(active: _active, onChanged: _handleTapboxChanged),
    );
  }
}
