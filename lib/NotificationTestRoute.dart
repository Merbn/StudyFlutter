import 'package:flutter/material.dart';

class NotificationTestRoute extends StatefulWidget {
  @override
  _NotificationTestRouteState createState() => _NotificationTestRouteState();
}

class _NotificationTestRouteState extends State<NotificationTestRoute> {
  @override
  Widget build(BuildContext context) {
//        return NotificationListener(
//  只会在滚动结束时才会触发此回调
    return NotificationListener<ScrollEndNotification>(
      child: ListView.builder(
        itemBuilder: (content, index) {
          return ListTile(
            title: Text("$index"),
          );
        },
        itemCount: 100,
      ),
      onNotification: (notification) {
        print(notification);
        switch (notification.runtimeType) {
          case ScrollStartNotification:
            print("开始滚动");
            break;
          case ScrollUpdateNotification:
            print("正在滚动");
            break;
          case ScrollEndNotification:
            print("滚动停止");
            break;
          case OverscrollNotification:
            print("滚动到边界");
            break;
        }
      },
    );
  }
}
