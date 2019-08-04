import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';  //轮播图插件


class GoodsSwiper extends StatefulWidget {
  GoodsSwiper({Key key}) : super(key: key);

  _GoodsSwiperState createState() => _GoodsSwiperState();
}

class _GoodsSwiperState extends State<GoodsSwiper> {
  List list=[
    'https://m.360buyimg.com/mobilecms/s750x750_jfs/t7876/169/2305432047/243081/beccc130/59acaea4N9a628512.jpg',
    'https://m.360buyimg.com/mobilecms/s843x843_jfs/t18835/196/952474170/180887/aec33dda/5ab472aaNbc3d835a.jpg',
    'https://m.360buyimg.com/mobilecms/s843x843_jfs/t8227/162/656520533/204345/45cf8bf8/59acaea8Ncbd683d5.jpg',
    'https://m.360buyimg.com/mobilecms/s843x843_jfs/t17926/151/964908181/275851/c7ef59a2/5ab472aaN7bd69824.jpg',
    'https://m.360buyimg.com/mobilecms/s843x843_jfs/t1/81124/29/2205/184342/5d065f4eEc82604dd/46cbe5e91f163cce.jpg'
  ];

   Widget _swiperBuilder(BuildContext context, int index) {
    return Container(
      child:Image.network(
        '${list[index]}',
        fit: BoxFit.cover,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
     return  Container(
      width: MediaQuery.of(context).size.width,
      height: 375.0,
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