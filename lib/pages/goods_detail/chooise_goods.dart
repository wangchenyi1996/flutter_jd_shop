import 'package:flutter/material.dart';

class ChooiseGoods extends StatefulWidget {
  ChooiseGoods({Key key}) : super(key: key);

  _ChooiseGoodsState createState() => _ChooiseGoodsState();
}

class _ChooiseGoodsState extends State<ChooiseGoods> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1.0,color: Colors.grey[200]))
      ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: <Widget>[
           Container(
             alignment: Alignment.topLeft,
             margin: EdgeInsets.only(top: 5.0),
             child: Text('已选',style:TextStyle(color: Colors.black45,fontSize: 14.0)),
           ),
           Container(
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Container(
                   child: Text('花漾50ml,1,1个',style: TextStyle(color: Colors.black54,fontSize: 17.0)),
                 ),
                 Container(
                   child: Text('本商品支持保障服务、礼品购，点击可选服务',style: TextStyle(color: Colors.black38,fontSize: 14.0),),
                 )
               ],
             ),
           ),
           Container(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Icon(Icons.more_horiz,color: Colors.black54),
               ],
             )
           )
         ],
       )
    );
  }

}