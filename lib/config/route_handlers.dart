
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import '../pages/splash_page.dart';
import '../pages/home_page.dart';
import '../pages/index_page.dart';
import '../pages/login_page.dart';
import '../pages/reg_page.dart';
import '../pages/goods_detail_page.dart';

// 启动动画
var splashHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return SplashPage();
});

// 跳转到主页
var homeHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return HomePage();
});

// 跳转tab的第一个页面
var rootHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return IndexPage();
});

// 跳转到登录页
var loginHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return LoginPage();
});

// 跳转到注册页
var regHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return RegPage();
});

//跳转到商品详情
var goodDetailHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<Object>> params) {
  String id = params["goods_id"].first;
  return GoodsDetailPage(id);
});


// / 参数传递 int ，double，bool，自定义类型
// var demoParamHandler = new Handler(
//     handlerFunc: (BuildContext context, Map<String, List<Object>> params) {
//   /// params["name"]?.first 相当于 params["name"][0] ，打个debug 你就知道为什么了是个list
//   String name = params["name"]?.first;
//   String age = params["age"]?.first;
//   String sex = params["sex"]?.first;
//   String score = params["score"]?.first;
//   String personjson = params['personjson']?.first;
//   return DemoParamsPage(
//     name: name,
//     age: FluroConvertUtils.string2int(age),
//     score: FluroConvertUtils.string2double(score),
//     sex: FluroConvertUtils.string2bool(sex),
//     personJson: personjson,
//   );
// });

// /// 关闭页面，返回参数
// var returnParamHandler = new Handler(
//     handlerFunc: (BuildContext context, Map<String, List<Object>> params) {
//   return ReturnParamsPage();
// });

// /// 转场动画 页面
// var transitionDemoHandler = new Handler(
//     handlerFunc: (BuildContext context, Map<String, List<Object>> params) {
//   String title = params["title"]?.first;
//   return TransitionDemoPage(title);
// });


