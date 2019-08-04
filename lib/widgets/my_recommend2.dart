import 'package:flutter/material.dart';


class MyRecormend extends StatefulWidget {
  MyRecormend({Key key}) : super(key: key);

  _MyRecormendState createState() => _MyRecormendState();
}

class _MyRecormendState extends State<MyRecormend> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 280.0,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Image(
                image: AssetImage('images/home/home3.jpg'),
              )
            ),
            Container(
              height: 120.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(6.0),
                  topRight:Radius.circular(6.0),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[200],width: 1.0))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(right: BorderSide(color: Colors.grey[200],width: 0.5))
                        ),
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                   Container(
                                    // margin: EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      '女神春装',
                                      style: TextStyle(color: Colors.green[300],fontSize: 18.0),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 5.0),
                                    child: Text(
                                      '女神春换新看这里',
                                      style: TextStyle(color: Colors.black38,fontSize: 14.0),
                                    ),
                                  ),
                                ],
                              ),
                              
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 15.0),
                                    child: Image(
                                      image: AssetImage('images/home/home5.jpg'),
                                      height: 60.0,width: 60.0,
                                    ),
                                  ),
                                  Container(
                                    child: Image(
                                      image: AssetImage('images/home/home6.jpg'),
                                      height: 60.0,width: 60.0,
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      )
                    ),

                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(right: BorderSide(color: Colors.grey[200],width: 0.5))
                        ),
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                   Container(
                                    // margin: EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      '享受运动',
                                      style: TextStyle(color: Colors.green[300],fontSize: 18.0),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 5.0),
                                    child: Text(
                                      '运动并没有那么痛苦',
                                      style: TextStyle(color: Colors.black38,fontSize: 14.0),
                                    ),
                                  ),
                                ],
                              ),
                              
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 15.0),
                                    child: Image(
                                      image: AssetImage('images/home/home7.jpg'),
                                      height: 60.0,width: 60.0,
                                    ),
                                  ),
                                  Container(
                                    child: Image(
                                      image: AssetImage('images/home/home8.jpg'),
                                      height: 60.0,width: 60.0,
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      )
                    ),

                  ],
                ),
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
                            child: Text('肥宅联盟',style: TextStyle(color: Colors.black87,fontSize: 18.0,fontWeight: FontWeight.w800)),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 4.0),
                            child: Text('快乐肥宅啊',style: TextStyle(color: Colors.black45,fontSize: 14.0)),
                          ),
                          Container(
                            child: Image(
                              image: AssetImage('images/home/home9.jpg'),
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
                            child: Text('日常出行',style: TextStyle(color: Colors.black87,fontSize: 18.0,fontWeight: FontWeight.w800)),
                          ),
                          Container(
                            child: Text('出行必备',style: TextStyle(color: Colors.black45,fontSize: 14.0)),
                          ),
                          Container(
                            child: Image(
                              image: AssetImage('images/home/home10.jpg'),
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
                          child: Text('健身打卡',style: TextStyle(color: Colors.black87,fontSize: 18.0,fontWeight: FontWeight.w800)),
                        ),
                        Container(
                          child: Text('你打卡了吗',style: TextStyle(color: Colors.black45,fontSize: 14.0)),
                        ),
                        Container(
                          child: Image(
                            image: AssetImage('images/home/home11.jpg'),
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
                          child: Text('畅快开跑',style: TextStyle(color: Colors.black87,fontSize: 18.0,fontWeight: FontWeight.w800)),
                        ),
                        Container(
                          child: Text('舒适又时尚',style: TextStyle(color: Colors.black45,fontSize: 14.0)),
                        ),
                        Container(
                          child: Image(
                            image: AssetImage('images/home/home12.jpg'),
                            height: 65.0,width: 65.0,
                          )
                        )
                      ],
                    ),
                    )
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}