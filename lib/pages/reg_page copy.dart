import 'package:flutter/material.dart';

class RegPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('用户注册'),
      ),
      body:  Container(
        color: Colors.white,
        child: Column(
         children: <Widget>[
            RaisedButton(
              child: Text('返回首页'),
              onPressed: (){
                Navigator.pushNamed(context, '/');
              },
            ),
         ],
        ),
      )

    );
  }
}