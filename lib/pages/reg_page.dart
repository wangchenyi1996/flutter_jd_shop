import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/form.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../config/NavigatorUtil.dart';

class RegPage extends StatefulWidget {
  RegPage({Key key}) : super(key: key);

  _RegPageState createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey= new GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text('用户注册', style: TextStyle(color: Colors.white)),
        centerTitle: true
      ),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
          Form(
          key: _formKey, //设置globalKey，用于后面获取FormState
          autovalidate: true, //开启自动校验
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 30.0,bottom: 30.0),
                    child: Text('Flutter Register',style: TextStyle(color: Colors.black54,fontSize: 26.0),),
                  ),
                ],
              ),
              TextFormField(
                  autofocus: true,
                  controller: _unameController,
                  decoration: InputDecoration(
                      labelText: "用户名",
                      hintText: "用户名或邮箱",
                      icon: Icon(Icons.person)
                  ),
                  // 校验用户名
                  validator: (v) {
                    return v
                        .trim()
                        .length > 0 ? null : "用户名不能为空";
                  }
              ),
              TextFormField(
                  controller: _pwdController,
                  decoration: InputDecoration(
                      labelText: "密码",
                      hintText: "您的登录密码",
                      icon: Icon(Icons.lock)
                  ),
                  obscureText: true,
                  //校验密码
                  validator: (v) {
                    return v
                        .trim()
                        .length > 5 ? null : "密码不能少于6位";
                  }
              ),

              // 登录按钮
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0,30.0,30.0,15.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.all(10.0),
                        child: Text("注册",style: TextStyle(fontSize: 20.0),),
                        color: Theme
                            .of(context)
                            .primaryColor,
                        textColor: Colors.white,
                        onPressed: () {
                          // 调用validate()方法校验用户名密码是否合法，校验
                          if((_formKey.currentState as FormState).validate()){
                            //表单输入数据
                            print(_pwdController.text);
                            print(_unameController.text);
                            if(_unameController.text!='wangqiang'){
                               Fluttertoast.showToast(
                                msg: "注册成功哦，快去逛逛把",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIos: 1,
                                backgroundColor: Colors.blue[50],
                                textColor: Colors.black38,
                                fontSize: 16.0
                              );
                              // Navigator.pushNamed(context, '/root');
                              NavigatorUtil.goRegPage(context);
                            }else{
                              Fluttertoast.showToast(
                                msg: "此用户已存在，请重新注册",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIos: 1,
                                backgroundColor: Colors.blue[50],
                                textColor: Colors.black38,
                                fontSize: 16.0
                              );
                              _unameController.text='';
                              _pwdController.text='';
                            }
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
          ],
        )
      )
    );
  }
}