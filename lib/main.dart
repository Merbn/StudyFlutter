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
        "new_page_singleChildScrollView": (context) => SingleChildScrollViewTestRoute(),
//        "new_page_listView": (context) => ListViewTestRoute(),
//        "new_page_listView": (context) => ListView3(),
        "new_page_listView": (context) => InfiniteListView(),
        "new_page_gridview": (context) => GridTestRoute(),
        "new_page_infinite_gridview": (context) => InfiniteGridView(),
        "new_page_custom_scrollview": (context) => CustomScrollViewTestRoute(),
        "new_page_scrollcontroller": (context) => ScrollControllerTestRoute(),
        "new_page_scroll_notification": (context) => ScrollNofificationTestRoute(),
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'ffffffffffffix:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              FlatButton(
                onPressed: () {
//                debugDumpApp();
                  //导航到新路由
                  Navigator.pushNamed(context, "new_page");
//                Navigator.pushNamed(context, "new_page_test", arguments: "危险品");
//                Navigator.pushNamed(context, "new_page_tip", arguments: "危险品");
//                Navigator.of(context)
//                    .push(MaterialPageRoute(builder: (context) {
//                  return RouterTestRoute();
//                }));
                },
                child: Text("打开新的页面 并传值：危险品"),
                textColor: Colors.red,
              ),
              RandomWordWidget(),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_focus");
                },
                child: Text("控制焦点"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_form");
                },
                child: Text("表单&进度条"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_progress");
                },
                child: Text("进度色动画"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_row");
                },
                child: Text("线性布局：Row"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_column");
                },
                child: Text("线性布局：Column"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_flex");
                },
                child: Text("弹性布局：Flex"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_flow");
                },
                child: Text("流式布局：Flow"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_stack");
                },
                child: Text("层叠布局：Stack"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_align");
                },
                child: Text("对齐：Align"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_padding");
                },
                child: Text("填充：Padding"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_decoratedbox");
                },
                child: Text("装饰容器：DecoratedBox"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_transform");
                },
                child: Text("变换：Transform"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_container");
                },
                child: Text("容器：Container"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_scaffold");

                },
                child: Text("Scaffold"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_clip");
                },
                child: Text("裁剪：Clip"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_singleChildScrollView");
                },
                child: Text("SingleChildScrollView"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_listView");
                },
                child: Text("ListView"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_gridview");
                },
                child: Text("固定数量的：Gridview"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_infinite_gridview");
                },
                child: Text("异步数据源的：Gridview"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_custom_scrollview");
                },
                child: Text("CustomScrollView"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_scrollcontroller");
                },
                child: Text("ScrollController"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_scroll_notification");
                },
                child: Text("滚动监听"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_will_popscope");
                },
                child: Text("导航返回拦截：WillPopScope"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_them");
                },
                child: Text("Theme"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_future_builder");
                },
                child: Text("异步UI更新：FutureBuilder"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_stream_builder");
                },
                child: Text("异步UI更新：StreamBuilder"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "new_page_dialog");
                },
                child: Text("对话框"),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.adb),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
