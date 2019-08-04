import 'package:flutter/material.dart';
import './goods_comments.dart';
import './goods_details.dart';
import 'package:provide/provide.dart';
import '../provide/goodsDetailPage.dart';


class GoodsCommentsTab extends StatefulWidget {
  GoodsCommentsTab({Key key}) : super(key: key);

  _GoodsCommentsTabState createState() => _GoodsCommentsTabState();
}

class _GoodsCommentsTabState extends State<GoodsCommentsTab>{
 
  @override
  Widget build(BuildContext context) {
    
    return Provide<GoodsDetailPage>(
      builder: (context,child,val){
        var isLeft=Provide.value<GoodsDetailPage>(context).isLeft;
        var isRight=Provide.value<GoodsDetailPage>(context).isRight;
        return Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _myLeftTab(context,isLeft),
              _myRightTab(context,isRight)
            ],
          ),
        );
      },
    );
  }

  Widget _myLeftTab(BuildContext context,bool isLeft){
    return InkWell(
      onTap: (){
        Provide.value<GoodsDetailPage>(context).changeTab('left');
      },
      child: Container(
         width: 205.0,
        padding: EdgeInsets.all(10.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(
            width: 1.0,
            color: isLeft?Colors.pink:Colors.black12
            )
          )
        ),
        child: Text(
          '商品详情',
          style: TextStyle(color:isLeft?Colors.pink:Colors.black54)
        ),
      ),
    );
  }

  Widget _myRightTab(BuildContext context,bool isRight){
    return InkWell(
      onTap: (){
         Provide.value<GoodsDetailPage>(context).changeTab('right');
      },
      child: Container(
         width: 205.0,
        padding: EdgeInsets.all(10.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(
            width: 1.0,
            color: isRight?Colors.pink:Colors.black12
            )
          )
        ),
        child: Text(
          '商品评论',
          style: TextStyle(color:isRight?Colors.pink:Colors.black54)
        ),
      ),
    );
  }

}