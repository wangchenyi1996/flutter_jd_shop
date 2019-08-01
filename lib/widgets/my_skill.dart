import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:dio/dio.dart';
import 'dart:async';
import '../service/service_method.dart';
import '../model/home/jd_skill_goods.dart';

class MySkill extends StatefulWidget {
  MySkill({Key key}) : super(key: key);

  _MySkillState createState() => _MySkillState();
}

class _MySkillState extends State<MySkill> {
  
  List jdSkillGoodsList=[]; //京东秒杀
  String timesDec;  //时间场次
  String lastTimes; //倒计时
  //顶部分类导航
  void _getJdSkillGoodsData() async{
   await getAddJDSkillGoods().then((val) {
    JdSkillGoods jdSkillGoods = JdSkillGoods.fromJson(val);
    // jdSkillGoods.data.skillList.forEach((item)=> print(item));
    setState(() {
      jdSkillGoodsList=jdSkillGoods.data.skillList;
      timesDec= jdSkillGoods.data.timeDec;
      lastTimes= jdSkillGoods.data.lastTime;
    });
      print('-------------');
      var a=DateTime.now();
      var strTime=a.toString().substring(0,10);
      print(DateTime.parse('$strTime $lastTimes').millisecondsSinceEpoch / 1000);
      print('-------------');
    });
  }

  @override
  void initState(){
    _getJdSkillGoodsData();   //京东秒杀
    super.initState();
  }

  //京东秒杀单个子项
  Widget _jdSkillItemView(BuildContext context, item){
    return InkWell(
      onTap: (){
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return CupertinoAlertDialog(
              content: new SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[Text("点击了ID${item.id}")],
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
      margin: EdgeInsets.only(left: 15.0),
      child: Column(
        children: <Widget>[
            Image.network('${item.imgUrl}',height: 80.0,width: 80.0),
            Container(
            margin: EdgeInsets.only(top: 4.0),
            child: Text('￥${item.discountPrice}',style: TextStyle(color: Colors.red,fontSize: 17.0,fontWeight: FontWeight.w700))
            ),
            Container(child: Text('￥${item.oldPrice}',style: TextStyle(
            color: Colors.grey,fontSize: 15.0,fontWeight: FontWeight.w500,decoration: TextDecoration.lineThrough)
            )
            )
        ],
      )
    ),
   );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      margin: EdgeInsets.fromLTRB(6, 10, 6, 10),
      padding: EdgeInsets.only(top: 5.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.white),
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        crossAxisCount: 1,
        childAspectRatio: 0.5,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 45.0,
                 padding: EdgeInsets.fromLTRB(0, 0, 0, 5.0),
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('images/bg.png'))),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Text(
                        '京东秒杀',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15.0),
                      child: Text('$timesDec',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w600)),
                    ),
                    Container(
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.pink[50], width: 1.0),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text('$lastTimes'),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 80.0),
                        child: GestureDetector(
                          child: Row(
                            children: <Widget>[
                              Text(
                                '更多秒杀',
                                style: TextStyle(
                                    color: Colors.pink, fontSize: 14.0),
                              ),
                              Icon(
                                Icons.arrow_right,
                                color: Colors.pink,
                              ),
                            ],
                          ),
                          onTap: () {
                            print('点击了秒杀');
                          },
                        )),
                  ],
                ),
              ),
              Container(
                height: 150.0,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: jdSkillGoodsList.map((item){
                      return _jdSkillItemView(context,item);
                  }).toList()
                ),
              )
            ],
          )
        ],
      )
    );
  }
}
