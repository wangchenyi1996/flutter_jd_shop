import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:async';

import 'package:demo/widgets/my_recommend.dart';
import 'package:demo/widgets/my_skill.dart';

import '../widgets/my_swiper.dart';
import '../widgets/top_nav.dart';
import '../widgets/my_skill.dart';
import '../widgets/new_person.dart';
import '../widgets/my_recommend.dart';
import '../widgets/my_daily.dart';
import '../widgets/my_news.dart';
import '../widgets/give_you_recormend.dart';

class AddPage extends StatefulWidget {
  AddPage({Key key}) : super(key: key);

  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          MySwiper(),   //轮播图
          TopNav(),     //滚动分类导航
          MySkill(),    //秒杀商品
          NewPerson(),  //新人专享
          MyRecormend(),  //东家小院/推荐
          MyDaily(),    //每日一逛
          MyNews(),     //京东快报
          GiveYouRecormend(), //为你推荐
        ],
      )
    );
  }
}
