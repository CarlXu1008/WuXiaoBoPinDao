import 'package:flutter/material.dart';
import 'package:wxbdp/widgets/home/good_title.dart';
import '../../widgets/home/search.dart';
import '../../widgets/home/banner.dart';
import '../../widgets/home/category_nav.dart';
import '../../widgets/home/channel.dart';
import '../../widgets/home/good_list.dart';
import '../../widgets/home/good_grid.dart';
import '../../widgets/home/good_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F7),
      body: ListView.builder(
            itemBuilder: (BuildContext content, int index){
              return getHomeView(index);
            },
            itemCount: 8,
        ),
    );
  }

 Widget getHomeView(int index) {
    switch (index) {
      case 0:
        return SearchView();
      case 1:
        return BannerView();
      case 2:
        return CategoryNavView();
      case 3:
        return ChannelView();
      case 4:
        return GoodListView();
      case 5:
        return Column(children: <Widget>[
          GoodTitleView(),
          GoodsGridView()
        ]);
    }
    return Text("");
  }

}