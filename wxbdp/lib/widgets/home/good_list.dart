import 'package:flutter/material.dart';

class GoodListView extends StatefulWidget {
  GoodListView({Key key}) : super(key: key);

  @override
  _GoodListViewState createState() => _GoodListViewState();
}

class _GoodListViewState extends State<GoodListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      shrinkWrap: true,
      physics: new NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext content, int index) {
        if (index == 0) {
          return getHeadTitleView();
        }
        return InkWell(
          child: getGoodItemView(),
          onTap: () {
            print("点击第$index个知识商品列表组件");
          },
        );
        // return getGoodItemView();
      },
 
    );
  }

  getHeadTitleView() {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "知识商品列表组件",
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

  getGoodItemView() {
    const double columnWidth = 200;
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 6, 16, 6),
      shadowColor: Color(0xFFCCCCCC),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                child: Image.asset("images/banner_1.png", width: 136, height: 102,fit: BoxFit.fill),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(4.0), bottomLeft: Radius.circular(4.0)),
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
          Container(
            height: 102,
            width: columnWidth,
            padding: EdgeInsets.fromLTRB(12, 6, 12, 6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  height: 16,
                  child: Text(
                    "胡慎之的高情商沟通课",
                    maxLines: 1,
                    style: TextStyle(
                      color: Color(0xFF252831),
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    )
                  ),
                ),
                Container(
                  height: 40,
                  width: columnWidth,
                  child: Text(
                    "胡慎之 • 北大心理学博士 让你成为受欢",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0x99252831),
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                    )
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "150期",
                      style: TextStyle(
                        color: Color(0xFFCCA983),
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Row(
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
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}