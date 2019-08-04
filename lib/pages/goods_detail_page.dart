import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:demo/pages/goods_detail/goods_swiper.dart';

import './goods_detail/goods_swiper.dart';
import './goods_detail/goods_fixed.dart';
import './goods_detail/goods_discount.dart';
import './goods_detail/goods_intro.dart';
import './goods_detail/chooise_goods.dart';
import './goods_detail/chooise_address.dart';
import './goods_detail/goods_after_sales.dart';
import './goods_detail/detail_comments_tab.dart';
import './goods_detail/goods_tab_page.dart';


class GoodsDetailPage extends StatefulWidget {
  String goods_id;
  GoodsDetailPage(this.goods_id);

  _GoodsDetailPageState createState() => _GoodsDetailPageState(this.goods_id);
}

class _GoodsDetailPageState extends State<GoodsDetailPage> {
  String goods_id;
  _GoodsDetailPageState(this.goods_id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情----商品id：${goods_id}'),
        centerTitle: true,
        brightness: Brightness.light,
      ),
      body: Stack(
         fit: StackFit.expand,
          children: <Widget>[
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                GoodsSwiper(),
                GoodsDiscount(),
                GoodsIntro(),
                ChooiseGoods(),
                ChooiseAddress(),
                GoodsAfterSales(),
                GoodsCommentsTab(),
                GoodsTabPage()
              ]
            ),

            Positioned(
              bottom: 0,
              left: 0,
              child: GoodsFixed(),
            )
          ]
        )
    );
  }
}