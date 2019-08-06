import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:convert';
import '../service/service_method.dart';
import '../model/categroy/goods_categroy.dart';
import '../model/categroy/categoryGoodsList_model.dart';
import 'package:provide/provide.dart';
import './provide/child_category.dart';



class CategroyPage extends StatefulWidget {
  CategroyPage({Key key}) : super(key: key);

  _CategroyPageState createState() => _CategroyPageState();
}

class _CategroyPageState extends State<CategroyPage>{
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:Row(
        children: <Widget>[
          LeftCategoryNav(),
          Column(
            children: <Widget>[
              RightCategoryNavState(),
              CategorGoodsList(),
            ],
          )
        ],
      ),
    );
  }
}


//左侧大类导航
class LeftCategoryNav extends StatefulWidget {
  @override
  _LeftCategoryNavState createState() => _LeftCategoryNavState();
}
class _LeftCategoryNavState extends State<LeftCategoryNav> {
  List list = [];
  var listIndex = 0;

  //顶部分类导航
  void _getCategroyData() async{
    await getGoodsCategroy().then((val) {
      CategoryModel categorylist = CategoryModel.fromJson(val);
      setState(() {
        list = categorylist.data;
      });
      //默认显示第一个分类
      Provide.value<ChildCategory>(context).getChildCategory(list[0].bxMallSubDto);
    });
  }
  @override
  void initState(){
    _getCategroyData();   //顶部分类导航
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 120.0,
        decoration: BoxDecoration(
            border: Border(
                right: BorderSide(
          width: 0.5,
          color: Colors.black12,
        ))),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return _leftInkWell(index);
          },
        ));
  }

  Widget _leftInkWell(int index) {
    bool isClick = false;
    isClick = (index == listIndex) ? true : false;
    return InkWell(
      onTap: () {
        setState(() {
          listIndex = index;
        });
        // 把list 存下来
        var chiledList = list[index].bxMallSubDto;
        // print(chiledList);
        // var categoryId = list[index].mallCategoryId;
        Provide.value<ChildCategory>(context).getChildCategory(chiledList);

      },
      child: Container(
        height: 60.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isClick ? Colors.blue[50] : Colors.white,
          border: Border(
            bottom: BorderSide(
                width: 0.5, color: Colors.black12),
          )),
        child: Text(
          list[index].mallCategoryName,
          style: TextStyle(fontSize: 16.0,color: Colors.black54)),
        ),
      );
  }

}

//右侧导航分类
class RightCategoryNavState extends StatefulWidget {
  @override
  _RightCategoryNavStateState createState() => _RightCategoryNavStateState();
}

class _RightCategoryNavStateState extends State<RightCategoryNavState> {
  @override
  Widget build(BuildContext context) {
    return Provide<ChildCategory>(
      builder: (context,child,childCategory){
        return Container(
          height: 50.0,
          width: 290,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(width: 1, color: Colors.black12),
              )),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: childCategory.childCategoryList.length,
            itemBuilder: (context, index) {
              return _rightInwell(childCategory.childCategoryList[index]);
            },
          ),
        );
      }
    );
  }

  Widget _rightInwell(BxMallSubDto items) {
    return InkWell(
      onTap: () {},
      child:Container(
        padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        child: Text(items.mallSubName,style: TextStyle(fontSize: 15.0,color: Colors.black54)),
      )
      
    );
  }

}


//商品列表
class CategorGoodsList extends StatefulWidget {
  @override
  _CategorGoodsListState createState() => _CategorGoodsListState();
}

class _CategorGoodsListState extends State<CategorGoodsList> {
  // GlobalKey<RefreshFooterState> _footerKey = GlobalKey<RefreshFooterState>();
  // var scrollcontroller = ScrollController();
  List goodlist=[];
  //顶部分类商品列表
  void _getMoreList() async{
    var formData = {
        "categoryId": '4',
        "categorySubId": '',
        "page": 1,
    };
    await getGoodsCategroyList(formData).then((val) {
      CategoryGoodsListModel categoryGoodsListModel = CategoryGoodsListModel.fromJson(val);
      print(categoryGoodsListModel.data[0].goodsName);
      setState(() {
        goodlist= categoryGoodsListModel.data;
      });
    });
  }
  @override
  void initState(){
    _getMoreList();   //顶部分类导航
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290.0,
      height: 540.0,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: goodlist.length,
        itemBuilder: (context,index){
          return _listItemWidget(index);
        },
      )
    );
  }

  //组合
  Widget _listItemWidget(int index) {
    return InkWell(
      onTap: () {},
      child: Container(
        // width: 290.0,
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
        decoration: BoxDecoration(
            color: Colors.white,
            border:
                Border(bottom: BorderSide(color: Colors.black12, width: 1))),
        child: Row(
          children: <Widget>[
            _goodsImage(index),
            Column(
              children: <Widget>[
                _goodsName(index),
                _goodsPrice(index),
              ],
            )
          ],
        ),
      ),
    );
  }

  //商品价格
  Widget _goodsPrice(int index) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: 190.0,
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 5.0),
            width: 80.0,
            child: Text(
              "价格:￥${goodlist[index].presentPrice}",
              style: TextStyle(
                  fontSize:13.0, color: Colors.pink),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 1.0),
            width: 80.0,
            child: Text(
              "价格:￥${goodlist[index].oriPrice}",
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black26,
                decoration: TextDecoration.lineThrough,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }

  //商品名字
  Widget _goodsName(int index) {
    return Container(
      padding: EdgeInsets.all(5.0),
      width: 190.0,
      child: Text(
        goodlist[index].goodsName,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 14.0),
      ),
    );
  }

  //图片
  Widget _goodsImage(int index) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: Image.network(goodlist[index].image),
    );
  }




}

