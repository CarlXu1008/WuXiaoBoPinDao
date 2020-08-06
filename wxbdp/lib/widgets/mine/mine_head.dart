import 'package:flutter/material.dart';
import '../../Utils/navigation_utils.dart';

// 我的页面 - 头部视图
class MineHeadView extends StatefulWidget {
  @override
  _MineHeadViewState createState() => _MineHeadViewState();
}

class _MineHeadViewState extends State<MineHeadView> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: 375, height: 200),
      child: getHeadView(),
    );
    
  }

  getHeadView() {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Image.asset("images/mine_head_bg.png", width: double.infinity, height: 200, fit: BoxFit.fill,),
        Positioned(
          top: 80,
          left: 20,
          width: 335,
          height: 80,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 48,
                height: 48,
                child: GestureDetector(
                  child: Image.asset("images/mine_head.png", width: 48, height: 48,fit: BoxFit.fill),
                  onTap: () {
                    print("点击头像");
                    NavigationUtils.jumpToUserInfoPage(context);
                  },
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: GestureDetector(
                  child: Text(
                    "点击登录",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  onTap: () {
                    print("点击登录");
                  }
                ),
              ),
              IconButton(
                icon: Image.asset("images/mine_head_setting.png", width: 24, height: 24,), 
                onPressed: (){
                  print("点击设置按钮");
                  NavigationUtils.jumpToSettingPage(context);
                }
              ),
              IconButton(
                icon: Image.asset("images/mine_head_email.png", width: 24, height: 24,), 
                onPressed: (){
                  print("点击消息按钮");
                  NavigationUtils.jumpToMessagePage(context);
                }
              ),
            ],
          )
        ),
        Positioned(
          top: 160,
          left: 20,
          width: 335,
          height: 68,
          child: getSuperVipCard()
        )
      ]
    );
  }


  getSuperVipCard() {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(4)),
      child: Container(
        width: double.infinity,
        height: 80,
        color: Color(0xFFD5B186),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width:20),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 12),
                  Text(
                    "开通超级会员", 
                    style: TextStyle(
                      color: Color(0xFFFFF5EA),
                      fontSize: 14
                    ),
                  ),
                  Text(
                    "万元课程免费听", 
                    style: TextStyle(
                      color: Color(0xFFFFF5EA),
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: GestureDetector(
                child: Container(
                  width: 60,
                  height: 24,
                  color: Colors.brown,
                  child: InkWell(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "开通", 
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                          ),                  
                        ),
                        Image.asset("images/right_arrow.png", width: 12, height: 12,fit: BoxFit.fill,)
                      ],
                    ),
                    onTap: () {
                      print("点击了开通超级会员按钮");
                      NavigationUtils.jumpToSuperVipBriedfPage(context);
                    },
                  ),
                  
                )
              ),
            ),
            SizedBox(width:16)
          ],
        ),
      ),
    );
  }

}