import 'package:flutter/material.dart';
import '../../widgets/mine/mine_head.dart';
import '../../widgets/mine/mine_cell.dart';
import '../../model/mine_cell_model.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  
  List<String> _titles = ["波豆余额", "邀请好友", "我的收藏", "下载列表", "优惠劵", "兑换码", "购买记录", "联名会员"];
  List<String> _icons = ["images/mine_bodou.png", "images/mine_invite_friend.png", "images/mine_collection.png", 
  "images/mine_download.png", "images/mine_coupon.png", "images/mine_reecode.png",
   "images/mine_purchase.png", "images/mine_member.png"];

  List<Widget> _cells = [];

  @override
  void initState() {
    super.initState();

    List<MineCellModel> _cellModels = [];
    int _index = 0;
    _titles.forEach((element) { 
      MineCellModel model = MineCellModel(_index, _icons[_index], _titles[_index]);
      _index = _index + 1;
      if (_index == 0) {
        model.subTitle = "200.0波豆";
      } else if (_index == 1) {
        model.subTitle = "邀请好友各得7天超级会员";
      } else if (_index == 4) {
        model.subTitle = "2 张";
        model.isnew = true;
      }
      _cellModels.add(model);
    });
    _cells = _cellModels.map((e) => MineCell(e)).toList(); 
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
                MineHeadView(),
                ListView(
                  physics: new NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: _cells,
                )
              ],
            ),
        )
        
    );
  }

 
 


}


