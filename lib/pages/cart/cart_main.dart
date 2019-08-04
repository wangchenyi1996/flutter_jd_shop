import 'package:flutter/material.dart';

class CartMain extends StatefulWidget {
  CartMain({Key key}) : super(key: key);

  _CartMainState createState() => _CartMainState();
}

class _CartMainState extends State<CartMain> {
   bool _checkboxSelected=false;//维护复选框状态

  //满减
  Widget _cartDiscount(){
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.red[400],
                  borderRadius: BorderRadius.circular(10.0)
                ),
                padding: EdgeInsets.fromLTRB(6.0, 2.0, 6.0, 2.0),
                
                child: Text('满减',style: TextStyle(fontSize: 14.0,color: Colors.white)),
              ),
              Container(
                margin: EdgeInsets.only(left: 15.0),
                child: Text('购满499元，可减50元，还差204元',
                style: TextStyle(fontSize: 14.0,color: Colors.black87))
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                child:Text('去凑单',style: TextStyle(fontSize: 14.0,color: Colors.pinkAccent)),
              )
            ],
          ),
        ],
      ),
    );
  }

  //商品
  List<Widget> _cartGoodsList(){
    List<Widget> goodlist=[];
    for (var i = 0; i < 6; i++) {
      goodlist.add(
         Column(
           children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child:  Checkbox(
                        value: _checkboxSelected,
                        activeColor: Colors.red, //选中时的颜色
                        onChanged:(value){
                          setState(() {
                            _checkboxSelected=value;
                          });
                        } ,
                      ),
                    ),
                    Container(
                      child: Image.asset('images/shop16.jpg',width: 75.0,height: 75.0,),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 260.0,
                            child: Text('迪奥（Dior）魅惑润唇蜜004 3.5g(变色润唇膏 口红 丰唇膏 滋润保湿)珊瑚色',maxLines: 2
                              ,style: TextStyle(fontSize: 14.0,color: Colors.black54)
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8.0),
                            padding: EdgeInsets.only(top: 3.0,bottom: 3.0,left: 3.0),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.0,color: Colors.grey[100])
                            ),
                            width: 260.0,
                            child: Text('004#-变色唇膏-珊瑚，3.5g',style: TextStyle(fontSize: 14.0,color: Colors.black26),),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
          
              Container(
                margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                    width: 1.0,color: Colors.grey[200]
                  ))
                ),
                height: 40.0,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 57.0),
                          child: Text('￥258.88',style: TextStyle(fontSize: 17.0,color: Colors.pinkAccent)),
                        )
                      ],
                    ),
                    Row(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0,color: Colors.grey[200])
                        ),
                        child: Text('—',style: TextStyle(fontSize: 18.0,color: Colors.black38)),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 50.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0,color: Colors.grey[200])
                        ),
                        child: Text('1',style: TextStyle(fontSize: 18.0,color: Colors.black38)),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0,color: Colors.grey[200])
                        ),
                        child: Text('+',style: TextStyle(fontSize: 18.0,color: Colors.black38)),
                      )
                    ],
                  )
                  ]
                )
              )
             
           ],
         )
      );
    }
    return goodlist;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
       color: Colors.white,
      padding: EdgeInsets.all(10.0),
       child: ListView(
         shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(),
         children: <Widget>[
           _cartDiscount(),
           Column(
             children: _cartGoodsList()
           )

         ],
       ),
    );
  }
}