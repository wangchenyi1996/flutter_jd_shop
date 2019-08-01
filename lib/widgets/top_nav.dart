import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';  //轮播图插件

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
      // topNavList.data.navList.forEach((item)=> print(item.navText));
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

  // 分类导航分页处理
  Widget pageItem(BuildContext context, dynamic item) => SizedBox(
    width: MediaQuery.of(context).size.width / 5,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        InkWell(
          child:  SizedBox(
            child: Container(
              child: Image.network(item.icons,height: 60.0,width: 60.0,),
            ),
            height: MediaQuery.of(context).size.width * 0.12,
            width: MediaQuery.of(context).size.width * 0.12,
          ),
          onTap: (){
            showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return CupertinoAlertDialog(
                content: new SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[Text("亲，你点击了${item.navText}")],
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
        ),
        Padding(
          padding: EdgeInsets.only(top: 3.0),
          child: Text("${item.navText}" ,style: TextStyle(color: Colors.black38, fontSize: 12.0),),
        )
      ],
    ),
  );

  GridView pageWidget(BuildContext context, int page) {
    List<dynamic> data;
    if ((page + 1) * 8 < topNavData.length) {
      data = topNavData.sublist(page * 8, page * 8+8 );
    } else {
      data = topNavData.sublist(page * 8, topNavData.length );
    }
    return GridView.count(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 1.0,
      children: data.map((i) {
        return pageItem(context, i);
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      margin: EdgeInsets.fromLTRB(6, 10, 6, 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0), color: Colors.white
      ),
      child: new Container(
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        constraints: BoxConstraints.loose(new Size(400, 170.0)),
        child: new Swiper(
          outer:false,
          itemBuilder: (c, i) {
            return pageWidget(c, i);
          },
          pagination: new SwiperPagination(
            margin: new EdgeInsets.all(5.0),
          ),
          itemCount: 2,
        ),
      )
    );
  }

}
