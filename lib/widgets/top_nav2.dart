import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TopNav extends StatefulWidget {
  TopNav({Key key}) : super(key: key);

  _TopNavState createState() => _TopNavState();
}

class _TopNavState extends State<TopNav> {
  final List navigatorList = [
    {'imgurl': 'images/shops/goods1.jpg', 'navname': '京东超市'},
    {'imgurl': 'images/shops/goods2.jpg', 'navname': '京东服饰'},
    {'imgurl': 'images/shops/goods5.jpg', 'navname': '数码电器'},
    {'imgurl': 'images/shops/goods3.jpg', 'navname': '数码电器'},
    {'imgurl': 'images/shops/goods4.jpg', 'navname': '精品美妆'},
    {'imgurl': 'images/shops/goods6.jpg', 'navname': '京东到家'},
    {'imgurl': 'images/shops/goods8.jpg', 'navname': '京东旅行'},
    {'imgurl': 'images/shops/goods9.jpg', 'navname': 'PLUS会员'},
    {'imgurl': 'images/shops/goods10.jpg', 'navname': '玩3C'},
    {'imgurl': 'images/shops/goods11.jpg', 'navname': '全球馆'},
    {'imgurl': 'images/shops/goods12.jpg', 'navname': '沃尔玛'},
    {'imgurl': 'images/shops/goods13.jpg', 'navname': '唯品会'},
    {'imgurl': 'images/shops/goods14.jpg', 'navname': '物流查询'},
    {'imgurl': 'images/shops/goods15.jpg', 'navname': '拍拍助手'}
  ];

  List<Widget> _GridViewList() {
    List<Widget> list = new List();
    for (var i = 0; i < navigatorList.length; i++) {
      list.add(InkWell(
          onTap: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return CupertinoAlertDialog(
                  content: new SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[Text("点击了${navigatorList[i]['navname']}")],
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
          child: Container(
            height: 80.0,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Image.asset(navigatorList[i]['imgurl'],
                      height: 60.0, width: 60.0),
                ),
                Text(
                  navigatorList[i]['navname'],
                  style: TextStyle(color: Colors.black38, fontSize: 12.0),
                )
              ],
            ),
          )));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200.0,
        margin: EdgeInsets.fromLTRB(6, 10, 6, 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: Colors.white),
        child: GridView.count(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            children: _GridViewList()));
  }
}
