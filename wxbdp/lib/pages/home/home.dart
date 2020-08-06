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
import '../../widgets/home/day_sign.dart';
import '../../widgets/home/xiaoba_fm.dart';

class HomePage extends StatefulWidget {

  final String microPageId;

  HomePage(this.microPageId);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> _components = List();
  String _microPageId;

  @override
  void initState() {
    super.initState();
    _microPageId = widget.microPageId;
    if (_microPageId == "coursePage") {
      _components = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9].map((e) => getHomeView(e)).toList();
    } else {
      _components = [10, 11, 4, 5].map((e) => getHomeView(e)).toList();
    }
    print(_components.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F7),
      body: ListView(
        children: _components,
      )
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
     case 10:
        return DaySignView();
     case 11:
        return XiaoBaFm();
    }
    return Text("");
  }

}