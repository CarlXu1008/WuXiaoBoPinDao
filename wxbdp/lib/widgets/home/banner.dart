import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class BannerView extends StatefulWidget {
  BannerView({Key key}) : super(key: key);

  @override
  _BannerViewState createState() => _BannerViewState();
}

class _BannerViewState extends State<BannerView> {

  var _imageNames = ["images/banner_1.png", "images/banner_2.png", "images/banner_3.png", "images/banner_2.png"];

  @override
  Widget build(BuildContext context) {
    return Container(
       width: double.infinity,
       height: 160,
       child: Swiper (
          itemCount: 4,
          itemBuilder: (BuildContext context,int index) {
            return Image.asset(_imageNames[index], width: double.infinity, height: double.infinity,fit: BoxFit.fill);
          },
          pagination: new SwiperPagination(),
         ),
    );
  }
}