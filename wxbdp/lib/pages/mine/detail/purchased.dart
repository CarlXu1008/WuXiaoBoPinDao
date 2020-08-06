import 'package:flutter/material.dart';

class PurchasedPage extends StatefulWidget {
  @override
  _PurchasedPageState createState() => _PurchasedPageState();
}

class _PurchasedPageState extends State<PurchasedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("购买记录")
      ),
    );
  }
}