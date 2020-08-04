import 'package:flutter/material.dart';

class CategoryNavView extends StatefulWidget {
  CategoryNavView({Key key}) : super(key: key);

  @override
  _CategoryNavViewState createState() => _CategoryNavViewState();
}

class _CategoryNavViewState extends State<CategoryNavView> {
  @override
  Widget build(BuildContext context) {
    
    

    return Container(
      width: double.infinity,
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          getItemView(0),
          getItemView(1),
          getItemView(2),
          getItemView(3)
        ],
      ),
    );
  }

  getItemView(int index) {
    var titles = ["财富", "生活", "职场", "家庭"];
    var images = [Icons.favorite, Icons.update, Icons.search, Icons.home];
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
      child: GestureDetector(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(images[index]),
            Text(
              titles[index],
              style: TextStyle(
                color: Color(0xFF333333)
              )
            )
          ],
        ),
        onTap: () {
          print("点击了第$index个分类导航");
        },
      ),
    );
  }

}