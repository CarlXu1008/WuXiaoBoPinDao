import 'package:fluro/fluro.dart';
import 'router_handles.dart';

class Routers {
  
  static String root = "/"; // 根视图
  static String main = "main"; // 首页

  // 登录模块
  static String login = "login"; // 登录
  static String register = "register"; // 注册
  static String inputPhone = "inputPhone"; // 输入手机号
  static String verifyCode = "VerifyCode"; // 验证码

  // 搜索模块
  static String search = "search"; // 验证码

  // 我的模块
  static String wallet = "wallet"; // 钱包余额
  static String inviteFriend = "inviteFriend"; // 邀请好友
  static String myCollection = "myCollection"; // 我的收藏
  static String downloadList = "downloadList"; // 下载列表
  static String coupon = "coupon"; // 优惠劵
  static String reecode = "reecode"; // 兑换码
  static String purchased = "purchased"; // 购买记录
  static String membership = "membership"; // 联名会员
  static String userInfo = "userInfo"; // 用户信息
  static String setting = "setting"; // 设置页
  static String message = "message"; // 消息
  static String superVipBreif = "superVipBreif"; // 开通超级会员也
  

  // 注册所有录用
  static void configureRoutes(Router router) {

    router.define(root, handler: lauchHandle);
    router.define(main, handler: mainHandle);
    router.notFoundHandler = notMachHandle;


    // 登录模块
    router.define(login, handler: loginHandle);
    router.define(inputPhone, handler: inputPhoneHandle);
    router.define(verifyCode, handler: verifyCodeHandle);


    // 搜索模块
    router.define(search, handler: searchHandle);


    // 我的模块
    router.define(wallet, handler: walletHandle);
    router.define(inviteFriend, handler: inviteFriendHandle);
    router.define(myCollection, handler: myCollectionHandle);
    router.define(downloadList, handler: downloadListHandle);
    router.define(coupon, handler: couponHandle);
    router.define(reecode, handler: reecodeHandle);
    router.define(purchased, handler: purchasedHandle);
    router.define(membership, handler: membershipHandle);
    
    router.define(userInfo, handler: userInfoHandle);
    router.define(setting, handler: settingHandle);
    router.define(message, handler: messageHandle);
    router.define(superVipBreif, handler: membershipHandle);

  }




}