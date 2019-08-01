import 'package:flutter/material.dart';

class MySkill extends StatefulWidget {
  MySkill({Key key}) : super(key: key);

  _MySkillState createState() => _MySkillState();
}

class _MySkillState extends State<MySkill> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      margin: EdgeInsets.fromLTRB(6, 10, 6, 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.white),
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        crossAxisCount: 1,
        childAspectRatio: 0.5,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 45.0,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('images/bg.png'))),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Text(
                        '京东秒杀',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15.0),
                      child: Text('16点场',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w600)),
                    ),
                    Container(
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.pink[50], width: 1.0),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text('00 : 28 : 11'),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 80.0),
                        child: GestureDetector(
                          child: Row(
                            children: <Widget>[
                              Text(
                                '更多秒杀',
                                style: TextStyle(
                                    color: Colors.pink, fontSize: 14.0),
                              ),
                              Icon(
                                Icons.arrow_right,
                                color: Colors.pink,
                              ),
                            ],
                          ),
                          onTap: () {
                            print('点击了秒杀');
                          },
                        )),
                  ],
                ),
              ),
              Container(
                height: 140.0,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset('images/shops/mz04.jpg',height: 80.0,width: 80.0),
                          Container(
                            margin: EdgeInsets.only(top: 4.0),
                            child: Text('￥569',style: TextStyle(color: Colors.red,fontSize: 17.0,fontWeight: FontWeight.w700))
                          ),
                          Container(child: Text('￥1369',style: TextStyle(
                            color: Colors.grey,fontSize: 15.0,fontWeight: FontWeight.w500,decoration: TextDecoration.lineThrough)
                            )
                          )
                        ],
                      )
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 15.0),
                          child: Column(
                        children: <Widget>[
                          Image.asset('images/shops/mz02.jpg',height: 80.0,width: 80.0),
                          Container(
                            margin: EdgeInsets.only(top: 4.0),
                            child: Text('￥999',style: TextStyle(color: Colors.red,fontSize: 17.0,fontWeight: FontWeight.w700))
                          ),
                          Container(child: Text('￥3369',style: TextStyle(
                            color: Colors.grey,fontSize: 15.0,fontWeight: FontWeight.w500,decoration: TextDecoration.lineThrough)
                            )
                          )
                        ],
                      )
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Column(
                        children: <Widget>[
                          Image.asset('images/shops/mz01.jpg',height: 80.0,width: 80.0),
                          Container(
                            margin: EdgeInsets.only(top: 4.0),
                            child: Text('￥369',style: TextStyle(color: Colors.red,fontSize: 17.0,fontWeight: FontWeight.w700))
                          ),
                          Container(child: Text('￥869',style: TextStyle(
                            color: Colors.grey,fontSize: 15.0,fontWeight: FontWeight.w500,decoration: TextDecoration.lineThrough)
                            )
                          )
                        ],
                      )
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Column(
                        children: <Widget>[
                          Image.asset('images/shops/goods3.jpg',height: 80.0,width: 80.0),
                          Container(
                            margin: EdgeInsets.only(top: 4.0),
                            child: Text('￥169',style: TextStyle(color: Colors.red,fontSize: 17.0,fontWeight: FontWeight.w700))
                          ),
                          Container(child: Text('￥769',style: TextStyle(
                            color: Colors.grey,fontSize: 15.0,fontWeight: FontWeight.w500,decoration: TextDecoration.lineThrough)
                            )
                          )
                        ],
                      )),
                    Container(
                      margin: EdgeInsets.only(left: 15.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset('images/shops/goods1.jpg',height: 80.0,width: 80.0),
                          Container(
                            margin: EdgeInsets.only(top: 4.0),
                            child: Text('￥369',style: TextStyle(color: Colors.red,fontSize: 17.0,fontWeight: FontWeight.w700))
                          ),
                          Container(child: Text('￥869',style: TextStyle(
                            color: Colors.grey,fontSize: 15.0,fontWeight: FontWeight.w500,decoration: TextDecoration.lineThrough)
                            )
                          )
                        ],
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset('images/shops/goods8.jpg',height: 80.0,width: 80.0),
                          Container(
                            margin: EdgeInsets.only(top: 4.0),
                            child: Text('￥169',style: TextStyle(color: Colors.red,fontSize: 17.0,fontWeight: FontWeight.w700))
                          ),
                          Container(child: Text('￥569',style: TextStyle(
                            color: Colors.grey,fontSize: 15.0,fontWeight: FontWeight.w500,decoration: TextDecoration.lineThrough)
                            )
                          )
                        ],
                      )
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Column(
                        children: <Widget>[
                          Image.asset('images/shops/goods11.jpg',height: 80.0,width: 80.0),
                          Container(
                            margin: EdgeInsets.only(top: 4.0),
                            child: Text('￥269',style: TextStyle(color: Colors.red,fontSize: 17.0,fontWeight: FontWeight.w700))
                          ),
                          Container(child: Text('￥869',style: TextStyle(
                            color: Colors.grey,fontSize: 15.0,fontWeight: FontWeight.w500,decoration: TextDecoration.lineThrough)
                            )
                          )
                        ],
                      )),
                    
                  ],
                ),
              )
            ],
          )
        ],
      )
    );
  }
}
