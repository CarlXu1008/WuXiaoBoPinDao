import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../pages/login/lauch_page.dart';
import '../pages/home/home.dart';
import '../pages/login/login_page.dart';
// 未匹配到处理
var notMachHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  print("handler not find ~~~~~");
  return Text("dahandler not findta");
});

// 启动页的路由处理
var lauchHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  return LauchPage();
});

var loginHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  print("跳转到登录页面");
  return LoginPage();
});



var homeHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  return HomePage();
});