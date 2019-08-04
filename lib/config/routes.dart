import 'package:flutter/material.dart';

import 'package:fluro/fluro.dart';
import './route_handlers.dart';
import '../pages/index_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Routes {
  static String splash="/";
  static String root = "/root";
  static String home = "/home";
  static String login="/login";
  static String reg="/reg";
  static String goodsDetail="/goodsDetail";

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        router.notFoundHandler=new Handler(
          handlerFunc: (BuildContext context, Map<String, List<String>> params) {
            Fluttertoast.showToast(
                msg: "页面不存在，即将跳转到首页！",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIos: 1,
                backgroundColor: Colors.blue[50],
                textColor: Colors.black38,
                fontSize: 16.0
              );
            return IndexPage();
          });
    });

    // 第一个参数是路由地址，第二个参数是页面跳转和传参，第三个参数是默认的转场动画，可以看上图
    router.define(splash, handler: splashHandler);
    router.define(root, handler: rootHandler);
    router.define(home, handler: homeHandler);
    router.define(login, handler: loginHandler);
    router.define(reg, handler: regHandler);
    router.define(goodsDetail, handler: goodDetailHandler);

  }
}
