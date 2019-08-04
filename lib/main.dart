import 'package:flutter/material.dart';

//引入路由配置
import 'package:fluro/fluro.dart';
import './config/application.dart';
import './config/route_handlers.dart';
import './config/routes.dart';

import 'package:provide/provide.dart';
import './pages/provide/goodsDetailPage.dart';

void main() {
  // 注册 fluro routes
  Router router = Router();
  Routes.configureRoutes(router);
  Application.router = router;

  var deatail=GoodsDetailPage();
  var providers=Providers();
  providers..provide(Provider<GoodsDetailPage>.value(deatail));
  runApp(
    ProviderNode(
      child:MyApp(),
      providers:providers
    )
  );
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: '第一个flutter',
        debugShowCheckedModeBanner:false,
        theme: ThemeData(
          primaryColor: Colors.blue[300]
        ),
        // 生成路由
        onGenerateRoute: Application.router.generator,
      ),
    );
  }
}