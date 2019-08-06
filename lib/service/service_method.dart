import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:io';
import './config.dart';
// 获取首页内容
Future request(url, formData) async {
  try {
    print('开始获取数据');
    Response response;
    Dio dio = new Dio();
    dio.options.contentType = ContentType.parse("application/x-www-form-urlencoded");
    if (formData == null) {
      response = await dio.post(servicePath[url]);
    } else{
      response = await dio.post(servicePath[url], data: formData);
    }
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('后端接口出现异常。');
    }
  } catch (e) {
    print('ERROR： ===========> ${e}');
  }
}

// 获取首页--我的频道
Future getHomeMyChannelContent() async {
  return request('homeMyChannelContent',null);
}

// 获取首页--精选推荐
Future getHomeSelectRecormendGoods() async {
  return request('homeSelectRccormendGoods',null);
}

// 获取首页--顶部导航分类
Future getHomeTopNavList() async {
  return request('homeTopNavData',null);
}

// 获取发布页面--顶部导航分类
Future getAddJDSkillGoods() async {
  return request('jdSkillGoods',null);
}

// 获取发布页面--顶部导航分类
Future getAddJYXYGoods() async {
  return request('addJYXY',null);
}

// 获取商品分类
Future getGoodsCategroy() async {
  return request('goods_categroy',null);
}

// 获取商品分类下的商品列表
Future getGoodsCategroyList(formData) async {
  return request('goods_categroy_list',formData);
}