import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../Config/application.dart';
import '../Config/routers.dart';

class NavigationUtils {

  static jumpToLoginPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.login, transition: TransitionType.inFromRight);
  }

  static jumpToHomePage(BuildContext context) {
    Application.router.navigateTo(context, Routers.home, transition: TransitionType.inFromRight);
  }

}