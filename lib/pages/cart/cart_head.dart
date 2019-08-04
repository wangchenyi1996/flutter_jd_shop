import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CartHead extends StatefulWidget {
  CartHead({Key key}) : super(key: key);

  _CartHeadState createState() => _CartHeadState();
}

class _CartHeadState extends State<CartHead> {
  //获取头部
  Widget _getCartHead(){
    return Container(
      padding: EdgeInsets.only(left: 10.0,right: 10.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0,color: Colors.grey[200])
        ),
        color: Colors.white
      ),
      height: 55.0,
      child: Container(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
            Row(
               children: <Widget>[
                 Icon(Icons.location_on,size: 20.0,color: Colors.black38),
                 Container(
                   margin: EdgeInsets.only(left: 7.0),
                   child: Text('南京玄武区',style: TextStyle(fontSize: 16.0,color: Colors.black87),)
                 )
               ],
             ),
            Row(
               children: <Widget>[
                 Container(
                   child: GestureDetector(
                     onTap: (){
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) {
                          return CupertinoAlertDialog(
                            content: new SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[Text("点击了编辑商品")],
                              ),
                            ),
                            actions: <Widget>[
                              FlatButton(
                                child: Text("确定"),
                                onPressed: () {
                                  Navigator.pop(context, false);
                                },
                              ),
                              FlatButton(
                                child: Text("取消"),
                                onPressed: () {
                                  Navigator.pop(context, true);
                                },
                              )
                            ],
                          );
                        },
                      );
                     },
                     child: Text('编辑商品',style: TextStyle(fontSize: 18.0,color: Colors.pinkAccent)),
                   )
                 )
               ],
             ),
           ],
         ),
       ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return _getCartHead();
  }
}