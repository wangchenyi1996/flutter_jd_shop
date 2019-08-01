import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:dio/dio.dart';
import 'dart:async';
import '../service/service_method.dart';
import 'dart:convert';

import '../model/home/top_nav_list.dart';

class TopNav extends StatefulWidget {
  TopNav({Key key}) : super(key: key);

  _TopNavState createState() => _TopNavState();
}

class _TopNavState extends State<TopNav>{

  List topNavData=[]; //顶部分类导航列表
  //顶部分类导航
  void _getTopNavData() async{
   await getHomeTopNavList().then((val) {
    print(val);
    TopNavList topNavList = TopNavList.fromJson(val);
      topNavList.data.navList.forEach((item)=> print(item.navText));
      setState(() {
        topNavData=topNavList.data.navList;
      });
      // print(topNavData[0].navText);
    });
  }

  @override
  void initState(){
    _getTopNavData();   //顶部分类导航
    super.initState();
  }


  List<Widget> _GridViewNavList() {
    List<Widget> list = new List();
    for(var i=0;i<topNavData.length;i++){
      list.add(
        InkWell(
        onTap: () {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return CupertinoAlertDialog(
                content: new SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[Text("点击了${topNavData[i].navText}导航")],
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
        child: Container(
          height: 80.0,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 8),
                child: Image.network(topNavData[i].icons,
                    height: 60.0, width: 60.0),
              ),
              Text(
                topNavData[i].navText,
                style: TextStyle(color: Colors.black38, fontSize: 12.0),
              )
            ],
          ),
        )
      )
    
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      margin: EdgeInsets.fromLTRB(6, 10, 6, 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.white),
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        children: _GridViewNavList()
      )
    );
  }

}
