import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GoodsComments extends StatefulWidget {
  GoodsComments({Key key}) : super(key: key);

  _GoodsCommentsState createState() => _GoodsCommentsState();
}

class _GoodsCommentsState extends State<GoodsComments> {
  //评价率
  Widget _getCommentsHead(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 15.0),
                  child: Text('评价',style: TextStyle(fontSize: 21.0,color: Colors.black54)),
                ),
                Container(
                child: Text('好评 98%',style: TextStyle(fontSize: 15.0,color: Colors.pink)),
                )
            ],
          )
        ),
        Container(
          child: Row(
            children: <Widget>[
                Container(
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) {
                          return CupertinoAlertDialog(
                            content: new SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[Text("好评率很高哦")],
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

                    child: Text('共 23万+ 条',style: TextStyle(fontSize: 15.0,color: Colors.black38)),
                  )
                ),
                Container(
                child: Icon(Icons.keyboard_arrow_right,color: Colors.grey,),
                )
            ],
          )
        ),
      ],
    );
  }
  //评论主体时间
   Widget _getCommentsMain(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 15.0),
                  child: ClipOval(
                    child: Image.asset('images/shops/mz01.jpg',width: 28.0,height: 28.0,),
                  )
                ),
                Container(
                  margin: EdgeInsets.only(right: 15.0),
                  child: Text('张**',style: TextStyle(fontSize: 14.0,color: Colors.black45)),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.star,color: Colors.red,size: 16.0,),
                      Icon(Icons.star,color: Colors.red,size: 16.0,),
                      Icon(Icons.star,color: Colors.red,size: 16.0,),
                      Icon(Icons.star,color: Colors.red,size: 16.0,),
                      Icon(Icons.star_half,color: Colors.red,size: 16.0,)
                    ],
                  ),
                )
            ],
          )
        ),
        Container(
          child: Row(
            children: <Widget>[
                Container(
                  child: Text('2019-08-07',style: TextStyle(fontSize: 15.0,color: Colors.black38)),
                )
            ],
          )
        ),
      ],
    );
  }

  //评论-流式布局
  Widget _getCommentsWrap(){
    return Wrap(
      spacing:10.0,
      runSpacing: 5.0,
      children: <Widget>[
        RaisedButton(
          color: Colors.pink[50],
          onPressed: (){},
          child: Text('及其好用(538)',style: TextStyle(color: Colors.black45),),
        ),
        RaisedButton(
          color: Colors.pink[50],
          onPressed: (){},
          child: Text('温和滋润(168)',style: TextStyle(color: Colors.black45)),
        ),
        RaisedButton(
          color: Colors.pink[50],
          onPressed: (){},
          child: Text('香气迷人(838)',style: TextStyle(color: Colors.black45)),
        ),
        RaisedButton(
          color: Colors.pink[50],
          onPressed: (){},
          child: Text('嫰滑水润(78)',style: TextStyle(color: Colors.black45)),
        ),
        RaisedButton(
          color: Colors.pink[50],
          onPressed: (){},
          child: Text('颜色靓丽(68)',style: TextStyle(color: Colors.black45)),
        ),
        RaisedButton(
          color: Colors.pink[50],
          onPressed: (){},
          child: Text('长期使用(98)',style: TextStyle(color: Colors.black45)),
        ),
        RaisedButton(
          color: Colors.pink[50],
          onPressed: (){},
          child: Text('质地细腻(28)',style: TextStyle(color: Colors.black45)),
        ),
        RaisedButton(
          color: Colors.pink[50],
          onPressed: (){},
          child: Text('还想要(18)',style: TextStyle(color: Colors.black45)),
        )
      ],
    );       
  }

  //循环复制数据
  Widget _getCommentList(){
    return  Column(
      children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 10.0, 10.0, 7.0),
            margin: EdgeInsets.only(bottom: 10.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1.0,color: Colors.grey[200])
              )
            ),
            child: _getCommentsMain()
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 0.0, 10.0, 5.0),
            margin: EdgeInsets.only(bottom: 5.0),
            child: Text(
              '口红颜值高，之前是看同事用，正好逛京东看见了，口红颜值高，之前是看同事用，正好逛京东看见了，口红颜值高，之前是看同事用，正好逛京东看见了，还是活动价格，晚上下单第二天上午就到了，物流快，服务好。',
              maxLines: 2,style: TextStyle(color: Colors.black54,fontSize: 15.0),overflow: TextOverflow.ellipsis,
            )
          ),
          Container(
            height: 90.0,
            child:  ListView(
              shrinkWrap:true,
              scrollDirection:Axis.horizontal,
              // physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset('images/shops/mz04.jpg',height: 80.0,width: 80.0,)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset('images/shops/mz01.jpg',height: 80.0,width: 80.0,)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: Image.asset('images/shops/mz02.jpg',height: 80.0,width: 80.0,)
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
        ],
      );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(15.0, 10.0, 10.0, 7.0),
                margin: EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1.0,color: Colors.grey[200])
                  )
                ),
                child: _getCommentsHead()
              ),
              Container(
                child: _getCommentsWrap()
              ),
              
              _getCommentList(),
              _getCommentList(),
              _getCommentList(),
              _getCommentList(),
              _getCommentList(),
              _getCommentList(),
              _getCommentList(),
              
            ],
          )
        ],
      )
    );
  }
}