import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TipRoute extends StatelessWidget {
  final String text;

  TipRoute({
    Key key,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("提示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("这是上一页传过来的值：$text"),
              RaisedButton(
                onPressed: () => {
                  Navigator.pop(context, "我是返回值")
//                 Navigator.pushNamed(context, "/")
                },
                child: Text("返回"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
