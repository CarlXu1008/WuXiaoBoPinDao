import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class BannerView extends StatefulWidget {
  BannerView({Key key}) : super(key: key);

  @override
  _BannerViewState createState() => _BannerViewState();
}

class _BannerViewState extends State<BannerView> {
  @override
  Widget build(BuildContext context) {
    return Container(
       width: double.infinity,
       height: 160,
       child: Swiper (
          itemCount: 4,
          itemBuilder: (BuildContext context,int index) {
            return new Image.network("https://baike.baidu.com/pic/%E6%9D%8E%E5%BD%A6%E5%AE%8F/125160/1/2f738bd4b31c8701928251782d7f9e2f0708ff7c?fr=lemma&ct=single");
          },
          pagination: new SwiperPagination(),
         ),
    );
  }
}