import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../pages/login/lauch_page.dart';
import '../pages/login/login_page.dart';
import '../pages/login/input_phone.dart';
import '../pages/login/verify_code.dart';
import '../pages/search/search_page.dart';
import '../pages/main_tabbar.dart';

import '../pages/mine/download/download_list.dart';
import '../pages/mine/detail/coupon.dart';
import '../pages/mine/detail/invite_friend.dart';
import '../pages/mine/detail/membership.dart';
import '../pages/mine/detail/my_collect.dart';
import '../pages/mine/detail/purchased.dart';
import '../pages/mine/detail/reecode.dart';
import '../pages/mine/detail/wallet.dart';
import '../pages/mine/detail/super_vip_breif.dart';
import '../pages/mine/detail/setting.dart';
import '../pages/mine/detail/message.dart';
import '../pages/mine/user/user_info.dart';

// 未匹配到处理
var notMachHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  print("handler not find ~~~~~");
  return Text("dahandler not find");
});

// 登录模块
var lauchHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  return LauchPage();
});

var loginHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  return LoginPage();
});

var inputPhoneHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  return InputPhone();
});

var verifyCodeHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
   var phone = parameters["phone"].first;
   print("phone: " + phone);
  return VerifyCode(phone);
});


// tabbarController
var mainHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  return MainView();
});

// 搜索模块
var searchHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  return SearchPage();
});


// 我的模块
var walletHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  return WalletPage();
});

var inviteFriendHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  return InviteFriendPage();
});

var myCollectionHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  return MyCollectionPage();
});

var downloadListHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  return DownloadPage();
});

var couponHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  return CouponPage();
});

var reecodeHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  return ReecodePage();
});

var purchasedHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  return PurchasedPage();
});

var membershipHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  return MemberShipPage();
});

var userInfoHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  return UserInfoPage();
});

var settingHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  return SettingPage();
});

var messageHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  return MessagePage();
});

var superVipBriefHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  return SuperVipBreifPage();
});