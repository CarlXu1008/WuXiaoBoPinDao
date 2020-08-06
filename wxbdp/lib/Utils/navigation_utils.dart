import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../Config/application.dart';
import '../Config/routers.dart';


class NavigationUtils {

  static jumpToLoginPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.login, transition: TransitionType.inFromRight);
  }

  static jumpToMainPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.main, transition: TransitionType.inFromRight);
  }

  static jumpToInputPhone(BuildContext context) {
    Application.router.navigateTo(context, Routers.inputPhone, transition: TransitionType.inFromRight, replace: true);
  }

  static jumpToVerifyCode(BuildContext context, String phone) {
    String path = Routers.verifyCode + "?phone=$phone";
    Application.router.navigateTo(context, path, transition: TransitionType.inFromRight);
  }

 static jumpToSearch(BuildContext context) {
    Application.router.navigateTo(context, Routers.search, transition: TransitionType.inFromRight);
  }

}