import 'package:flutter/material.dart';

class WomenPage extends StatefulWidget {
  WomenPage({Key key}) : super(key: key);

  _WomenPageState createState() => _WomenPageState();
}

class _WomenPageState extends State<WomenPage> with AutomaticKeepAliveClientMixin{
    @override
  bool get wantKeepAlive => true;
  
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
                child: Image.asset('images/shops/goods8.jpg',width: 150.0,height: 150.0,),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                child:  Text(
                  'MOCO夏季新品水花苞裤高腰牛仔短裤 浅蓝色 27/M...',
                  style: TextStyle(color: Colors.black54)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '￥799.00',
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
                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                decoration: BoxDecoration(
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'images/shops/goods9.jpg',
                    width: 150.0,
                    height: 130.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                child:  Text(
                  '百图破洞牛仔裤女高腰显瘦浅色长裤新款 牛仔蓝 M...',
                  style: TextStyle(color: Colors.black54)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '￥189.00',
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
                      child: Text('活动',style: TextStyle(color: Colors.white)),
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
                child: Image.asset('images/shops/goods10.jpg',width: 150.0,height: 150.0,),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                child:  Text(
                  '欧丝璐 韩版圆领蕾丝袖口假两件雪纺衫上衣女 浅米 M...',
                  style: TextStyle(color: Colors.black54)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '￥369.00',
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
                      child: Text('更多优惠',style: TextStyle(color: Colors.white)),
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
                child: Image.asset('images/shops/goods11.jpg',width: 150.0,height: 150.0,),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                child:  Text(
                  'betu高腰牛仔短裤2019新款百搭 休闲 牛仔蓝 M...',
                  style: TextStyle(color: Colors.black54)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '￥1109.00',
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