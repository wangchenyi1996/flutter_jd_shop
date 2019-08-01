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