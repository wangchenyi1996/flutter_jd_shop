import 'package:flutter/material.dart';


class GoodsIntro extends StatefulWidget {
  GoodsIntro({Key key}) : super(key: key);

  _GoodsIntroState createState() => _GoodsIntroState();
}

class _GoodsIntroState extends State<GoodsIntro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 113.0,
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 48.0,
              child:  Row(
                children: <Widget>[
                  Container(
                  margin: EdgeInsets.only(left: 8.0,right: 8.0,top: 4.0),
                  padding: EdgeInsets.only(left: 3.0,right: 3.0),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                  child: Text('自营',style: TextStyle(color: Colors.white),),
                ),
                  Container(
                    width: 350.0,
                    child: Wrap(
                      children: <Widget>[
                        Text('迪奥（Dior）迪奥小姐花漾奢华淡香氛(EDT) 50ml（又名:迪奥小姐花漾淡香水）',
                        style: TextStyle(fontSize: 15.0,color: Colors.black87,fontWeight: FontWeight.w700),maxLines: 2,),
                      ],
                    )
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 4.0),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 0.5,color: Colors.grey[300]
                  )
                )
              ),
              height: 52.0,
              child: Wrap(
                children: <Widget>[
                  Container(
                    child: Text('【自营品质，正品保证】挚爱集结，俘获TA心,女神“夕”引力,每满499减50,快去为TA挑选七夕专属美礼！点击详情查看更多 '), 
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}