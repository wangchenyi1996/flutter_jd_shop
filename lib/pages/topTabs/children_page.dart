import 'package:flutter/material.dart';

class ChildrenPage extends StatefulWidget {
  ChildrenPage({Key key}) : super(key: key);

  _ChildrenPageState createState() => _ChildrenPageState();
}

class _ChildrenPageState extends State<ChildrenPage> with AutomaticKeepAliveClientMixin{
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
                child: Image.asset('images/shops/goods12.jpg',width: 150.0,height: 150.0,),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                child:  Text(
                  'ECCO英伦风复古单鞋女牛津鞋 洒脱 酒红色 36...',
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
                  // borderRadius:BorderRadius.circular(6)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'images/shops/goods13.jpg',
                    width: 150.0,
                    height: 130.0,
                  ),
                ),
                // child: Image.asset('images/shops/goods2.jpg',width: 150.0,height: 130.0),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                child:  Text(
                  'CHARL＆KEITH低帮鞋蝴蝶结饰女士鞋 深蓝色 34...',
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
                child: Image.asset('images/shops/goods14.jpg',width: 150.0,height: 150.0,),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                child:  Text(
                  'Tata新专柜同款水钻鱼嘴鞋细高跟休闲女鞋 银色 38...',
                  style: TextStyle(color: Colors.black54)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '￥408.00',
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
                child: Image.asset('images/shops/goods15.jpg',width: 150.0,height: 150.0,),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                child:  Text(
                  '热风夏季新款时尚休闲女低跟平底凉拖女 24花色 37...',
                  style: TextStyle(color: Colors.black54)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '￥45.00',
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