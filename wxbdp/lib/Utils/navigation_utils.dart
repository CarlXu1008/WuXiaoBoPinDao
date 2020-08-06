import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../Config/application.dart';
import '../Config/routers.dart';


class NavigationUtils {



  // 登录模块
  static jumpToLoginPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.login, transition: TransitionType.inFromRight);
  }

  static jumpToInputPhone(BuildContext context) {
    Application.router.navigateTo(context, Routers.inputPhone, transition: TransitionType.inFromRight, replace: true);
  }

  static jumpToVerifyCode(BuildContext context, String phone) {
    String path = Routers.verifyCode + "?phone=$phone";
    Application.router.navigateTo(context, path, transition: TransitionType.inFromRight);
  }

  // 搜索模块
  static jumpToSearch(BuildContext context) {
    Application.router.navigateTo(context, Routers.search, transition: TransitionType.inFromRight);
  }

  // 我的模块
  static jumpToMainPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.main, transition: TransitionType.inFromRight);
  }

  static jumpToWalletPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.wallet, transition: TransitionType.inFromRight);
  }

  static jumpToInviteFriendPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.inviteFriend, transition: TransitionType.inFromRight);
  }

  static jumpToMyCollectionPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.myCollection, transition: TransitionType.inFromRight);
  }

  static jumpToDownloadListPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.downloadList, transition: TransitionType.inFromRight);
  }
  
  static jumpToCoupomPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.coupon, transition: TransitionType.inFromRight);
  }

  static jumpToReecodePage(BuildContext context) {
    Application.router.navigateTo(context, Routers.reecode, transition: TransitionType.inFromRight);
  }

  static jumpToPurchasedPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.purchased, transition: TransitionType.inFromRight);
  }

  static jumpToMembershipPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.membership, transition: TransitionType.inFromRight);
  }


  static jumpToUserInfoPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.userInfo, transition: TransitionType.inFromRight);
  }
  
  static jumpToSettingPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.setting, transition: TransitionType.inFromRight);
  }

  static jumpToMessagePage(BuildContext context) {
    Application.router.navigateTo(context, Routers.message, transition: TransitionType.inFromRight);
  }

  static jumpToSuperVipBriedfPage(BuildContext context) {
    Application.router.navigateTo(context, Routers.superVipBreif, transition: TransitionType.inFromRight);
  }

}