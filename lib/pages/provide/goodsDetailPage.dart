import 'package:flutter/material.dart';
import 'package:provide/provide.dart';

class GoodsDetailPage with ChangeNotifier{
  //默认显示第一个隐藏第二个
  bool isLeft = true;
  bool isRight = false;

  // 点击tab切换值
  changeTab(String changeState){
    if(changeState=='left'){
       isLeft = true;
       isRight = false; 
    }else{
       isLeft = false;
       isRight = true; 
    }
    notifyListeners();
  }

}