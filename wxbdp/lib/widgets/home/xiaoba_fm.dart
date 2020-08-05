
import 'package:flutter/material.dart';

// 小巴音频组件
class XiaoBaFm extends StatefulWidget {
  @override
  _XiaoBaFmState createState() => _XiaoBaFmState();
}

class _XiaoBaFmState extends State<XiaoBaFm> {

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
             padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
             child: getXiaoBaFMItemView(),
          ),
          Padding(
             padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
             child: getXiaoBaFMItemView(),
          ),
          Padding(
             padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
             child: getXiaoBaFMItemView(),
          ),
          Padding(
             padding: EdgeInsets.fromLTRB(20, 8, 20, 20),
             child: getXiaoBaFMBtmView()
          ),
        ],
      ),
    );
  }

  getXiaoBaFMItemView() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                child: Image.asset("images/banner_3.png", width: 48, height: 36,fit: BoxFit.fill),
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              ),
              Padding(padding: EdgeInsets.only(left: 12)),
              Text(
                "财经日日评",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 4)),
              Image.asset("images/right_arrow.png", width: 12, height: 12),
              Expanded(child: Text("")),
              Image.asset("images/xiaobo_fm.png", width: 12, height: 12),
              Padding(padding: EdgeInsets.only(left: 2)),
              Text(
                "12:30",
                maxLines: 1,
                style: TextStyle(
                  color: Color(0x88333333),
                  fontSize: 12,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Text(
                  "本周热议：若基因编辑出事故，科学及婴儿谁改被判死刑?",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 40)),
              IconButton(
                onPressed: () {
                  print("点击播放音频");
                }, 
                icon: Image.asset("images/xiaoba_fm_play.png", width: 24, height: 24)
              )
            ],
          ),
        ],
      );
  }

  getXiaoBaFMBtmView() {
    return Row(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Container(
                   width: 150,
                   height: 48,
                   child: RaisedButton.icon(
                    onPressed: () {
                      print("点击了一键播放");
                    }, 
                    icon: Image.asset("images/xiaoba_fm_one_play.png", width: 16, height: 16,),
                    label: Text(
                      "一键播放",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    color: Color(0xFF2F44BA),
                  )
                 )
               ],
             );
  }

}