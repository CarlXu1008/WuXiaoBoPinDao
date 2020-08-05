import 'package:flutter/material.dart';
import 'package:wxbdp/widgets/home/good_title.dart';
import '../../widgets/home/search.dart';
import '../../widgets/home/banner.dart';
import '../../widgets/home/category_nav.dart';
import '../../widgets/home/channel.dart';
import '../../widgets/home/good_list.dart';
import '../../widgets/home/good_grid.dart';
import '../../widgets/home/knowledge_answer.dart';
import '../../widgets/home/knowledge_subject.dart';
import '../../widgets/home/bookshelf_grid.dart';
import '../../widgets/home/bookshelf_list.dart';

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
            itemCount: 10,
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
          GoodTitleView("知识商品宫格组件"),
          GoodsGridView()
        ]);
      case 6:
        return Column(
          children: <Widget>[
            GoodTitleView("知识问答组件"),
            KnowledgeAnswer()
          ],
        );
      case 7:
        return Column(
          children: <Widget>[
            GoodTitleView("知识专题组件"),
            KnowledgeSubject()
          ],
        );
     case 8:
        return Column(
          children: <Widget>[
            GoodTitleView("书架宫格组件"),
            BookShelfGridView()
          ],
        );
     case 9:
        return Column(
          children: <Widget>[
            GoodTitleView("书架列表组件"),
            BookShelfListView()
          ],
        );
    }
    return Text("");
  }

}