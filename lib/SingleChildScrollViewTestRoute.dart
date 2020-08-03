import 'package:flutter/material.dart';

class SingleChildScrollViewTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return Scaffold(
      body: Scrollbar(
          child: SingleChildScrollView(
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: str
                .split("")
                .map((e) => Text(
                      e,
                      textScaleFactor: 2.0,
                    ))
                .toList(),
          ),
        ),
      )),
      backgroundColor: Colors.green,
    );
  }
}
