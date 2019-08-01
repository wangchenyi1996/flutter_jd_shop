import 'package:demo/pages/splash_page.dart';
import 'package:flutter/material.dart';

import 'package:demo/pages/index_page.dart';

//引入路由配置
import './routes/routes.dart';

void main() => runApp(MyApp());

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
        home: SplashPage(),
        // home: HomePage(),
        // initialRoute: '/',
        // initialRoute: '/splash',
        onGenerateRoute: onGenerateRoute
      ),
    );
  }
}