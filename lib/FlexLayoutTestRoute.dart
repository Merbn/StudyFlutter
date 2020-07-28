import 'package:flutter/material.dart';

class FlexLayoutTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0, // 主轴(水平)方向间距
      runSpacing: 4.0, // 纵轴（垂直）方向间距
      alignment: WrapAlignment.center, //沿主轴方向居中
      children: <Widget>[
        new Chip(
          avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
          label: new Text('Hamilton'),
        ),
        new Chip(
          avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
          label: new Text('Lafayette'),
        ),
        new Chip(
          avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
          label: new Text('Mulligan'),
        ),
        new Chip(
          avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
          label: new Text('Laurens'),
        ),
      ],
    );
  }
//    return Column(
//      children: <Widget>[
//        Flex(
//          direction: Axis.horizontal,
//          children: <Widget>[
//            Expanded(
//              child: Container(
//                height: 30.0,
//                color: Colors.red,
//              ),
//              flex: 1,
//            ),
//            Expanded(
//              child: Container(
//                height: 30.0,
//                color: Colors.green,
//              ),
//              flex: 2,
//            ),
//          ],
//        ),
//        Padding(
//          padding: const EdgeInsets.only(top: 20.0),
//          child: SizedBox(
//            height: 100.0,
//            child: Flex(
//              direction: Axis.vertical,
//              children: <Widget>[
//                Expanded(
//                  child: Container(
//                    height: 30.0,
//                    color: Colors.yellow,
//                  ),
//                  flex: 2,
//                ),
//                Spacer(
//                  flex: 1,
//                ),
//                Expanded(
//                    flex: 1,
//                    child: Container(
//                      height: 30.0,
//                      color: Colors.orange,
//                    ))
//              ],
//            ),
//          ),
//        )
//      ],
//    );
//  }
}
