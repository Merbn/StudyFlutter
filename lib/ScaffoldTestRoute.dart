import 'package:flutter/material.dart';
import 'MyDrawer.dart';

/*AppBar({
  Key key,
  this.leading, //导航栏最左侧Widget，常见为抽屉菜单按钮或返回按钮。
  this.automaticallyImplyLeading = true, //如果leading为null，是否自动实现默认的leading按钮
  this.title,// 页面标题
  this.actions, // 导航栏右侧菜单
  this.bottom, // 导航栏底部菜单，通常为Tab按钮组
  this.elevation = 4.0, // 导航栏阴影
  this.centerTitle, //标题是否居中
  this.backgroundColor,
  ...   //其它属性见源码注释
})*/
class ScaffoldTestRoute extends StatefulWidget {
  @override
  _ScaffoldRoutestState createState() => _ScaffoldRoutestState();
}

class _ScaffoldRoutestState extends State<ScaffoldTestRoute>
    with SingleTickerProviderStateMixin {
  int _selectdIndex = 1;
  TabController _tabController;
  List tabs = ["新闻", "历史", "图片"];

  @override
  void initState() {
    super.initState();
    // 创建Controller
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Name"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.person), onPressed: () {})
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs
              .map((e) => Tab(
                    text: e,
                  ))
              .toList(),
        ),
        leading: Builder(builder: (context) {
          return IconButton(
              icon: Icon(Icons.dashboard),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              });
        }),
        elevation: 104.0,
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      drawer: new MyDrawer(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Row(
          children: <Widget>[
            IconButton(icon: Icon(Icons.home), onPressed: null),
            SizedBox(),
            IconButton(icon: Icon(Icons.business), onPressed: null)
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
      ),
//      bottomNavigationBar: BottomNavigationBar(
//        items: <BottomNavigationBarItem>[
//          BottomNavigationBarItem(
//              icon: Icon(
//                Icons.home,
//              ),
//              title: Text("HOME")),
//          BottomNavigationBarItem(
//              icon: Icon(
//                Icons.home,
//              ),
//              title: Text("Business")),
//          BottomNavigationBarItem(
//              icon: Icon(
//                Icons.home,
//              ),
//              title: Text("School"))
//        ],
//      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onAdd,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: TabBarView(
        children: tabs.map((e) {
          return Container(
            alignment: Alignment.center,
            child: Text(
              e,
              textScaleFactor: 5,
            ),
          );
        }).toList(),
        controller: _tabController,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectdIndex = index;
    });
  }

  void _onAdd() {}
}
