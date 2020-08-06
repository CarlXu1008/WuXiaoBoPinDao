import 'package:flutter/material.dart';
import '../../model/mine_cell_model.dart';
import '../../utils/navigation_utils.dart';


class MineCell extends StatefulWidget {

  final MineCellModel model;

  MineCell(this.model);

  @override
  _MineCellState createState() => _MineCellState();
}

class _MineCellState extends State<MineCell> {

  MineCellModel _model;

  @override
  void initState() {
    super.initState();
    _model = widget.model;
  }

  @override
  Widget build(BuildContext context) {
    return getMineItemCell();
  }

  getMineItemCell() {
    return Container(
      margin: EdgeInsets.fromLTRB(16, (_model.title == "我的收藏") ? 16 : 1, 16, 1),
      width: double.infinity,
      height: 50,
      child: InkWell(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(_model.iconName, width: 20, height: 20,),
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Text(
                _model.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                getNewFlag(_model.isnew == null ? false : _model.isnew),
                Text(
                  _model.subTitle == null ? "" : _model.subTitle, 
                  style: TextStyle(
                    color: Color(0xFF2F44BA),
                    fontSize: 12
                  ),
                ),
                SizedBox(width: 2),
                Image.asset("images/mine_right_arrow.png", width: 12, height: 12,),
              ],
            )
          ],
        ),
        onTap: () {
          print("点击我的cell: ${_model.title}");
          clickToJump();
        },
      )
    );
  }

  getNewFlag(bool isShow) {
    if (isShow) {
      return Container(
        width: 40,
        height: 16,
        padding: EdgeInsets.fromLTRB(8, 2, 5, 2),
        margin: const EdgeInsets.only(right: 8),
        child: Text(
          "NEW",
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.bold
          ),
        ),
        decoration: new BoxDecoration(
          color: Color(0xFFCF502D),
          borderRadius: BorderRadius.all(Radius.circular(8.0))
        ),
      );
    } else {
      return SizedBox(width: 2);
    }
  }

  clickToJump() {
    switch (_model.title) {
      case "波豆余额":
        NavigationUtils.jumpToWalletPage(context);
        break;
      case "邀请好友":
        NavigationUtils.jumpToInviteFriendPage(context);
        break;
      case "我的收藏":
        NavigationUtils.jumpToMyCollectionPage(context);
        break;
      case "下载列表":
        NavigationUtils.jumpToDownloadListPage(context);
        break;
      case "优惠劵":
        NavigationUtils.jumpToCoupomPage(context);
        break;
      case "兑换码":
        NavigationUtils.jumpToReecodePage(context);
        break;
      case "购买记录":
        NavigationUtils.jumpToPurchasedPage(context);
        break;
      case "联名会员":
        NavigationUtils.jumpToMembershipPage(context);
        break;
      default:
    }
  }

}