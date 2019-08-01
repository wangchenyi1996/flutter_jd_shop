import 'package:flutter/material.dart';


class GiveYouRecormend extends StatefulWidget {
  GiveYouRecormend({Key key}) : super(key: key);

  _GiveYouRecormendState createState() => _GiveYouRecormendState();
}

class _GiveYouRecormendState extends State<GiveYouRecormend> {

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
                child: Image.asset('images/shops/mz01.jpg',width: 150.0,height: 150.0,),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                child:  Text(
                  '迪奥（Dior）迪奥小姐花漾淡香氛(EDT) 50ml香水...',
                  style: TextStyle(color: Colors.black54)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '￥830.00',
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
                      child: Text('会员满减',style: TextStyle(color: Colors.white)),
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
                  // borderRadius:BorderRadius.circular(6)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'images/shops/mz02.jpg',
                    width: 150.0,
                    height: 130.0,
                  ),
                ),
                // child: Image.asset('images/shops/goods2.jpg',width: 150.0,height: 130.0),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                child:  Text(
                  '纪梵希（Givenchy）高定香榭哑光唇釉 唇膏口红显色...',
                  style: TextStyle(color: Colors.black54)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '￥1320.00',
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
                      child: Text('会员特价',style: TextStyle(color: Colors.white)),
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
                child: Image.asset('images/shops/mz03.jpg',width: 150.0,height: 150.0,),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                child:  Text(
                  '欧诗漫（OSM）珍珠护肤品套装补水保湿滋养水乳...',
                  style: TextStyle(color: Colors.black54)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '￥208.00',
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
                child: Image.asset('images/shops/mz04.jpg',width: 150.0,height: 150.0,),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                child:  Text(
                  'ARMANI唇釉405/400丝绒哑光口红情人节礼盒...',
                  style: TextStyle(color: Colors.black54)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '￥285.00',
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
                      child: Text('赠品',style: TextStyle(color: Colors.white)),
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
                child: Image.asset('images/shops/mz05.jpg',width: 150.0,height: 150.0,),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                child:  Text(
                  '京润珍珠美白补水面膜25片 女士男学生补水保湿...',
                  style: TextStyle(color: Colors.black54)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '￥109.00',
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
                      child: Text('会员特价',style: TextStyle(color: Colors.white)),
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
        physics: NeverScrollableScrollPhysics(),
        childAspectRatio: 0.7,
        shrinkWrap:true,
        crossAxisCount: 2, //
        children: this._getDataList()
      )
    );
  }
}