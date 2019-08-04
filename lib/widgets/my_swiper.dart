import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';  //轮播图插件

import 'package:flutter_drag_scale/flutter_drag_scale.dart';

class MySwiper extends StatefulWidget {
  MySwiper({Key key}) : super(key: key);

  _MySwiperState createState() => _MySwiperState();
}

class _MySwiperState extends State<MySwiper> {
  final List list=[
    'https://imgcps.jd.com/ling4/2693720/54mb5aW25Lmz5ZOB5Zeo5bm05Y2O/5q2j5ZOB6YCf6YCS/p-5c1224c882acdd181d123092/8383e334/cr_1125x549_0_72/s1125x690/q70.jpg',
    'https://m.360buyimg.com/mobilecms/s750x366_jfs/t1/67288/20/1488/87640/5cfbd2bdE381510dc/9f4040b7ec83c3e8.jpg!cr_1125x549_0_72!q70.jpg',
    'https://m.360buyimg.com/mobilecms/s750x366_jfs/t1/31746/32/1528/111163/5c500f8aEe3c6c0e7/0e1519939f544e8d.jpg',
    'https://m.360buyimg.com/mobilecms/s750x366_jfs/t1/69467/39/1488/108006/5cfbd75cE05606923/eb7b80c905210fbf.jpg!cr_1125x549_0_72!q70.jpg',
    'https://m.360buyimg.com/babel/s869x347_jfs/t1/44164/24/9704/154721/5d2fd18eEdaa66854/04c77b184c54d965.jpg!q70.dpg'
  ];

  Widget _swiperBuilder(BuildContext context, int index) {
    return Container(
      child: DragScaleContainer(
      doubleTapStillScale: true,
        child:Image.network(
          '${list[index]}',
          fit: BoxFit.cover,
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      height: 160.0,
      child: Swiper(
        itemBuilder: _swiperBuilder,
        itemCount:5,
        pagination: new SwiperPagination(
            builder: DotSwiperPaginationBuilder(
            color: Colors.black12,
            activeColor: Colors.white,
          )
        ),
        scrollDirection: Axis.horizontal,
        autoplay: true,
        onTap: (index) => print('点击了第$index个'),
      )
    );
  }
}