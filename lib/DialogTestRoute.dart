import 'package:flutter/material.dart';

class DialogTestRoute extends StatefulWidget {
  @override
  _DialogTestRouteState createState() => _DialogTestRouteState();
}

class _DialogTestRouteState extends State<DialogTestRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("对话框"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () async {
                bool delect = await showDeleteDialog1();
              },
              child: Text("对话框1"),
            ),
            RaisedButton(
              onPressed: () {
                changeLanguage();
              },
              child: Text("对话框2"),
            ),
            RaisedButton(
              onPressed: () {
                showListDialog();
              },
              child: Text("列表选择框"),
            )
          ],
        ),
      ),
    );
  }

  Future<bool> showDeleteDialog1() {
    return showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("提示"),
            content: Text("您确定要删除当前文件吗"),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("取消")),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: Text("删除")),
            ],
          );
        });
  }

  Future<void> changeLanguage() async {
    int i = await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("请选择语言"),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: const Text("中文简体"),
                ),
              ),
              SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, 2);
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: const Text("美国英语"),
                  ))
            ],
          );
        });
    if (i != null) {
      print("选择了：${i == 1 ? "中文简体" : "美国英语"}");
    }
  }

  Future<void> showListDialog() async {
    int index = await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          var child = Column(
            children: <Widget>[
              ListTile(
                title: Text("请选择"),
              ),
              Expanded(
                  child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text("$index"),
                    onTap: () => Navigator.of(context).pop(index),
                  );
                },
                itemCount: 30,
              ))
            ],
          );
          return UnconstrainedBox(
            constrainedAxis: Axis.vertical,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 280,
              ),
              child: Material(
                child: child,
                type: MaterialType.card,
              ),
            ),
          );
//          return Dialog(
//            child: child,
//          );
        });
    if (index != null) {
      print("点击了：$index");
    }
  }
}
