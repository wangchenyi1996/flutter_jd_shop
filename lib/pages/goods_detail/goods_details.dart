import 'package:flutter/material.dart';


class GoodsDetails extends StatefulWidget {
  GoodsDetails({Key key}) : super(key: key);

  _GoodsDetailsState createState() => _GoodsDetailsState();
}

class _GoodsDetailsState extends State<GoodsDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child:ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
         Column(
           children: <Widget>[
             Image(image:AssetImage('images/recormend/goodsdetail1.jpg')),
             Image(image:AssetImage('images/recormend/goodsdetail2.jpg')),
             Image(image:AssetImage('images/recormend/goodsdetail3.jpg')),
             Image(image:AssetImage('images/recormend/goodsdetail4.jpg')),
             Image(image:AssetImage('images/recormend/goodsdetail5.jpg')),
             Image(image:AssetImage('images/recormend/goodsdetail7.jpg')),
             Image(image:AssetImage('images/recormend/goodsdetail8.jpg')),
             Image(image:AssetImage('images/recormend/goodsdetail9.jpg')),
             Image(image:AssetImage('images/recormend/goodsdetail10.jpg')),
             Image(image:AssetImage('images/recormend/goodsdetail7.jpg')),
             Image(image:AssetImage('images/recormend/goodsdetail6.jpg')),
           ],
         )
        ],
      )
    );
  }
}