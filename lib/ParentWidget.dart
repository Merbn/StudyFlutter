import 'package:flutter/cupertino.dart';
import 'package:study_flutter_app/TapBoxB.dart';

class ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ParentWidgetState();
  }
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTapboxChange(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new TapBoxB(onChange: _handleTapboxChange, active: _active,),);
  }
}
