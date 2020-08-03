import 'package:flutter/material.dart';

class ListViewTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text("$index"));
        },
        itemCount: 100,
        itemExtent: 50.0,
      ),
//      body: ListView(
      //可滚动组件通过一个List来作为其children属性时，只适用于子组件较少的情况
//        children: <Widget>[
//          const Text("I\'m dedicating every day to you"),
//          const Text("Domestic life was never quite my style"),
//          const Text("啊大大啊啊啊啊啊啊啊啊啊啊啊啊啊啊a"),
//          const Text("次次次次次次次次次次错错错错错错"),
//          const Text("嘎嘎嘎嘎嘎过过过过过过过过过过过过过"),
//        ],
//      ),
      backgroundColor: Colors.green,
    );
  }
}
