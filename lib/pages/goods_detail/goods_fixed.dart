import 'package:flutter/material.dart';

class GoodsFixed extends StatefulWidget {
  GoodsFixed({Key key}) : super(key: key);

  _GoodsFixedState createState() => _GoodsFixedState();
}

class _GoodsFixedState extends State<GoodsFixed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 3.0,top: 3.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'images/icons/icon_connect.png',
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
                Text(
                  '联系客服',
                  style: TextStyle(fontSize: 10.0, color: Colors.grey),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'images/icons/icon_shop.png',
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
                Text('进店', style: TextStyle(fontSize: 10.0, color: Colors.grey))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'images/icons/icon_cart.png',
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
                Text('购物车',
                    style: TextStyle(fontSize: 10.0, color: Colors.grey))
              ],
            ),
          ),
          Container(
              width: 100.0,
              height: 40.0,
              margin: EdgeInsets.only(left: 15.0),
              child: FlatButton(
                color: Colors.orange[600],
                highlightColor: Colors.orange[600],
                colorBrightness: Brightness.dark,
                splashColor: Colors.grey,
                child: Text("加入购物车"),
                onPressed: () => {},
              )),
          Container(
              width: 100.0,
              height: 40.0,
              margin: EdgeInsets.only(right: 15.0),
              child: FlatButton(
                color: Colors.red[700],
                highlightColor: Colors.red[700],
                colorBrightness: Brightness.dark,
                splashColor: Colors.grey,
                child: Text("立即购买"),
                onPressed: () => {},
              ))
        ],
      ),
    );
  }
}
