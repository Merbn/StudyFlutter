import 'package:flutter/material.dart';

class StackTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            child: Text(
              "hhhh",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
          ),
          Positioned(
            child: Text("i am jack"),
            left: 29.0,
          ),
          Positioned(
            child: Text("假假按揭"),
            top: 50.0,
          )
        ],
      ),
    );
  }
}
