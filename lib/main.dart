import 'package:flutter/material.dart';
import 'package:study_flutter_app/InfiniteGridTestRoute.dart';
import 'package:study_flutter_app/TipRoute.dart';
import 'NewRoute.dart';
import 'RouterTestRoute.dart';
import 'RandomWordWidget.dart';
import 'FocusTestRoute.dart';
import 'FormTestRoute.dart';
import 'ProgressRoute.dart';
import 'RowTestRoute.dart';
import 'ColumnTestRoute.dart';
import 'FlexLayoutTestRoute.dart';
import 'FlowTestRoute.dart';
import 'StackTestRoute.dart';
import 'AlignTestRoute.dart';
import 'PaddingTestRoute.dart';
import 'DecoratedBoxTestRoute.dart';
import 'TransformTestRoute.dart';
import 'ContainerTestRoute.dart';
import 'ScaffoldTestRoute.dart';
import 'ClipTestRoute.dart';
import 'SingleChildScrollViewTestRoute.dart';
import 'ListViewTestRoute.dart';
import 'ListView3.dart';
import 'InfiniteListView.dart';
import 'GridTestRoute.dart';
import 'CustomScrollViewTestRoute.dart';
import 'ScrollControllerTestRoute.dart';
import 'ScrollNofificationTestRoute.dart';
import 'WillPopScopeTestRoute.dart';
import 'ThemeTestRoute.dart';
import 'FutureBuilderTestRoute.dart';
import 'StreamBuilderTestRoute.dart';
import 'DialogTestRoute.dart';
import 'widgets/page_scafflod.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
//      initialRoute: "/",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
//      onGenerateRoute: (RouteSettings settings) {
//        return MaterialPageRoute(builder: (context) {
//          String routeName = settings.name;
//
//        });
//      },
      routes: {
        "/": (context) => MyHomePage(
              title: "Flutter Demo Home page",
            ),
        "new_page": (context) => NewRoute(),
        "new_page_test": (context) => RouterTestRoute(),
        "new_page_focus": (context) => FocusTestRoute(),
        "new_page_form": (context) => FormTestRoute(),
        "new_page_progress": (context) => ProgressRoute(),
        "new_page_row": (context) => RowTestRoute(),
        "new_page_column": (context) => ColumnTestRoute(),
        "new_page_flex": (context) => FlexLayoutTestRoute(),
        "new_page_flow": (context) => FlowTestRoute(),
        "new_page_stack": (context) => StackTestRoute(),
        "new_page_align": (context) => AlignTestRoute(),
        "new_page_padding": (context) => PaddingTestRoute(),
        "new_page_decoratedbox": (context) => DecoratedBoxTestRoute(),
        "new_page_transform": (context) => TransformTestRoute(),
        "new_page_container": (context) => ContainerTestRoute(),
        "new_page_scaffold": (context) => ScaffoldTestRoute(),
        "new_page_clip": (context) => ClipTestRoute(),
        "new_page_singleChildScrollView": (context) =>
            SingleChildScrollViewTestRoute(),
//        "new_page_listView": (context) => ListViewTestRoute(),
//        "new_page_listView": (context) => ListView3(),
        "new_page_listView": (context) => InfiniteListView(),
        "new_page_gridview": (context) => GridTestRoute(),
        "new_page_infinite_gridview": (context) => InfiniteGridView(),
        "new_page_custom_scrollview": (context) => CustomScrollViewTestRoute(),
        "new_page_scrollcontroller": (context) => ScrollControllerTestRoute(),
        "new_page_scroll_notification": (context) =>
            ScrollNofificationTestRoute(),
        "new_page_will_popscope": (context) => WillPopScopeTestRoute(),
        "new_page_them": (context) => ThemeTestRoute(),
        "new_page_future_builder": (context) => FutureBuilderTestRoute(),
        "new_page_stream_builder": (context) => StreamBuilderTestRoute(),
        "new_page_dialog": (context) => DialogTestRoute(),
        "new_page_tip": (context) => TipRoute(
              text: ModalRoute.of(context).settings.arguments,
            )
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          ExpansionTile(
            title: Text("第一个Flutter应用"),
            children: _generateItem(
                context, [PageInfo("路由传值", (ctx) => RouterTestRoute())]),
          ),
          ExpansionTile(
            title: Text("基础组件"),
            children: _generateItem(context, [
              PageInfo("输入框", (cxt) => FocusTestRoute()),
              PageInfo("表单&进度条", (cxt) => FormTestRoute()),
              PageInfo("进度色动画", (cxt) => ProgressRoute()),
              PageInfo("裁剪：Clip", (cxt) => ClipTestRoute()),
              PageInfo("固定数量的：Gridview", (cxt) => GridTestRoute()),
              PageInfo("异步数据源的：Gridview", (cxt) => InfiniteGridView()),
              PageInfo("导航返回拦截：WillPopScope", (cxt) => WillPopScopeTestRoute()),
              PageInfo(
                  "异步UI更新：FutureBuilder", (cxt) => FutureBuilderTestRoute()),
              PageInfo(
                  "异步UI更新：StreamBuilder", (cxt) => StreamBuilderTestRoute()),
              PageInfo("SingleChildScrollView",
                  (cxt) => SingleChildScrollViewTestRoute()),
              PageInfo("ListView", (cxt) => ListViewTestRoute()),
              PageInfo("下划线ListView", (cxt) => ListView3()),
              PageInfo("带头部ListView", (cxt) => InfiniteListView()),
            ]),
          ),
          ExpansionTile(
            title: Text("布局类组件"),
            children: _generateItem(context, [
              PageInfo("线性布局：Row", (cxt) => RowTestRoute()),
              PageInfo("线性布局：Column", (cxt) => ColumnTestRoute()),
              PageInfo("弹性布局：Flex", (cxt) => FlexLayoutTestRoute()),
              PageInfo("流式布局：Flow", (cxt) => FlowTestRoute()),
              PageInfo("层叠布局：Stack", (cxt) => StackTestRoute()),
              PageInfo("对齐：Align", (cxt) => AlignTestRoute()),
              PageInfo("填充：Padding", (cxt) => PaddingTestRoute()),
            ]),
          ),
          ExpansionTile(
            title: Text("容器类组件"),
            children: _generateItem(context, [
              PageInfo("装饰容器：DecoratedBox", (cxt) => DecoratedBoxTestRoute()),
              PageInfo("变换：Transform", (cxt) => TransformTestRoute()),
              PageInfo("容器：Container", (cxt) => ContainerTestRoute()),
              PageInfo("Scaffold", (cxt) => ScaffoldTestRoute()),
            ]),
          ),
          ExpansionTile(
            title: Text("功能性组件"),
            children: _generateItem(context, [
              PageInfo("Theme", (cxt) => ThemeTestRoute()),
              PageInfo("对话框", (cxt) => DialogTestRoute()),
            ]),
          ),
          ExpansionTile(
            title: Text("事件处理与通知"),
            children: _generateItem(context, [
              PageInfo("滚动控制：ScrollController",
                  (cxt) => ScrollControllerTestRoute()),
              PageInfo("滚动监听", (cxt) => ScrollNofificationTestRoute()),
            ]),
          ),
          ExpansionTile(
            title: Text("自定义组件"),
            children: _generateItem(context, [
              PageInfo("CustomScrollView", (cxt) => CustomScrollViewTestRoute()),
            ]),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.adb),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  List<Widget> _generateItem(BuildContext context, List<PageInfo> children) {
    return children.map<Widget>((page) {
      return ListTile(
        title: Text(page.title),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => _openPage(context, page),
      );
    }).toList();
  }

  void _openPage(BuildContext context, PageInfo page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      if (!page.withScaffold) {
        return page.builder(context);
      }
      return PageScaffold(
          title: page.title,
          body: page.builder(context),
          padding: page.padding);
    }));
  }
}
