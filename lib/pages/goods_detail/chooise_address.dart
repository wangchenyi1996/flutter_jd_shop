import 'package:flutter/material.dart';


class ChooiseAddress extends StatefulWidget {
  ChooiseAddress({Key key}) : super(key: key);

  _ChooiseAddressState createState() => _ChooiseAddressState();
}

class _ChooiseAddressState extends State<ChooiseAddress> {
   @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.0,
      margin: EdgeInsets.only(top: 5.0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1.0,color: Colors.grey[200]))
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 5.0),
                child: Text(' 送至',style:TextStyle(color: Colors.black45,fontSize: 14.0)),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text('北京朝阳区三环到四环之间',style: TextStyle(color: Colors.black54,fontSize: 17.0)),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Text('现货',style: TextStyle(color: Colors.red,fontSize: 14.0)),
                          Text(' 11:10前下单，预计，今天(8月03日)送达',style: TextStyle(color: Colors.black38,fontSize: 14.0)),
                        ],
                      )
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.more_horiz,color: Colors.black54),
                  ],
                )
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 5.0,left: 23.0),
                child: Text('重量  ',style:TextStyle(color: Colors.black45,fontSize: 14.0)),
              ),
               Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 5.0),
                child: Text('0.2kg',style:TextStyle(color: Colors.black45,fontSize: 14.0)),
              ),
              
            ],
          )
        
        
        ],
      )
    );
  }

}