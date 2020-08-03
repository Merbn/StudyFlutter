import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: ClipOval(
                      child: Image.asset(
                        "images/avatar.png",
                        width: 80,
                      ),
                    ),
                  ),
                  Text(
                    "Merbng",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
                child: ListView(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.adb),
                  title: const Text("Add account"),
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text("Manage accounts"),
                )
              ],
            ))
          ],
        ),
        removeTop: true,
      ),
    );
  }
}
