import 'package:flutter/material.dart';

class FutureBuilderTestRoute extends StatefulWidget {
  @override
  _FutureBuilderTestRouteState createState() => _FutureBuilderTestRouteState();
}

class _FutureBuilderTestRouteState extends State<FutureBuilderTestRoute> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<String>(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text("Error:${snapshot.error}");
            } else {
              return Text("Contents:${snapshot.data}");
            }
          } else {
            return CircularProgressIndicator();
          }
        },
        future: mockNetworkData(),
      ),
    );
  }

  Future<String> mockNetworkData() async {
    return Future.delayed(Duration(seconds: 2), () => "我是从网上呼气的数据");
  }
}
