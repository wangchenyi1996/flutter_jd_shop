import 'package:flutter/material.dart';

class MyDaily extends StatefulWidget {
  MyDaily({Key key}) : super(key: key);

  _MyDailyState createState() => _MyDailyState();
}

class _MyDailyState extends State<MyDaily> {
  @override
  Widget build(BuildContext context) {
   return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 45.0,
              child: Image(
                image: AssetImage('images/home/home4.jpg'),
              )
            ),
           
            Container(
              color: Colors.white,
              height: 130.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Container(
                       padding: EdgeInsets.only(top: 7.0),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.grey[200],width: 0.5)
                        )
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image(
                              image: AssetImage('images/meiri/mr1.jpg'),
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 4.0),
                            child: Text('白条免息购',style: TextStyle(color: Colors.black45,fontSize: 14.0)),
                          ),
                          Container(
                            child: Image(
                              image: AssetImage('images/home/mr01.jpg'),
                              height: 65.0,width: 65.0,
                            )
                          )
                        ],
                      ),
                    )
                  ),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.only(top: 7.0),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.grey[200],width: 0.5)
                        )
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image(
                              image: AssetImage('images/meiri/mr2.jpg'),
                            )
                          ),
                          Container(
                            child: Text('享惊喜折扣',style: TextStyle(color: Colors.black45,fontSize: 14.0)),
                          ),
                          Container(
                            child: Image(
                              image: AssetImage('images/home/mr02.jpg'),
                              height: 65.0,width: 65.0,
                            )
                          )
                        ],
                      ),
                    )
                  ),
                  Expanded(
                    
                    child: Container(
                       padding: EdgeInsets.only(top: 7.0),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.grey[200],width: 0.5)
                        )
                      ),
                      child: Column(
                      children: <Widget>[
                        Container(
                         child: Image(
                              image: AssetImage('images/meiri/mr3.jpg'),
                            )
                        ),
                        Container(
                          child: Text('低价抢大牌',style: TextStyle(color: Colors.black45,fontSize: 14.0)),
                        ),
                        Container(
                          child: Image(
                            image: AssetImage('images/home/mr03.jpg'),
                            height: 65.0,width: 65.0,
                          )
                        )
                      ],
                    ),
                    )
                  ),
                  Expanded(
                    child: Container(
                       padding: EdgeInsets.only(top: 7.0),
                      child: Column(
                      children: <Widget>[
                        Container(
                          child: Image(
                              image: AssetImage('images/meiri/mr4.jpg'),
                            )
                        ),
                        Container(
                          child: Text('好货即刻买',style: TextStyle(color: Colors.black45,fontSize: 14.0)),
                        ),
                        Container(
                          child: Image(
                            image: AssetImage('images/home/mr04.jpg'),
                            height: 65.0,width: 65.0,
                          )
                        )
                      ],
                    ),
                    )
                  ),
                ],
              ),
            ),
          
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: Colors.grey[200],width: 0.5))
              ),
              
              height: 130.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Container(
                       padding: EdgeInsets.only(top: 7.0),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.grey[200],width: 0.5)
                        )
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                           child: Image(
                              image: AssetImage('images/meiri/mr5.jpg'),
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 4.0),
                            child: Text('热销推荐',style: TextStyle(color: Colors.black45,fontSize: 14.0)),
                          ),
                          Container(
                            child: Image(
                              image: AssetImage('images/home/mr05.jpg'),
                              height: 65.0,width: 65.0,
                            )
                          )
                        ],
                      ),
                    )
                  ),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.only(top: 7.0),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.grey[200],width: 0.5)
                        )
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Image(
                              image: AssetImage('images/meiri/mr6.jpg'),
                            )
                          ),
                          Container(
                            child: Text('拍拍好物',style: TextStyle(color: Colors.black45,fontSize: 14.0)),
                          ),
                          Container(
                            child: Image(
                              image: AssetImage('images/home/mr06.jpg'),
                              height: 65.0,width: 65.0,
                            )
                          )
                        ],
                      ),
                    )
                  ),
                  Expanded(
                    
                    child: Container(
                       padding: EdgeInsets.only(top: 7.0),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.grey[200],width: 0.5)
                        )
                      ),
                      child: Column(
                      children: <Widget>[
                        Container(
                         child: Image(
                              image: AssetImage('images/meiri/mr7.jpg'),
                            )
                        ),
                        Container(
                          child: Text('vivo X27',style: TextStyle(color: Colors.black45,fontSize: 14.0)),
                        ),
                        Container(
                          child: Image(
                            image: AssetImage('images/home/mr07.jpg'),
                            height: 65.0,width: 65.0,
                          )
                        )
                      ],
                    ),
                    )
                  ),
                  Expanded(
                    child: Container(
                       padding: EdgeInsets.only(top: 7.0),
                      child: Column(
                      children: <Widget>[
                        Container(
                          child: Image(
                              image: AssetImage('images/meiri/mr8.jpg'),
                            )
                        ),
                        Container(
                          child: Text('发现品质生活',style: TextStyle(color: Colors.black45,fontSize: 14.0)),
                        ),
                        Container(
                          child: Image(
                            image: AssetImage('images/home/mr08.jpg'),
                            height: 65.0,width: 65.0,
                          )
                        )
                      ],
                    ),
                    )
                  ),
                ],
              ),
            ),
          
          ],
        ),
      )
    );
  }
}