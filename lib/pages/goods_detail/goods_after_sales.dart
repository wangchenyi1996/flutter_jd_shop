import 'package:flutter/material.dart';

class GoodsAfterSales extends StatefulWidget {
  GoodsAfterSales({Key key}) : super(key: key);

  _GoodsAfterSalesState createState() => _GoodsAfterSalesState();
}

class _GoodsAfterSalesState extends State<GoodsAfterSales> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,color: Colors.grey[200]
          )
        )
      ),
        height: 50.0,
        child: Wrap(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10.0,top: 5.0,right: 3.0),
              child:
                  Icon(Icons.check_circle, color: Colors.red[400], size: 14.0),
            ),
            Container(
              child: Text('99元免基础运费(20kg内)',style: TextStyle(fontSize: 14.0,color: Colors.black38),),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0,top: 5.0,right: 3.0),
              child:Icon(Icons.check_circle, color: Colors.red[400], size: 14.0),
            ),
            Container(
              child: Text('7天无理由退货（拆封后不支持）',style: TextStyle(fontSize: 14.0,color: Colors.black38))
            ),
            Container(
               margin: EdgeInsets.only(left: 10.0,top: 5.0,right: 3.0),
              child:
                  Icon(Icons.check_circle, color: Colors.red[400], size: 14.0),
            ),
            Container(
              child: Text('京东发货&售后',style: TextStyle(fontSize: 14.0,color: Colors.black38)),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0,top: 5.0,right: 3.0),
              child:
                  Icon(Icons.check_circle, color: Colors.red[400], size: 14.0),
            ),
            Container(
              child: Text('京准达',style: TextStyle(fontSize: 14.0,color: Colors.black38)),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0,top: 5.0,right: 3.0),
              child:
                  Icon(Icons.check_circle, color: Colors.red[400], size: 14.0),
            ),
            Container(
              child: Text('211限时达',style: TextStyle(fontSize: 14.0,color: Colors.black38)),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0,top: 5.0,right: 3.0),
              child:
                  Icon(Icons.check_circle, color: Colors.red[400], size: 14.0),
            ),
            Container(
              child: Text('自提',style: TextStyle(fontSize: 14.0,color: Colors.black38)),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0,top: 5.0,right: 3.0),
              child:
                  Icon(Icons.check_circle, color: Colors.red[400], size: 14.0),
            ),
            Container(
              child: Text('闪电退款',style: TextStyle(fontSize: 14.0,color: Colors.black38)),
            ),
          ],
        )
      );
  }
}
