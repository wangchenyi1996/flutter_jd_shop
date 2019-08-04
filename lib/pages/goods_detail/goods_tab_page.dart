import 'package:flutter/material.dart';
import './goods_comments.dart';
import './goods_details.dart';
import 'package:provide/provide.dart';
import '../provide/goodsDetailPage.dart';


class GoodsTabPage extends StatefulWidget {
  GoodsTabPage({Key key}) : super(key: key);

  _GoodsTabPageState createState() => _GoodsTabPageState();
}

class _GoodsTabPageState extends State<GoodsTabPage> {
  @override
  Widget build(BuildContext context) {
    return Provide<GoodsDetailPage>(
      builder: (context,child,val){
        var isLeft=Provide.value<GoodsDetailPage>(context).isLeft;
        if(isLeft){
          return Container(
            child: GoodsDetails()
          );
        }else{
          return Container(
            child: GoodsComments()
          );
        }
      }
    );
  }
}