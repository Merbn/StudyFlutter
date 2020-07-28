import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:study_flutter_app/CounterWidget.dart';

class _CounterWidgetState extends State<CounterWidget> {
  int _counter;

  @override
  void initState() {
    super.initState();
//    初始化状态
    _counter = widget.initValue;
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: () => {setState(() => ++_counter)},
          child: Text('$_counter'),
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("diaUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactovate");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemle");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependenies");
  }
}
