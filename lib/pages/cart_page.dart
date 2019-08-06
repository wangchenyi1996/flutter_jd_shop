import 'package:flutter/material.dart';

import './cart/cart_head.dart';
import './cart/cart_fixed.dart';
import './cart/cart_jdzy.dart';
import './cart/cart_main.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key}) : super(key: key);

  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> with AutomaticKeepAliveClientMixin{
    @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        ListView(
          shrinkWrap: true,
          children: <Widget>[
            CartHead(),
            Cartjdzy(),
            CartMain()
          ]
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: CartFixed(),
        )
      ]
    );
  }
}
