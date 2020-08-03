import 'package:flutter/material.dart';
import '../../Utils/navigation_utils.dart';

class LauchPage extends StatefulWidget {
  @override
  _LauchPageState createState() => _LauchPageState();
}

class _LauchPageState extends State<LauchPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      NavigationUtils.jumpToLoginPage(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepOrangeAccent,
        child: Image.asset("images/login.png", width: double.infinity, height: double.infinity,fit: BoxFit.fill)
      )
    );
  }

}