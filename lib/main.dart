import 'package:flutter/material.dart';
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
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
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
        "new_page_tip": (context) => TipRoute(
              text: ModalRoute.of(context).settings.arguments,
            )
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
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
              child: Text("Row"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "new_page_column");
              },
              child: Text("Column"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "new_page_flex");
              },
              child: Text("Flex"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "new_page_flow");
              },
              child: Text("Flow"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "new_page_stack");
              },
              child: Text("Stack"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "new_page_align");
              },
              child: Text("Align"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "new_page_padding");
              },
              child: Text("Padding"),
            )
          ],
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
