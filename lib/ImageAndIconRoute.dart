import 'package:flutter/material.dart';
import 'package:study_flutter_app/MyIcons.dart';

class ImageAndIconRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var img = AssetImage("images/avatar.png");
    var img2 = NetworkImage(
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1595839735524&di=759e8a1bd70bf8126d70f29a229b9065&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201703%2F20%2F20170320112905_5zhQ3.jpeg");
    return SingleChildScrollView(
      child: Column(
          children: <Image>[
            Image(
              image: img,
              height: 50.0,
              width: 100.0,
              fit: BoxFit.fill,
            ),
            Image(
              image: img,
              height: 50,
              width: 50.0,
              fit: BoxFit.contain,
            ),
            Image(
              image: img,
              width: 100.0,
              height: 50.0,
              fit: BoxFit.cover,
            ),
            Image(
              image: img,
              width: 100.0,
              height: 50.0,
              fit: BoxFit.fitWidth,
            ),
            Image(
              image: img,
              width: 100.0,
              height: 50.0,
              fit: BoxFit.fitHeight,
            ),
            Image(
              image: img,
              width: 100.0,
              height: 50.0,
              fit: BoxFit.scaleDown,
            ),
            Image(
              image: img,
              height: 50.0,
              width: 100.0,
              fit: BoxFit.none,
            ),
            Image(
              image: img,
              width: 100.0,
              color: Colors.yellow,
              colorBlendMode: BlendMode.difference,
              fit: BoxFit.fill,
            ),
            Image(
              image: img,
              width: 100.0,
              height: 200.0,
              repeat: ImageRepeat.repeatY ,
            )
          ].map((e){
            String icons ="";
            icons+="\uE914";
            icons+="\uE000";
            icons+="\uE90D";
            return Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: 100,
                    child: e,
                  ),
                ),
                Text(/*e.fit.toString()*/icons,style: TextStyle(fontSize: 20.0,color: Colors.yellow,fontFamily: "MaterialIcons"),)
                ,Icon(Icons.accessible,color: Colors.grey,)
                ,Icon(Icons.error,color: Colors.yellow,)
                ,Icon(Icons.flare,color: Colors.red,)
                ,Icon(MyIcons.book,color: Colors.yellow,)
              ],
            );
          }).toList()
      ),
    );
  }
}
