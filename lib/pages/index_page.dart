import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';

import 'home_page.dart';
import 'category_page.dart';
import 'cart_page.dart';
import 'member_page.dart';
import './add_page.dart';

class IndexPage extends StatefulWidget {
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> with AutomaticKeepAliveClientMixin{
    @override
  bool get wantKeepAlive => true;

  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      title: Text('首页'),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.search),
      title: Text('分类'),
    ),
    BottomNavigationBarItem(
        icon: Icon(
          CupertinoIcons.add_circled_solid,
          color: Colors.white,
        ),
        title: Text('发布')),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.shopping_cart),
      title: Text('购物车'),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.profile_circled),
      title: Text('会员中心'),
    )
  ];
  // 首页一级页面
  final List<Widget> tabBodies = [
    HomePage(),
    CategroyPage(),
    AddPage(),
    CartPage(),
    MemberPage()
  ];

  final List topTitles = ['首页', '分类', '发布', '购物车', '个人中心'];
  //定义一个默认索引，目的默认显示第一个页面
  int currentIndex = 0;
  //目标页面
  var currentPage;

  FocusNode focusNode1 = new FocusNode();
  TextEditingController _searchController = new TextEditingController();

  @override
  void initState() {
    currentPage = tabBodies[currentIndex];

    _searchController.addListener(() {
      print(_searchController.text);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // 自定义抽屉header
    Widget userHeader = UserAccountsDrawerHeader(
      accountName: new Text(
        '姓名：WangQiang',
        style: TextStyle(color: Colors.black38),
      ),
      accountEmail: new Text(
        '邮箱：WangQiang@163.com',
        style: TextStyle(color: Colors.black38),
      ),
      currentAccountPicture: new CircleAvatar(
        backgroundImage: AssetImage('images/face.jpg'),
        radius: 35.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://img.tukuppt.com/bg_grid/00/03/28/Svt7BYjSd0.jpg!/fh/350'),
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
      otherAccountsPictures: <Widget>[
        Container(
          child: Image.network(
              'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1682634880,155770661&fm=26&gp=0.jpg'),
        )
      ],
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      appBar: PreferredSize(
        preferredSize:Size.fromHeight(50.0) ,
        child: Offstage(
          offstage: currentIndex == 4 ? true : false,
          child: AppBar(
            title: Container(
              height: 40.0,
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      autofocus: false,
                      controller: _searchController,
                      style: TextStyle(color: Colors.white),
                      focusNode: focusNode1, //关联focusNode1
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.fromLTRB(10, 10, 10, 10), //内容内边距
                          fillColor: Colors.white,
                          hintText: "输入关键词",
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(Icons.search),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                      onSubmitted: (v) {
                        print('$v,1223');
                        if (_searchController.text.toString() == "") {
                          //字符串为空
                          //弹出提示
                          showDialog(
                            //弹出提示的方法
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                content: new SingleChildScrollView(
                                  child: ListBody(
                                    children: <Widget>[Text("搜索内容不可以为空！")],
                                  ),
                                ),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text("确定"),
                                    onPressed: () {
                                      Navigator.pop(context, false);
                                    },
                                  ),
                                  FlatButton(
                                    child: Text("取消"),
                                    onPressed: () {
                                      Navigator.pop(context, true);
                                    },
                                  )
                                ],
                              );
                            },
                          );
                        } else {
                          //输入框不为空
                          // print("输入内容是${_searchController.text.toString()}");
                          showDialog(
                            //弹出提示的方法
                            context: context,
                            builder: (context) {
                              return CupertinoAlertDialog(
                                content: new SingleChildScrollView(
                                  child: ListBody(
                                    children: <Widget>[
                                      Text(
                                          "输入内容是${_searchController.text.toString()}")
                                    ],
                                  ),
                                ),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text("确定"),
                                    onPressed: () {
                                      Navigator.pop(context, false);
                                    },
                                  ),
                                  FlatButton(
                                    child: Text("取消"),
                                    onPressed: () {
                                      Navigator.pop(context, true);
                                    },
                                  )
                                ],
                              );
                            },
                          );
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                tooltip: 'Restitch it',
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        content: new SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[Text("点击了添加")],
                          ),
                        ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("确定"),
                            onPressed: () {
                              Navigator.pop(context, false);
                            },
                          ),
                          FlatButton(
                            child: Text("取消"),
                            onPressed: () {
                              Navigator.pop(context, true);
                            },
                          )
                        ],
                      );
                    },
                  );
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
                tooltip: 'Air it',
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        content: new SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[Text("点击了分享")],
                          ),
                        ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("确定"),
                            onPressed: () {
                              Navigator.pop(context, false);
                            },
                          ),
                          FlatButton(
                            child: Text("取消"),
                            onPressed: () {
                              Navigator.pop(context, true);
                            },
                          )
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
      // body: Container(
      //   child: tabBodies[currentIndex],
      // ),
      body: IndexedStack(
        index: currentIndex,
        children: tabBodies
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomTabs,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            currentPage = tabBodies[currentIndex];
          });
        },
      ),
      drawer: Drawer(
          child: Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 200.0,
              child: userHeader, //自定义头部,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.grey[200]))),
              child: ListTile(
                title: Text('首页'),
                leading: Icon(CupertinoIcons.home),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.grey[200]))),
              child: ListTile(
                title: Text('动态'),
                leading: Icon(CupertinoIcons.share),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.grey[200]))),
              child: ListTile(
                title: Text('关于'),
                leading: Icon(CupertinoIcons.reply),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.grey[200]))),
              child: ListTile(
                title: Text('留言'),
                leading: Icon(CupertinoIcons.mail),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.grey[200]))),
              child: ListTile(
                title: Text('设置'),
                leading: Icon(CupertinoIcons.settings),
              ),
            ),
          ],
        ),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 40.0,
        ),
        elevation: 4.0,
        onPressed: () {
          setState(() {
            currentIndex = 2;
            currentPage = tabBodies[currentIndex];
          });
        },
      ),
    );
  }
}
