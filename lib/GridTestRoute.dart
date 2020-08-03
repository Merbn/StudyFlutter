import 'package:flutter/material.dart';

class GridTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView.extent(
        //Gridview.extent构造函数内部使用了SliverGridDelegateWithMaxCrossAxisExtent，我们可以通过它可以快速创建纵轴子元素为固定最大长度的Gridview
        maxCrossAxisExtent: 120.0,
        childAspectRatio: 2.0,
        children: <Widget>[
          Icon(Icons.ac_unit),
          Icon(Icons.airport_shuttle),
          Icon(Icons.all_inclusive),
          Icon(Icons.beach_access),
          Icon(Icons.cake),
          Icon(Icons.free_breakfast),
        ],
      ),
//等价于上面代码
//      body: GridView(
//        padding: EdgeInsets.zero,
//        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//            maxCrossAxisExtent: 120.0, childAspectRatio: 2.0),
//        children: <Widget>[
//          Icon(Icons.ac_unit),
//          Icon(Icons.airport_shuttle),
//          Icon(Icons.all_inclusive),
//          Icon(Icons.beach_access),
//          Icon(Icons.cake),
//          Icon(Icons.free_breakfast),
//        ],
//      ),
//      body: GridView.count(//Gridview.count 构造函数内部使用了SliverGridDelegateWithFixedCrossAxisCount，我们可以通过它可以快速创建横轴固定数量子元素的Gridview
//        crossAxisCount: 3,
//        childAspectRatio: 1.0,
//        children: <Widget>[
//          Icon(Icons.ac_unit),
//          Icon(Icons.airport_shuttle),
//          Icon(Icons.all_inclusive),
//          Icon(Icons.beach_access),
//          Icon(Icons.cake),
//          Icon(Icons.free_breakfast),
//        ],
//      ),
//等价与
//      body: GridView(
//        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//            crossAxisCount: 3, childAspectRatio: 1.0),
//        children: <Widget>[
//          Icon(Icons.ac_unit),
//          Icon(Icons.airport_shuttle),
//          Icon(Icons.all_inclusive),
//          Icon(Icons.beach_access),
//          Icon(Icons.cake),
//          Icon(Icons.free_breakfast),
//        ],
//      ),
    );
  }
}
