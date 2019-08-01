import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('首页'),
            leading: Icon(Icons.home),
          ),
           ListTile(
            title: Text('设置'),
            leading: Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}