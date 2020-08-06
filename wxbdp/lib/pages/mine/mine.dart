import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("我的", style: TextStyle(color: Color(0xFF000000))),
          backgroundColor: Color(0xFFFFFFFF),
          iconTheme: IconThemeData(color: Color(0xFF000000)),
        ),
        body: Center(
          child: Text("我的页面"),
        ),
    );
  }
}