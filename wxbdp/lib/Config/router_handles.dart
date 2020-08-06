import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../pages/login/lauch_page.dart';
import '../pages/login/login_page.dart';
import '../pages/login/input_phone.dart';
import '../pages/login/verify_code.dart';
import '../pages/search/search_page.dart';
import '../pages/main_tabbar.dart';

// 未匹配到处理
var notMachHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  print("handler not find ~~~~~");
  return Text("dahandler not find");
});

// 启动页的路由处理
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



var mainHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  return MainView();
});


var searchHandle = Handler(handlerFunc: (BuildContext context, Map<String, List<String>> parameters){
  return SearchPage();
});
