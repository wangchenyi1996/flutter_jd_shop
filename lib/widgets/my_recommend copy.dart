import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'dart:async';
import '../service/service_method.dart';
import '../model/home/add_jjxy.dart';

class MyRecormend extends StatefulWidget {
  MyRecormend({Key key}) : super(key: key);

  _MyRecormendState createState() => _MyRecormendState();
}

class _MyRecormendState extends State<MyRecormend> {
  List addJJXYdata1=[];
  List addJJXYdata2=[];
  List addJJXYdata3=[];

  void _getJJXYData() async{
   await getAddJYXYGoods().then((val) {
      ADDJJXY addjjxy = ADDJJXY.fromJson(val);
      // if(mounted){
        setState(() {
          addJJXYdata1=addjjxy.data.category1;
          addJJXYdata2=addjjxy.data.category2;
          addJJXYdata3=addjjxy.data.category3;
        });
      // }
    });
  }

  @override
  void initState(){
    _getJJXYData(); 
    super.initState();
  }
  // @override
  // void dispose() {
  //   addJJXYdata1 = null;
  //   addJJXYdata2=null;
  //   addJJXYdata3=null;
  //   super.dispose();
  // }

  Widget _categroy1ItemUI(BuildContext context, item) {
    return  Container(
      margin: EdgeInsets.only(left: 10.0,right: 10.0),
      child: Image(
        image: NetworkImage('$item'),
        height: 60.0,width: 60.0,
      ),
    );
  }
   Widget _categroy2ItemUI(BuildContext context, item) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 7.0),
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(color: Colors.grey[200],width: 0.5)
          )
        ),
        child: Column(
          children: <Widget>[
            Container(
              child: Text('${item.cateName3}',style: TextStyle(color: Colors.black87,fontSize: 18.0,fontWeight: FontWeight.w800)),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 4.0),
              child: Text('${item.cateIntro3}',style: TextStyle(color: Colors.black45,fontSize: 14.0)),
            ),
            Container(
              child: Image(
                image: NetworkImage('${item.cateImg3}'),
                height: 65.0,width: 65.0,
              )
            )
          ],
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 280.0,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Image(
                image: AssetImage('images/home/home3.jpg'),
              )
            ),
            Container(
              height: 120.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(6.0),
                  topRight:Radius.circular(6.0),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[200],width: 1.0))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(right: BorderSide(color: Colors.grey[200],width: 0.5))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Container(
                                      // margin: EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        '${addJJXYdata1[0].cateName1}',
                                        style: TextStyle(color: Colors.green[300],fontSize: 18.0),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 5.0),
                                      child: Text(
                                        '${addJJXYdata1[0].cateIntro1}',
                                        style: TextStyle(color: Colors.black38,fontSize: 14.0),
                                      ),
                                    ),
                                  ],
                                ),
                                
                                Row(
                                  children: addJJXYdata1[0].cateImg1.map<Widget>((item) {
                                    return _categroy1ItemUI(context, item);
                                  }).toList(),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ),

                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(right: BorderSide(color: Colors.grey[200],width: 0.5))
                        ),
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                   Container(
                                    // margin: EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      '${addJJXYdata2[0].cateName2}',
                                      style: TextStyle(color: Colors.green[300],fontSize: 18.0),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 5.0),
                                    child: Text(
                                      '${addJJXYdata2[0].cateIntro2}',
                                      style: TextStyle(color: Colors.black38,fontSize: 14.0),
                                    ),
                                  ),
                                ],
                              ),
                              
                              Row(
                                children: addJJXYdata2[0].cateImg2.map<Widget>((item) {
                                    return _categroy1ItemUI(context, item);
                                  }).toList(),
                              )
                            ],
                          )
                        ],
                      ),
                      )
                    ),

                  ],
                ),
              )
            ),
          
            Container(
              color: Colors.white,
              height: 130.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: addJJXYdata3.map<Widget>((item) {
                  return _categroy2ItemUI(context, item);
                }).toList(),
              ),
            )
          ],
        ),
      )
    );
  }
}