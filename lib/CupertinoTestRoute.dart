import 'package:flutter/cupertino.dart';

// ios风格
class CupertinoTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cupertino demo"),
      ),
      child: Center(
        child: CupertinoButton(
          child: Text("Press"),
          onPressed: () {},
          color: CupertinoColors.activeBlue,
        ),
      ),
    );
  }
}
