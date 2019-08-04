import 'package:flutter/material.dart';


class CartFixed extends StatefulWidget {
  CartFixed({Key key}) : super(key: key);

  _CartFixedState createState() => _CartFixedState();
}

class _CartFixedState extends State<CartFixed> {
   bool _checkboxSelected=false;//维护复选框状态


  @override
  Widget build(BuildContext context) {
     return Container(
      color: Colors.grey[100],
      padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 3.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 30.0,width: 30.0,
                  child: Checkbox(
                    value: _checkboxSelected,
                    activeColor: Colors.red, //选中时的颜色
                    onChanged:(value){
                      setState(() {
                        _checkboxSelected=value;
                      });
                    } ,
                  )
                ),
                Text(
                  '全选',
                  style: TextStyle(fontSize: 12.0, color: Colors.grey),
                )
              ],
            ),
          ),
         
          Container(
            margin: EdgeInsets.only(left: 15.0, right: 25.0,bottom: 20.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      child:  Text('总计：',
                        style: TextStyle(fontSize: 16.0, color: Colors.black87,fontWeight: FontWeight.w700))
                    ),
                    Container(
                      child:  Text('￥195.00',
                        style: TextStyle(fontSize: 18.0, color: Colors.red,fontWeight: FontWeight.w700))
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
              width: 100.0,
              height: 40.0,
              margin: EdgeInsets.only(left: 85.0),
              child: FlatButton(
                color: Colors.orange[600],
                highlightColor: Colors.orange[600],
                colorBrightness: Brightness.dark,
                splashColor: Colors.grey,
                child: Text("去结算"),
                onPressed: () => {},
              )),
        ],
      ),
    );
 
  }
}
