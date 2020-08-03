import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*Container({
  this.alignment,
  this.padding, //容器内补白，属于decoration的装饰范围
  Color color, // 背景色
  Decoration decoration, // 背景装饰
  Decoration foregroundDecoration, //前景装饰
  double width,//容器的宽度
  double height, //容器的高度
  BoxConstraints constraints, //容器大小的限制条件
  this.margin,//容器外补白，不属于decoration的装饰范围
  this.transform, //变换
  this.child,
})*/
class ContainerTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 150.0, left: 120.0),

        //容器外填充
        constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0),
        //卡片大小
        decoration: BoxDecoration(
            //背景装饰
            gradient: RadialGradient(
                //背景径向渐变
                colors: [Colors.red, Colors.orange],
                center: Alignment.topLeft,
                radius: .98),
            boxShadow: [
              //卡片阴影
              BoxShadow(
                  color: Colors.black54,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 4.0)
            ]),
        transform: Matrix4.rotationZ(.2),
        //卡片倾斜变换
        alignment: Alignment.center,
        //卡片内文字居中
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            //卡片文字
            "测试测试测试测试测试测试测试测试测试",
            style: TextStyle(color: Colors.white, fontSize: 40.0),
          ),
        ),
      ),
    );
  }
}
