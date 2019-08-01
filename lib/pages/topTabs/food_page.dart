import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  FoodPage({Key key}) : super(key: key);

  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

  //定义一个方法，来模拟数据
  List<Widget> _getDataList(){
    List<Widget> list=new List();
    for(var i=0;i<20;i++){
      list.add(
        Container(
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
                 padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                 child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'images/shops/yd01.jpg',
                    width: 150.0,
                    height: 130.0,
                  ),
                ),
                // child: Image.asset('images/shops/sh01.jpg',width: 150.0,height: 150.0,),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                child:  Text(
                  'NBA球衣 勇士队库里 运动球衣 男款 图片色 XL...',
                  style: TextStyle(color: Colors.black54)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '￥539.00',
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
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
                      decoration: BoxDecoration(
                        color: Colors.pink[300],
                        border: Border.all(color: Colors.black12, width: 0.5),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Text('多买优惠',style: TextStyle(color: Colors.white)),
                    ),
                     Container(
                      padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
                      decoration: BoxDecoration(
                        color: Colors.pink[300],
                        border: Border.all(color: Colors.black12, width: 0.5),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Text('满减',style: TextStyle(color: Colors.white)),
                    ),
                    
                  ],
                ),
              )
            ],
          ),
        )
      );

      list.add(
        Container(
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                decoration: BoxDecoration(
                  // borderRadius:BorderRadius.circular(6)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'images/shops/yd02.jpg',
                    width: 150.0,
                    height: 130.0,
                  ),
                ),
                // child: Image.asset('images/shops/goods2.jpg',width: 150.0,height: 130.0),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                child:  Text(
                  '阿迪达斯 官方 户外 男女 TERREX CC BOAT 鞋...',
                  style: TextStyle(color: Colors.black54)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '￥258.00',
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
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
                      decoration: BoxDecoration(
                        color: Colors.pink[300],
                        border: Border.all(color: Colors.black12, width: 0.5),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Text('赠金豆',style: TextStyle(color: Colors.white)),
                    ),
                     Container(
                      padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
                      decoration: BoxDecoration(
                        color: Colors.pink[300],
                        border: Border.all(color: Colors.black12, width: 0.5),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Text('必买',style: TextStyle(color: Colors.white)),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
                      decoration: BoxDecoration(
                        color: Colors.pink[300],
                        border: Border.all(color: Colors.black12, width: 0.5),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Text('满减',style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      );
    
      list.add(
        Container(
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'images/shops/yd03.jpg',
                    width: 150.0,
                    height: 130.0,
                  ),
                ),
                // child: Image.asset('images/shops/sh03.jpg',width: 150.0,height: 150.0,),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                child:  Text(
                  '美国HARISON 汉臣椭圆家用静音椭圆仪太空漫步机...',
                  style: TextStyle(color: Colors.black54)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '￥1999.00',
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
                      decoration: BoxDecoration(
                        color: Colors.pink[300],
                        border: Border.all(color: Colors.black12, width: 0.5),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Text('赠金豆',style: TextStyle(color: Colors.white)),
                    ),
                     Container(
                      padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
                      decoration: BoxDecoration(
                        color: Colors.pink[300],
                        border: Border.all(color: Colors.black12, width: 0.5),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Text('活动',style: TextStyle(color: Colors.white)),
                    ),
                     Container(
                      padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
                      decoration: BoxDecoration(
                        color: Colors.pink[300],
                        border: Border.all(color: Colors.black12, width: 0.5),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Text('必买',style: TextStyle(color: Colors.white)),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      );

      list.add(
        Container(
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'images/shops/yd04.jpg',
                    width: 150.0,
                    height: 130.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                child:  Text(
                  '匡威帆布鞋男鞋女鞋All Star中性情侣经典常青款高帮...',
                  style: TextStyle(color: Colors.black54)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '￥449.00',
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
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
                      decoration: BoxDecoration(
                        color: Colors.pink[300],
                        border: Border.all(color: Colors.black12, width: 0.5),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Text('优惠',style: TextStyle(color: Colors.white)),
                    ),
                     
                     Container(
                      padding: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
                      decoration: BoxDecoration(
                        color: Colors.pink[300],
                        border: Border.all(color: Colors.black12, width: 0.5),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Text('必买',style: TextStyle(color: Colors.white)),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      );

    }
    return list;
  }


  @override
  Widget build(BuildContext context) {
   return Container(
      child: GridView.count(
        childAspectRatio: 0.7,
        shrinkWrap:true,
        crossAxisCount: 2, //
        children: this._getDataList()
      )
    );
  }
}