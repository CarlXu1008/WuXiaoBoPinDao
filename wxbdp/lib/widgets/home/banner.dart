import 'package:flutter/material.dart';

class BannerView extends StatefulWidget {
  BannerView({Key key}) : super(key: key);

  @override
  _BannerViewState createState() => _BannerViewState();
}

class _BannerViewState extends State<BannerView> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("轮播图"),
    );
  }
}