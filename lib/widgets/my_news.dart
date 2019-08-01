import 'package:flutter/material.dart';


class MyNews extends StatefulWidget {
  MyNews({Key key}) : super(key: key);

  _MyNewsState createState() => _MyNewsState();
}

class _MyNewsState extends State<MyNews> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child:Column(
         children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: 40.0,
                  child:Container(
                    margin: EdgeInsets.only(left: 10.0,right: 10.0),
                    child:  Image(
                      image: AssetImage('images/jd_news.jpg'),
                      height: 16.0,width: 70.0,
                    ),
                  )
                ),
                Container(
                    margin: EdgeInsets.only(right: 6.0),
                  child: Text('最新',style: TextStyle(color: Colors.red[400])),
                ),
                Container(
                  width: 235.0,
                  child: Text('过期的牛奶居然还有这么多用处，倒掉真的可惜',
                  style: TextStyle(color: Colors.black54),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 4.0,right: 4.0),
                    height: 24.0,
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.grey,width: 1.0))
                    ),
                  child: Text(' '),
                ),
                Container(
                  child: Text('更多',style: TextStyle(color: Colors.black87)),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  child: Image(
                    image: AssetImage('images/recormend/r1.jpg'),
                    width: 410.0,
                  ),
                )
              ],
            )
         ],
       )
    );
  }
}