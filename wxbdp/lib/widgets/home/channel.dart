import 'package:flutter/material.dart';
import '../common/gradient_button.dart';

// 每天听见吴晓波组件
class ChannelView extends StatefulWidget {
  ChannelView({Key key}) : super(key: key);

  @override
  _ChannelViewState createState() => _ChannelViewState();
}

class _ChannelViewState extends State<ChannelView> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Card(
         margin: const EdgeInsets.fromLTRB(20, 16, 20, 16),
         color: Color(0xFFFFFFFF),
         shadowColor: Color(0xFFCCCCCC),
         elevation: 8,
         shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
         ),
         child: Padding(
             padding: EdgeInsets.all(16),
             child: Column(
               children: <Widget>[
                 getHeadView(),
                 getItemCell(0),
                 getItemCell(1),
                 getItemCell(2)
               ],
             ),
          )
       ),
    );
  }

  getHeadView() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.asset("images/banner_1.png", width: 48, height: 48,fit: BoxFit.fill),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "每天听见吴晓波",
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 4)),
                Image.asset("images/right_arrow.png", width: 12, height: 12,)
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 6)),
            Text(
              "已更新至09-22期",
              style: TextStyle(
                color: Color(0xFFCCCCCC),
                fontSize: 12,
              ),
            )
          ],
        ),
        GradientButton(
          width: 90,
          height: 32,
          colors: [Color(0xFF4B88FF), Color(0xFF1E59F6)],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
               Text(
                  "收听全部",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                )
            ],
          ),
          borderRadius: BorderRadius.circular(16),
          onPressed: () {
            print("点击每天听见吴晓波收听全部按钮");
          },
        )
      ],
    );
  }

  getItemCell(int index) {
    var titles = ["为什么哈尔滨超过上海，成为最受欢迎的…", "你还想海外逃税？国家已双拳出击", "十年后，我希望仍能与你在一起"];
    return Container(
      width: double.infinity,
      height: 48,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(titles[index]),
            Icon(Icons.play_arrow)
          ],
        ),
      )
    );
  }


}