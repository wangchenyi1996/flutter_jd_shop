import 'package:flutter/material.dart';


class GoodsDiscount extends StatefulWidget {
  GoodsDiscount({Key key}) : super(key: key);

  _GoodsDiscountState createState() => _GoodsDiscountState();
}

class _GoodsDiscountState extends State<GoodsDiscount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.5,color: Colors.pink[200]
          )
        )
      ),
       height: 50.0,
       child: Row(
         children: <Widget>[
           Expanded(
             flex: 2,
             child:Container(
               decoration: BoxDecoration(
                  gradient: LinearGradient(colors:[Colors.pink[200],Colors.pink[600]]), //背景渐变
               ),
               child:  Row(
                children: <Widget>[
                  Text('￥708.99',style:TextStyle(fontSize: 21.0,color: Colors.white,fontWeight: FontWeight.w700)),
                  Container(
                    margin: EdgeInsets.only(left: 16.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Text('￥1099.00',style: TextStyle(fontSize: 16.0,color: Colors.white,decoration: TextDecoration.lineThrough)),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.timer,color:Colors.white),
                              Text('品牌抢购',style: TextStyle(color: Colors.white))
                            ],
                          )
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child:  Icon(Icons.favorite_border,color:Colors.white),
                        ),
                        Container(
                         child:Text('点击收藏',style: TextStyle(color: Colors.white))
                        )
                      ],
                    ),
                  )
                ],
              ),
             )
           ),
          Expanded(
             flex: 1,
             child: Container(
               color: Colors.grey[100],
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text('距闪购结束还剩',style: TextStyle(color: Colors.black38)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 3.0),
                        child: Text('00:12:28',style: TextStyle(color: Colors.red[700])),
                      )
                    ],
                  )
                ],
              ),
             )
           )
         ],
       ),
    );
  }
}