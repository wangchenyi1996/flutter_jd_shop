import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/form.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey= new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('用户登录', style: TextStyle(color: Colors.white)),
        centerTitle: true
      ),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
          Form(
          key: _formKey, //设置globalKey，用于后面获取FormState
          // autovalidate: true, //开启自动校验
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 30.0,bottom: 20.0),
                    child: Text('Flutter Login',style: TextStyle(color: Colors.black54,fontSize: 26.0),),
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
                      child: Text("登录",style: TextStyle(fontSize: 20.0),),
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
                            if(_pwdController.text=='123456'&&_unameController.text=='wangqiang'){
                              Fluttertoast.showToast(
                                msg: "登录成功，去首页逛逛吧",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIos: 1,
                                backgroundColor: Colors.blue[50],
                                textColor: Colors.black38,
                                fontSize: 16.0
                              );
                              Navigator.pushNamed(context, '/');
                            }else{
                              Fluttertoast.showToast(
                                  msg: "用户名或密码错误",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIos: 1,
                                  backgroundColor: Colors.blue[50],
                                  textColor: Colors.black38,
                                  fontSize: 16.0
                              );
                              _pwdController.text='';
                              _unameController.text='';
                            }
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  child: Text('没有账号？ 立即注册',style: TextStyle(fontSize: 16.0,color: Colors.black87)),
                  onTap: (){
                    Navigator.pushNamed(context, '/reg');
                  }
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 25.0,bottom: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(15.0),
                      width: 110.0,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey[200],width: 1.0)
                        )
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                      child: Text('其它登录方式',style: TextStyle(color: Colors.black54),),
                    ),
                    Container(
                      margin: EdgeInsets.all(15.0),
                      width: 110.0,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey[200],width: 1.0)
                        )
                      ),
                    )
                  ],
                ),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      child: InkWell(
                        child: Image.asset('images/icons/qq.png',width: 64.0,height: 64.0,),
                        onTap: (){},
                      )
                      // child:Icon(IconData(0xe605,fontFamily: 'MyIcons')),
                    ),
                    Container(
                      child: InkWell(
                        child: Image.asset('images/icons/weixin.png',width: 64.0,height: 64.0,),
                        onTap: (){

                        },
                      ),
                      //  child:Icon(IconData(0xe603,fontFamily: 'MyIcons')),
                    ),
                    Container(
                      child: InkWell(
                        child: Image.asset('images/icons/sina.png',width: 64.0,height: 64.0,),
                        onTap: (){
                          
                        },
                      ),
                      //  child:Icon(IconData(0xe646,fontFamily: 'MyIcons')),
                    )
                  ],
                ),
              )
            

            ],
          ),
        ),
          ],
        )
      )
    );
  }
}
