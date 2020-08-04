import 'package:flutter/material.dart';


class GoodTitleView extends StatefulWidget {
  GoodTitleView({Key key}) : super(key: key);


  @override
  _GoodTitleViewState createState() => _GoodTitleViewState();
}


class _GoodTitleViewState extends State<GoodTitleView> {
  @override
  Widget build(BuildContext context) {
    return getHeadTitleView();
  }

  getHeadTitleView() {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "知识商品宫格组件",
            style: TextStyle( 
              color: Color(0xFF252831),
              fontSize: 18,
              fontWeight: FontWeight.bold
            )
          ),
          FlatButton(
            onPressed: (){
              print("点击查看更多");
            }, 
            child: Text(
              "查看更多",
              style: TextStyle(
                color: Color(0xFF999999),
                fontSize: 14
              )
            )
          )
        ],
      ),
    );
  }

}