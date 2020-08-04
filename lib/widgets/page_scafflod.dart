import 'package:flutter/material.dart';

class PageScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final bool padding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: padding
          ? Padding(
              padding: const EdgeInsets.all(16.0),
              child: body,
            )
          : body,
    );
  }

  PageScaffold({this.title, this.body, this.padding});
}

class PageInfo {
  String title;
  WidgetBuilder builder;
  bool withScaffold;
  bool padding;

  PageInfo(this.title, this.builder,
      {this.withScaffold = true, this.padding = true});
}
