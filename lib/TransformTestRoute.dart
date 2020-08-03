import 'package:flutter/material.dart';
import 'dart:math' as math;

/*关于矩阵变换相关内容属于线性代数范畴，由于矩阵变化发生在绘制时，而无需重新布局和构建等过程，所以性能很好。
注意：
Transform 的变换是应有在绘制阶段，而并不是在布局（layout）阶段，所以无论对子组件应用何种变化，其占用空间的大小和在屏幕上的位置都是固定不变的，
因为这些在布局阶段就确定的。
* */
class TransformTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.red),
//          由于RotatedBox是作用于layout阶段，所以子组件会旋转90度（而不只是绘制的内容）。
//        decoration会作用到子组件所占用的实际空间上
          child: RotatedBox(
            quarterTurns: 1,
            child: Text("哈哈哈"),
          ),
        ),
        Text(
          "你还啊",
          style: TextStyle(color: Colors.green, fontSize: 18.0),
        )
      ],
    );
    /*  return Scaffold(
      appBar: AppBar(
        title: Text("transform"),
      ),
      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          child: Transform.scale(
            scale: 1.5,
            child: Text("放大1.5倍"),
          ),
//          child: Transform.rotate(
//            //旋转90度
//            angle: math.pi / 2,
//            child: Text("旋转旋转旋转"),
//          ),
//平移
//        child: Container(
//          color: Colors.red, width: 250.0, height: 50.0,
//          child: Transform.translate(
//            offset: Offset(-20.0, -5.0),
//            child: Text("哈哈哈，平移"),
//          ),

//          child: new Transform(
//            transform: new Matrix4.skewY(0.3),
//            alignment: Alignment.topRight,
//            child: new Container(
//              padding: const EdgeInsets.all(8.0),
//              color: Colors.deepOrange,
//              child: const Text("Apartment for rent !"),
//            ),
//          ),
        ),
      ),
    );*/
  }
}
