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
       child: Text("分类导航"),
    );
  }

}