import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import './application.dart';
import './routes.dart';
import './route_handlers.dart';


class NavigatorUtil {
  // 不带参数返回
  static void goBack(BuildContext context) {
    // 等价于 Navigator.pop(context);
    Application.router.pop(context);
  }

  // 带参数的返回
  static void goBackWithParams(BuildContext context, result) {
    Navigator.pop(context, result);
  }

  // 跳转到主页面
  static void goRootPage(BuildContext context) {
    Application.router.navigateTo(context, Routes.root, replace: true);
  }

    // 跳转到登录成功跳转到首页
  static void goLoginPage(BuildContext context) {
    Application.router.navigateTo(context, Routes.root, replace: true);
  }

    // 跳转到注册成功跳转到首页
  static void goRegPage(BuildContext context) {
    Application.router.navigateTo(context, Routes.root, replace: true);
  }

  //跳转到商品详情
  static void goGoodsDetailPage(BuildContext context, String goods_id) {
    String id = goods_id;
    Application.router.navigateTo(context,Routes.goodsDetail +"?goods_id=$id");
  }

  // // 跳转到 会返回参数的 页面
  // static Future goReturnParamsPage(BuildContext context) {
  //   return Application.router.navigateTo(context, Routes.returnParams);
  // }



}