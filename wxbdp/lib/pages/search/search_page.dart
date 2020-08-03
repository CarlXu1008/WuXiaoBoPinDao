import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("输入手机号", style: TextStyle(color: Color(0xFF000000))),
          backgroundColor: Color(0xFFFFFFFF),
          iconTheme: IconThemeData(color: Color(0xFF000000)),
        ),
        body: Center(
          child: Text("搜索页面"),
        ),
    );
  }
}