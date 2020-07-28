import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key key, this.initValue: 0});

  final int initValue;

  @override
  _CounterWidgetState createState() => new _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter;

  @override
  void initState() {
    super.initState();
//    初始化状态
    _counter = widget.initValue;
    print("============================initState");
  }

  @override
  Widget build(BuildContext context) {
    print("============================build");
//    return Text("想，，想");
//    return Scaffold(
//      body: Center(
//        child: FlatButton(
//          onPressed: () => {setState(() => ++_counter)},
//          child: Text('$_counter'),
//        ),
//      ),
//    );
    return Scaffold(
      appBar: AppBar(
        title: Text("子树中获取State对象"),
      ),
      body: Center(
        child: Builder(builder: (context) {
          return RaisedButton(
            onPressed: () {
//        查找父级最近的Scaffold 对应的 ScaffoldState对象
//              ScaffoldState _state = context.findAncestorStateOfType<ScaffoldState>();
              ScaffoldState _state = Scaffold.of(context);
              _state.showSnackBar(SnackBar(content: Text("我是SnackBar")));
            },
            child: Text("显示SnackBar"),
          );
        }),
      ),
    );
  }

  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("============================diaUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("============================deactovate");
  }

  @override
  void dispose() {
    super.dispose();
    print("============================dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("============================reassemle");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("============================didChangeDependenies");
  }
}
