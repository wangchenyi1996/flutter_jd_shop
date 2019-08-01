import 'package:flutter/material.dart';
import '../pages/index_page.dart';


class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin{
 AnimationController _controller;//AnimationController是Animation的一个子类，它可以控制Animation，可以控制动画的时间，类型，过渡3曲线
  Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 1500));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    //上面两行代码表示初始化一个Animation控制器， vsync垂直同步，动画执行时间3000毫秒,然后我们设置一个Animation动画，使用上面设置的控制器

    //监听动画运行状态，当状态为completed时，动画执行结束，跳转首页
    _animation.addStatusListener((status){
      if(status == AnimationStatus.completed){
        // Navigator.pushNamedAndRemoveUntil(context, "/", (route) => route == null);
         Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(
            builder: (BuildContext context) => IndexPage()), (//跳转到主页
            Route route) => route == null);
      }
    });
    _controller.forward(); // 播放动画
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();//释放动画
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return FadeTransition(//透明度动画组件
      opacity: _animation, //动画
      child: Image.asset(
          'images/ns3.jpg',
          fit: BoxFit.cover, //图片铺满
          scale: 1.5, //进行缩放
      ),

    );
  }

}