import 'package:flutter/material.dart';

import '../pages/login_page.dart';
import '../pages/reg_page.dart';
import '../pages/index_page.dart';
import '../pages/goods_page.dart';
import '../pages/goods_detail_page.dart';
import '../pages/splash_page.dart';


//配置路由
final routes = {
  '/splash': (context) => SplashPage(),
  '/':(context) => IndexPage(),
  '/login': (context) => LoginPage(),
  '/goods': (context) => GoodsPage(),
  '/goodsDetail': (context, {arguments}) => GoodsDetailPage(arguments: arguments),
  '/reg': (context) => RegPage(),
};

//固定写法，命名路由传参
var onGenerateRoute=(RouteSettings settings) {
  final String name = settings.name; 
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
            pageContentBuilder(context, arguments: settings.arguments));
      return route;
    }else{
      final Route route = MaterialPageRoute(
        builder: (context) =>
          pageContentBuilder(context));
      return route;
    }
  }
};