import 'package:flutter/material.dart';

class GoodsPage extends StatefulWidget {
  GoodsPage({Key key}) : super(key: key);

  _GoodsPageState createState() => _GoodsPageState();
}

class _GoodsPageState extends State<GoodsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child:  RaisedButton(
            child: Text('进入商品详情'),
            onPressed: (){
              Navigator.pushNamed(context, '/goodsDetail',arguments: {
                'goodsId':'9527'
              });
            },
          ),
        ),
      )

    );
  }
}