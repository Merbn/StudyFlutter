import 'package:flutter/material.dart';

class DialogTestRoute extends StatefulWidget {
  @override
  _DialogTestRouteState createState() => _DialogTestRouteState();
}

class _DialogTestRouteState extends State<DialogTestRoute> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          ),
          RaisedButton(
            onPressed: () {
              showDeleteConfirmDialog4();
            },
            child: Text("对话框状态管理"),
          ),
          RaisedButton(
            onPressed: () async {
              await _showModalBottomSheet();
            },
            child: Text("底部菜单列表"),
          ),
          RaisedButton(
            onPressed: () async {
              _showBottomSheet();
            },
            child: Text("底部全屏菜单列表"),
          ),
          RaisedButton(
            onPressed: () {
              showLoadingDialog();
            },
            child: Text("加载框"),
          )
        ],
      ),
    );
  }

  Future<bool> showDeleteDialog1() {
//    showDialog
    return showCustomDialog<bool>(
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

  Future<T> showCustomDialog<T>(
      {@required BuildContext context,
      bool barrierDismissible = true,
      WidgetBuilder builder}) {
    final ThemeData theme = Theme.of(context, shadowThemeOnly: true);
    return showGeneralDialog(
        context: context,
        pageBuilder: (BuildContext buildContext, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          final Widget pageChild = Builder(builder: builder);
          return SafeArea(child: Builder(
            builder: (BuildContext context) {
              return theme != null
                  ? Theme(
                      data: theme,
                      child: pageChild,
                    )
                  : pageChild;
            },
          ));
        },
        barrierDismissible: barrierDismissible,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        transitionDuration: const Duration(milliseconds: 150),
        transitionBuilder: _buildMaterialDialogTransitions);
  }

  Widget _buildMaterialDialogTransitions(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return ScaleTransition(
      scale: CurvedAnimation(parent: animation, curve: Curves.ease),
      child: child,
    );
  }

  Future<bool> showDeleteConfirmDialog4() {
    bool _withTree = false;
    return showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("提示"),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("您确定要删除当前文件夹？"),
                Row(
                  children: <Widget>[
                    Text("同时删除子目录？"),
                    Builder(builder: (BuildContext context) {
                      return Checkbox(
                          value: _withTree,
                          onChanged: (bool value) {
                            (context as Element).markNeedsBuild();
                            _withTree = !_withTree;
                          });
                    })
                  ],
                )
              ],
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("取消")),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop(_withTree);
                  },
                  child: Text("删除"))
            ],
          );
        });
  }

//  底部菜单列表
  Future<int> _showModalBottomSheet() {
    return showModalBottomSheet<int>(
        context: context,
        builder: (BuildContext context) {
          return ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text("$index"),
                onTap: () => Navigator.of(context).pop(index),
              );
            },
            itemCount: 30,
          );
        });
  }

// 返回的是一个controller
  PersistentBottomSheetController<int> _showBottomSheet() {
    return showBottomSheet<int>(
      context: context,
      builder: (BuildContext context) {
        return ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("$index"),
              onTap: () {
                // do something
                print("$index");
                Navigator.of(context).pop();
              },
            );
          },
        );
      },
    );
  }

  void showLoadingDialog() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircularProgressIndicator(),
                Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Text("正在加载，请稍候。。。"),
                )
              ],
            ),
          );
        });
  }
}
