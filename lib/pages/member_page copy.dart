import 'package:flutter/material.dart';

class MemberPage extends StatefulWidget {
  MemberPage({Key key}) : super(key: key);

  _MemberPageState createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
      shrinkWrap: true,
      children: <Widget>[
        Container(
          height: 150.0,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/user_bg.jpg'),
            fit: BoxFit.cover,
          )),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        border: new Border.all(width: 2, color: Colors.white),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'images/face.png',
                          height: 80.0,
                          width: 80.0,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15.0),
                      child: GestureDetector(
                        child: Text(
                          '登录 / 注册',
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700
                            ),
                        ),
                        onTap: (){
                          Navigator.pushNamed(context, '/login');
                        }
                      ),
                     
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
       
        Container(
          margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
          height: 145.0,
          decoration: BoxDecoration(
              // color: Colors.white,
              // borderRadius: BorderRadius.circular(13.0)
              ),
          child: Column(
            children: <Widget>[
              Container(
                height: 40.0,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(13.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 12.0),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'images/vip.png',
                              height: 25.0,
                              width: 25.0,
                            ),
                            Text(
                              '  Flutter会员',
                              style: TextStyle(
                                  color: Colors.orange[300], fontSize: 18.0),
                            ),
                          ],
                        )),
                    Container(
                      child: FlatButton(
                        color: Colors.orange[300],
                        highlightColor: Colors.blue[700],
                        colorBrightness: Brightness.dark,
                        splashColor: Colors.grey,
                        child: Text("立即开通"),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        onPressed: () => {},
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                height: 90.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(
                            '1880.00',
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                        Text('余额', style: TextStyle(color: Colors.black54)),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text('12', style: TextStyle(fontSize: 18.0)),
                        ),
                        Text('优惠卷', style: TextStyle(color: Colors.black54)),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text('128', style: TextStyle(fontSize: 18.0)),
                        ),
                        Text('积分', style: TextStyle(color: Colors.black54)),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        
        Container(
          margin: EdgeInsets.fromLTRB(15.0,0.0,15.0,13.0),
          height: 110.0,
          decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(13.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Image.asset('images/qbdd.png')
                  ),
                  Text('全部订单', style: TextStyle(color: Colors.black54)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                   child: Image.asset('images/dfk.png')
                  ),
                  Text('待付款', style: TextStyle(color: Colors.black54)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                  child: Image.asset('images/dsh.png')
                  ),
                  Text('待收货', style: TextStyle(color: Colors.black54)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                   margin: EdgeInsets.only(bottom: 10),
                   child: Image.asset('images/tk.png')
                  ),
                  Text('退款/售后', style: TextStyle(color: Colors.black54)),
                ],
              )
            ],
          ),
        ),
      
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0)
          ),
          margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
       
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 6.0, 10, 0),
                    child:  Image.asset('images/lishi.png',height: 26.0,width: 26.0),
                  ),
                  Text('浏览历史',style: TextStyle(color: Colors.black54,fontSize: 18.0)),
                ],
              ),
              
              Container(
                height: 100.0,
                margin: EdgeInsets.only(top: 10.0),
                child:  ListView(
                    shrinkWrap:true,
                    scrollDirection:Axis.horizontal,
                    // physics: NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset('images/shops/goods1.jpg',height: 80.0,width: 80.0,)
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                         child: Image.asset('images/shops/goods2.jpg',height: 80.0,width: 80.0,)
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Image.asset('images/shops/goods3.jpg',height: 80.0,width: 80.0,)
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Image.asset('images/shops/mz04.jpg',height: 80.0,width: 80.0,)
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Image.asset('images/shops/mz03.jpg',height: 80.0,width: 80.0,)
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Image.asset('images/shops/mz01.jpg',height: 80.0,width: 80.0,)
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Image.asset('images/shops/mz02.jpg',height: 80.0,width: 80.0,)
                      )
                    ],
                  ),
              ),

              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                   border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.grey[200]))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10.0,top: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 7.0),
                            child: Image.asset('images/icons/wodeqianbao.png',height: 24.0,width: 24.0)
                          ),
                          Text(' 我的钱包',style: TextStyle(fontSize: 18.0,color: Colors.black54),),
                        ],
                      )
                    ),
                    Container(
                       margin: EdgeInsets.only(right: 6.0,top: 10.0),
                       child: Row(
                         children: <Widget>[
                           Container(
                            child: Text('您的会员还有3天过期',style: TextStyle(fontSize: 14.0,color: Colors.black38))
                          ),
                           Image.asset('images/icons/right.png',height: 24.0,width: 24.0,),
                         ],
                       )
                    )
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                   border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.grey[200]))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10.0,top: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 7.0),
                            child: Image.asset('images/icons/address.png',height: 24.0,width: 24.0)
                          ),
                          Text(' 地址管理',style: TextStyle(fontSize: 18.0,color: Colors.black54),),
                          
                        ],
                      )
                    ),
                    Container(
                       margin: EdgeInsets.only(right: 6.0,top: 10.0),
                       child: Image.asset('images/icons/right.png',height: 24.0,width: 24.0,),
                    )
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                   border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.grey[200]))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10.0,top: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 7.0),
                            child: Image.asset('images/icons/fenxiang.png',height: 24.0,width: 24.0)
                          ),
                          Text(' 分享',style: TextStyle(fontSize: 18.0,color: Colors.black54),),
                        ],
                      )
                    ),
                    Container(
                       margin: EdgeInsets.only(right: 6.0,top: 10.0),
                       child: Row(
                         children: <Widget>[
                            Container(
                            child: Text('邀请好友赢10万大礼',style: TextStyle(fontSize: 14.0,color: Colors.black38))
                          ),
                           Image.asset('images/icons/right.png',height: 24.0,width: 24.0,),
                         ],
                       )
                    )
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                   border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.grey[200]))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10.0,top: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 7.0),
                            child: Image.asset('images/icons/message.png',height: 24.0,width: 24.0)
                          ),
                          Text(' 晒单',style: TextStyle(fontSize: 18.0,color: Colors.black54),),
                        ],
                      )
                    ),
                    Container(
                       margin: EdgeInsets.only(right: 6.0,top: 10.0),
                       child: Row(
                         children: <Widget>[
                            Container(
                            child: Text('晒单抢红包',style: TextStyle(fontSize: 14.0,color: Colors.black38))
                          ),
                           Image.asset('images/icons/right.png',height: 24.0,width: 24.0,),
                         ],
                       )
                    )
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                   border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.grey[200]))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10.0,top: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 7.0),
                            child: Image.asset('images/icons/shoucang.png',height: 24.0,width: 24.0)
                          ),
                          Text(' 我的收藏',style: TextStyle(fontSize: 18.0,color: Colors.black54),),
                        ],
                      )
                    ),
                    Container(
                       margin: EdgeInsets.only(right: 6.0,top: 10.0),
                       child: Row(
                         children: <Widget>[
                           Image.asset('images/icons/right.png',height: 24.0,width: 24.0,),
                         ],
                       )
                    )
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10.0,top: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 7.0),
                            child: Image.asset('images/icons/shezhi.png',height: 24.0,width: 24.0)
                          ),
                          Text(' 设置',style: TextStyle(fontSize: 18.0,color: Colors.black54),),
                        ],
                      )
                    ),
                    Container(
                       margin: EdgeInsets.only(right: 6.0,top: 10.0),
                       child: Row(
                         children: <Widget>[
                           Image.asset('images/icons/right.png',height: 24.0,width: 24.0,),
                         ],
                       )
                    )
                  ],
                ),
              ),




            ],
          ),
        )

      ],
    ));
  }
}
