import 'package:flutter/material.dart';

class FormTestRoute extends StatefulWidget {
  @override
  _FromTestRouteState createState() => new _FromTestRouteState();
}

class _FromTestRouteState extends State<FormTestRoute> {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _fromKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Test"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Form(
            key: _fromKey,
            autovalidate: true,
            child: Column(
              children: <Widget>[
                TextFormField(
                  autofocus: true,
                  controller: _unameController,
                  decoration: InputDecoration(
                      labelText: "用户名",
                      hintText: "请输入用户名",
                      icon: Icon(Icons.person)),
                  validator: (v) {
                    return v.trim().length > 0 ? null : "用户名不能为空";
                  },
                ),
                TextFormField(
                  controller: _pwdController,
                  decoration: InputDecoration(
                      labelText: "密码",
                      hintText: "请输入登录密码",
                      icon: Icon(Icons.lock)),
                  obscureText: true,
                  validator: (v) {
                    return v.trim().length > 5 ? null : "密码不能少于6位";
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
//                        通过Builder来获取RaisedButton所在widget树的真正context（Element）
                        child: Builder(builder: (context) {
                          return RaisedButton(
                            onPressed: () {
//                          由于本widget也是Form的子代widget，所以可以通过下面的方式获取FormState
                              if (Form.of(context).validate()) {
                                print("验证码通过");
                              }
                            },
                            child: Text("登录"),
                            padding: EdgeInsets.all(15.0),
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                          );
                        }),
//                          child: RaisedButton(
//                        onPressed: () {
//                          if ((_fromKey.currentState as FormState).validate()) {
//                            //通过
//                            print("验证码通过");
//                          } else {
//                            print("验证码不通过");
//                          }
//                        },
//                        padding: EdgeInsets.all(15.0),
//                        child: Text("登录"),
//                        color: Theme.of(context).primaryColor,
//                        textColor: Colors.white,
//                      )
                      )
                    ],
                  ),
                ),
//                模糊进度条（会执行一个动画）
                LinearProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.red),
                ),
//                进度条显示50%
                LinearProgressIndicator(
                  backgroundColor: Colors.white,
                  value: .5,
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                ),
//                模糊进度条（会执行一个旋转动画）
                CircularProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
// strokeWidth表示圆形进度条的粗细
                  strokeWidth: 4,
                ),
//                进度条显示50%（会显示一个半圆）
                CircularProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                  value: .5,
                  strokeWidth: 10,
                ),
                SizedBox(
                  height: 30,
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.grey[200],
                    valueColor: AlwaysStoppedAnimation(Colors.blue),
                    value: .5,
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 250,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.grey[200],
                    valueColor: AlwaysStoppedAnimation(Colors.blue),
                    value: null,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
