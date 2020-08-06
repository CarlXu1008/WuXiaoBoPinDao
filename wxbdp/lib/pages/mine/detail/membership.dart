import 'package:flutter/material.dart';

class MemberShipPage extends StatefulWidget {
  @override
  _MemberShipState createState() => _MemberShipState();
}

class _MemberShipState extends State<MemberShipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("联名会员")
      ),
    );
  }
}