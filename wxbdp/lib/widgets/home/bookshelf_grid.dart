import 'package:flutter/material.dart';

// 书架宫格组件
class BookShelfGridView extends StatefulWidget {
  @override
  _BookShelfGridViewState createState() => _BookShelfGridViewState();
}

class _BookShelfGridViewState extends State<BookShelfGridView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450, // Warnning: 不给高度会渲染异常!!!
      margin: const EdgeInsets.fromLTRB(20, 8, 20, 8),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.50
        ), 
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            child: getBookShelfGridItemView(),
            onTap: () {
              print("点击知识商品宫格组件第$index个");
            },
          );
        },
        itemCount: 6,
        // Tips: 禁止滚动
        physics: new NeverScrollableScrollPhysics(),
      )
    );
  }

  getBookShelfGridItemView() {
    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            child: Image.asset("images/banner_3.png", width: 96, height: 136,fit: BoxFit.fill),
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          Container(
            height: 36,
            margin: const EdgeInsets.only(top: 8, bottom: 12),
            child: Text(
                "激荡十年，水大鱼大",
                maxLines: 2,
                style: TextStyle(
                  color: Color(0xFF252831),
                  fontSize: 14,
                  fontWeight: FontWeight.bold
                )
              ),
          ),
          Row(
            children: <Widget>[
              Text(
                "9.9波豆",
                maxLines: 1,
                style: TextStyle(
                  color: Color(0xFFBCA16B),
                  fontSize: 12,
                  fontWeight: FontWeight.bold
                )
              ),
              SizedBox(width: 4,),
              Text(
                "19.9波豆",
                maxLines: 1,
                style: TextStyle(
                  color: Color(0xFFCCCCCC),
                  fontSize: 10,
                  decoration: TextDecoration.lineThrough
                )
              ),
            ],
          )
        ],
      ),
    );
  }
 

}