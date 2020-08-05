import 'package:flutter/material.dart';

// 书架列表组件
class BookShelfListView extends StatefulWidget {
  @override
  // 书架列表组件
  _BookShelfListViewState createState() => _BookShelfListViewState();
}

// 书架列表组件
class _BookShelfListViewState extends State<BookShelfListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          getBookShelfListItemView(),
          getBookShelfListItemView()
        ],
      ),
    );
  }


  getBookShelfListItemView() {
    return InkWell(
      child: Card(
        margin: const EdgeInsets.fromLTRB(16, 6, 16, 6),
        child: Row(
          children: <Widget>[
            ClipRRect(
              child: Image.asset("images/banner_3.png", width: 96, height: 136,fit: BoxFit.fill),
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
                height: 112,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "《激荡十年，水大鱼大》| 吴晓波解读",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                       style: TextStyle(
                         color: Color(0xFF333333),
                         fontSize: 15,
                         fontWeight: FontWeight.bold
                       ),
                    ),
                    SizedBox(height: 4),
                    Expanded(
                      child: Text(
                          "2008-2018既波澜壮阔又混沌失控既",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 13
                          ),
                        ),
                    ), // 使用Expanded, 其中父视图的高度必须确定, 不然没发计算撑满的问题
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
            ),
            
          ],
        ),
      ),
      onTap: () {
        print("点击了书架列表组件");
      },
    );
  }

}