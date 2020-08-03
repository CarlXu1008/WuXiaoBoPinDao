import 'package:flutter/material.dart';
import '../../widgets/home/search.dart';
import '../../widgets/home/banner.dart';
import '../../widgets/home/category_nav.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
            itemBuilder: (BuildContext content, int index){
              return getHomeView(index);
            },
            itemCount: 3,
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
    }
    return Text("未匹配到组件");
  }

}