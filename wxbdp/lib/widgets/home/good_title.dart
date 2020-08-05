import 'package:flutter/material.dart';

// 知识商品标题组件
class GoodTitleView extends StatefulWidget {
  
  final String title;

  GoodTitleView(this.title);

  @override
  _GoodTitleViewState createState() => _GoodTitleViewState();
}


class _GoodTitleViewState extends State<GoodTitleView> {

  String _title;

  @override
  Widget build(BuildContext context) {
    _title = widget.title;
    return getHeadTitleView();
  }

  getHeadTitleView() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            _title,
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