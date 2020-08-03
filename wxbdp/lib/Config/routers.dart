import 'package:fluro/fluro.dart';
import 'router_handles.dart';

class Routers {
  
  static String root = "/"; // 根视图
  static String login = "login"; // 登录
  static String register = "register"; // 注册
  static String verificationCode = "verificationCode"; // 验证码
  
  static String home = "home"; // 首页
  // 注册所有录用
  static void configureRoutes(Router router) {

    router.define(root, handler: lauchHandle);

    router.define(login, handler: loginHandle);

    router.define(home, handler: homeHandle);

    router.notFoundHandler = notMachHandle;

  }

}