import 'package:flutter/material.dart';
import '../../Utils/navigation_utils.dart';
import '../../utils/shared_preferences_util.dart';

class LauchPage extends StatefulWidget {
  @override
  _LauchPageState createState() => _LauchPageState();
}

class _LauchPageState extends State<LauchPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      SharePreferencesUtils.getIsLogin().then((isLogin) => {
        if (isLogin == 1) {
          NavigationUtils.jumpToMainPage(context)
        } else {
          NavigationUtils.jumpToLoginPage(context)
        }
      });
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