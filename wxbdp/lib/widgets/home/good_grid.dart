import 'package:flutter/material.dart';

// 知识商品宫格组件
class GoodsGridView extends StatefulWidget {
  GoodsGridView({Key key}) : super(key: key);

  @override
  _GoodsGridViewState createState() => _GoodsGridViewState();
}

class _GoodsGridViewState extends State<GoodsGridView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500, // Warnning: 不给高度会渲染异常!!!
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75
        ), 
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            child: getGoodGridItemView(),
            onTap: () {
              print("点击知识商品宫格组件第$index个");
            },
          );
        },
        itemCount: 4,
        // Tips: 禁止滚动
        physics: new NeverScrollableScrollPhysics(),
      )
    );

  }

  getGoodGridItemView() {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(children: <Widget>[
              ClipRRect(
                  child: Image.asset("images/banner_2.png", width: 164, height: 123,fit: BoxFit.fill),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(4.0), topRight: Radius.circular(4.0)),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(8, 5, 8, 5),
                    child: Text(
                      "4674万人学习", 
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 11
                      )
                    ),
                    decoration: new BoxDecoration(
                      color: Color(0xEE252831),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(4.0)),
                    ),
                  ),
                )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
            child: Text(
              "胡慎之的高情商沟通术",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Color(0xFF252831),
                fontSize: 14,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12, 8, 12, 0),
            child: Text(
              "胡慎之 • 北大心理学博士 让你成为受欢",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Color(0xCC252831),
                fontSize: 12,
              )
            ),
          ),
          Expanded(child: Text(""),flex: 1), // Warnning: 填充作用
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 8),
            child: Row(
              children: <Widget>[
                Text(
                  "19.9波豆",
                  style: TextStyle(
                    color: Color(0xFFCCCCCC),
                    fontSize: 12,
                    decoration: TextDecoration.lineThrough
                  ),
                ),
                Padding(padding: EdgeInsets.only(left:4)),
                Text(
                  "9.9波豆",
                  style: TextStyle(
                    color: Color(0xFFCCA983),
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          )
          
        ],
      ),
    );
    
  }



}