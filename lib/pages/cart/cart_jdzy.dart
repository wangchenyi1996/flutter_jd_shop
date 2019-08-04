import 'package:flutter/material.dart';


class Cartjdzy extends StatefulWidget {
  Cartjdzy({Key key}) : super(key: key);

  _CartjdzyState createState() => _CartjdzyState();
}

class _CartjdzyState extends State<Cartjdzy> {
     bool _checkboxSelected=false;//维护复选框状态


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0,color: Colors.grey[200])
        ),
         color: Colors.white
      ),
      height: 55.0,
      child: Container(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
            Row(
               children: <Widget>[
                 Checkbox(
                    value: _checkboxSelected,
                    activeColor: Colors.red, //选中时的颜色
                    onChanged:(value){
                      setState(() {
                        _checkboxSelected=value;
                      });
                    } ,
                  ),
                 Container(
                   child: Row(
                     children: <Widget>[
                       Container(
                         margin: EdgeInsets.only(right: 10.0),
                         child: Text('JD',style: TextStyle(fontSize: 18.0,color: Colors.black38,fontWeight: FontWeight.w700)),
                       ),
                       Container(
                         child: Text('京东自营',style: TextStyle(fontSize: 18.0,color: Colors.black54,fontWeight: FontWeight.w700)),
                       )
                     ],
                   )
                 )
               ],
             ),
            Row(
               children: <Widget>[
                 Container(
                   margin: EdgeInsets.only(right: 2.0),
                  child: Text('已免运费',style: TextStyle(fontSize: 14.0,color: Colors.black38)),
                 ),
                 Container(
                    margin: EdgeInsets.only(left: 2.0),
                  child: Text('优惠卷',style: TextStyle(fontSize: 14.0,color: Colors.pinkAccent)),
                 )
               ],
             ),
           ],
         ),
       ),
    );
  
  }
}