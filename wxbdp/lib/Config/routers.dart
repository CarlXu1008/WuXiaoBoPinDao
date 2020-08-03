import 'package:fluro/fluro.dart';
import 'router_handles.dart';

class Routers {
  
  static String root = "/"; // 根视图
  static String login = "login"; // 登录
  static String register = "register"; // 注册
  static String inputPhone = "inputPhone"; // 输入手机号
  static String verifyCode = "VerifyCode"; // 验证码
  
  static String home = "home"; // 首页
  // 注册所有录用
  static void configureRoutes(Router router) {

    router.define(root, handler: lauchHandle);

    router.define(login, handler: loginHandle);

    router.define(inputPhone, handler: inputPhoneHandle);

    router.define(home, handler: homeHandle);

    router.define(verifyCode, handler: verifyCodeHandle);

    router.notFoundHandler = notMachHandle;

  }

}