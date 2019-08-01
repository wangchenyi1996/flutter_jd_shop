import 'package:flutter/material.dart';


class GoodsDetailPage extends StatefulWidget {
  Map arguments;

  GoodsDetailPage({Key key,this.arguments}) : super(key: key);

  _GoodsDetailPageState createState() => _GoodsDetailPageState(arguments:this.arguments);
}

class _GoodsDetailPageState extends State<GoodsDetailPage> {
  Map arguments;
  _GoodsDetailPageState({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情'),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child:Text("商品id是${arguments['goodsId']}")
        ),
      )

    );
  }
}