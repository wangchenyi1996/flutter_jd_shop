import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:async';
import '../service/service_method.dart';
import 'dart:convert';

import '../model/home/my_channel.dart';

import './topTabs/man_page.dart';
import './topTabs/women_page.dart';
import './topTabs/children_page.dart';
import './topTabs/beauty_page.dart';
import './topTabs/living_page.dart';
import './topTabs/food_page.dart';
import './topTabs/choice_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin{

  @override
  bool get wantKeepAlive => true;

  //定义几个顶部tabs
  final List<Tab> myTabs = <Tab>[
    Tab(text: '精选'),
    Tab(text: '男装'),
    Tab(text: '女装'),
    Tab(text: '鞋靴'),
    Tab(text: '美妆'),
    Tab(text: '运动'),
    Tab(text: '生活'),
    Tab(text: '看书'),
    Tab(text: '电影'),
    Tab(text: '音乐'),
  ];
  //顶部导航栏对应页面
  List<Widget> topTabBarPages = [
    ChoicePage(),
    ManPage(),
    WomenPage(),
    ChildrenPage(),
    BeautyPage(),
    FoodPage(),
     ManPage(),
    LivePage(),
    ChildrenPage(),
    BeautyPage()
  ];

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
          length: myTabs.length,
          child: Container(
            child: Column(
              children: <Widget>[
              
                Container(
                  color: Colors.blue[50],
                  child: AspectRatio(
                      aspectRatio: 8.0,
                      child: TabBar(isScrollable: true, tabs: myTabs)),
                ),
                Expanded(
                    child: TabBarView(
                  children: topTabBarPages,
                ))
              ],
            ),
          )
        
    );
  }

}
