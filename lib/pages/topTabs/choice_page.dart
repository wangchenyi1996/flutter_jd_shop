import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:async';
import '../../service/service_method.dart';
import 'dart:convert';

import '../../model/home/my_channel.dart';
import '../../model/home/select_recorment_goods.dart';

class ChoicePage extends StatefulWidget {
  ChoicePage({Key key}) : super(key: key);

  _ChoicePageState createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
  List mylistData=[];   //我的频道
  List selectRecormendGoodsList=[]; //精选推荐商品
  List selectGoodsLabel=[]; //精选推荐标签
  // 获取我的频道
  void _getMyChannel() async{
   await getHomeMyChannelContent().then((val) {
    //  print(val.data);
     var data1 = json.encode(val);
     var data2=json.decode(data1);
    //  print(data1.runtimeType); //类型
     MyChannelModel myChannelModel = MyChannelModel.fromJson(val);
        // print(myChannelModel.msg);
        // print(myChannelModel.data.mylist);
        myChannelModel.data.mylist.forEach((item)=> print(item.name1));
        setState(() {
          mylistData=myChannelModel.data.mylist;
        });
    });
  }

  // 获取精选推荐商品
  void _getSelectRecormendGoods() async{
   await getHomeSelectRecormendGoods().then((val) {
    //  print(val);
     var data1 = json.encode(val);
     var data2=json.decode(data1);
    //  print(val.runtimeType); //类型
     SelectRecormendGoods selectRecormendGoods = SelectRecormendGoods.fromJson(val);
      // print(selectRecormendGoods.data.selectList);
      selectRecormendGoods.data.selectList.forEach((item)=> print(item.describtion));
      setState(() {
        selectRecormendGoodsList=selectRecormendGoods.data.selectList;
      });
      // print(selectRecormendGoodsList[0].firstImg);
    });
  }

  //获取精选数据里的标签
  List<Widget> _getSelectGoodsLabel(imgArr){
    // List<Widget> mylist=new List();
    List<Widget> imgArrLabel=imgArr.map<Widget>((item){
      return Container(
        padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
        decoration: BoxDecoration(
          color: Colors.pink[300],
          border: Border.all(color: Colors.black12, width: 0.5),
          borderRadius: BorderRadius.circular(5.0)
        ),
        child: Text(item,style: TextStyle(color: Colors.white)),
      );
    }).toList();
    return imgArrLabel;
  }

  @override
  void initState(){
    _getMyChannel();  //获取我的频道
    _getSelectRecormendGoods(); //获取精选推荐商品
    super.initState();
  }


  //定义一个方法，来模拟数据
  List<Widget> _getSelectRecormendGoodsData(){
    List<Widget> selectlist=selectRecormendGoodsList.map((item){
      return  Container(
          height: 270.0,
          alignment: Alignment.center,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
             boxShadow: [ //阴影
              BoxShadow(
                  color:Colors.black12,
                  offset: Offset(6.0,6.0),
                  blurRadius: 4.0
              )
            ]
          ),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                decoration: BoxDecoration(
                  // borderRadius:BorderRadius.circular(6)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.network(
                    item.firstImg,
                    width: 150.0,
                    height: 130.0,
                  ),
                ),
                // child: Image.asset('images/shops/goods2.jpg',width: 150.0,height: 130.0),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                child:  Text(
                  item.describtion,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.black54)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '￥${item.price}',
                      style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12, width: 0.5),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Text('找相似',style: TextStyle(color: Colors.black38)),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:_getSelectGoodsLabel(item.intro)
                ),
              )
            ],
          ),
        );
    }).toList();
    return selectlist;
  }

  List<Widget> _getMyChannelList(){
    // List<Widget> mylist=new List();
    List<Widget> tempList=mylistData.map((item){
     return Container(
        margin: EdgeInsets.fromLTRB(0, 75.0, 0.0, 10.0),
        width: 130.0,
        child: Column(
          children: <Widget>[
            Text(
              item.name1,
              style: TextStyle(color: Colors.white, fontSize: 14.0),
            ),
            Text(
              item.name2,
              style: TextStyle(color: Colors.white, fontSize: 7.0),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                child: Image.network(
                  item.imgurl,
                  width: 90.0,
                  height: 90.0,
                ),
              ),
            )
          ],
        ),
      );       
    }).toList();
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true, 
        children: <Widget>[
          Container(
            height: 370.0,
            width: 420.0,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/shop1.jpg'),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            )),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              runAlignment: WrapAlignment.start,
              runSpacing: -70.0,
              children:_getMyChannelList()
            ),
          ),
          Container(
            height: 470.0,
            width: 420.0,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/shop2.jpg'),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            )),
            child: Column(
              children: <Widget>[
                Container(
                  width: 350.0,
                  height: 140.0,
                  margin: EdgeInsets.fromLTRB(20.0, 70.0, 20.0, 10.0),
                  decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        //阴影
                        BoxShadow(
                            color: Colors.black54,
                            offset: Offset(2.0, 12.0),
                            blurRadius: 4.0)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '全民pick >',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            'BEST GOODS',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6.0),
                              child: Image.asset(
                                'images/shop18.png',
                                width: 90.0,
                                height: 90.0,
                              ),
                            ),
                          ),
                          Text(
                            '民间艺人',
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6.0),
                              child: Image.asset(
                                'images/shop19.png',
                                width: 90.0,
                                height: 90.0,
                              ),
                            ),
                          ),
                          Text(
                            'GARMIN',
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 350.0,
                  height: 140.0,
                  margin: EdgeInsets.fromLTRB(20.0, 35.0, 20.0, 10.0),
                  decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        //阴影
                        BoxShadow(
                            color: Colors.black54,
                            offset: Offset(2.0, 12.0),
                            blurRadius: 4.0)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '新品GET >',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            'NEW ARRIVALS',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6.0),
                              child: Image.asset(
                                'images/shop20.png',
                                width: 90.0,
                                height: 90.0,
                              ),
                            ),
                          ),
                          Text(
                            '诚悦',
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6.0),
                              child: Image.asset(
                                'images/shop21.jpg',
                                width: 90.0,
                                height: 90.0,
                              ),
                            ),
                          ),
                          Text(
                            '仕驰',
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100.0,
            width: 400.0,
            decoration: BoxDecoration(
              image: DecorationImage(
              image: AssetImage('images/shop3.jpg'),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            )),
          ),

          Container(
            child: GridView.count(
              childAspectRatio: 0.7,
              shrinkWrap:true,
              physics:NeverScrollableScrollPhysics(),
              crossAxisCount: 2, //
              children: this._getSelectRecormendGoodsData()
            ),
          )
       
        ],
      ),
    );
  }
}
