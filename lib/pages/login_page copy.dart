import 'package:flutter/material.dart';

  
class LoginPage extends StatelessWidget {

  final arguments;
  LoginPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('用户登录',style: TextStyle(color: Colors.white),),
      ),
      body:  Container(
        color: Colors.white,
        child:Column(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  Text("上页面传的参数${arguments !=null? arguments['name'] : '0'}"),
                  Text("上页面传的参数${arguments !=null? arguments['age'] : '0'}"),
                ],
              )
            ),
           
            RaisedButton(
              child: Text('登录'),
              onPressed: (){
                Navigator.pushNamed(context, '/goods');
              },
            ),
            
            RaisedButton(
              child: Text('注册'),
              onPressed: (){
                Navigator.pushNamed(context, '/reg');
              },
            )
          ],
        )
      )
    );
  }
}