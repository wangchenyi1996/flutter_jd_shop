import 'package:flutter/material.dart';

class NewPerson extends StatefulWidget {
  NewPerson({Key key}) : super(key: key);

  _NewPersonState createState() => _NewPersonState();
}

class _NewPersonState extends State<NewPerson> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10.0, 6.0, 10.0, 6.0),
      height: 120.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: AssetImage('images/home/home1.jpg'),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: AssetImage('images/home/home2.jpg'),
                  fit: BoxFit.cover
                )
              ),
            )
          )
        ],
      )
    );
  }
}