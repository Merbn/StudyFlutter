import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_flutter_app/TipRoute.dart';

class RouterTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;
    return Center(
      child: RaisedButton(
        onPressed: () async {
          var result = await Navigator.push(context,
              MaterialPageRoute(builder: (context) {
            return TipRoute(
              text: "【数据】",
            );
          }));
          print("路由返回值：$result");
        },
        child: Text("打开提示页：把【数据】传到下一页---------$args"),
      ),
    );
  }
}
