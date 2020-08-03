import 'package:flutter/material.dart';
import '../login/verify_code.dart';
import '../../Utils/navigation_utils.dart';

class InputPhone extends StatefulWidget {
  @override
  _InputPhoneState createState() => _InputPhoneState();
}

class _InputPhoneState extends State<InputPhone> {

  TextEditingController _inputPhoneController = TextEditingController(); 

  @override
  void initState() {
    super.initState();
    _inputPhoneController.addListener(() {
      print(_inputPhoneController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("输入手机号", style: TextStyle(color: Color(0xFF000000))),
        backgroundColor: Color(0xFFFFFFFF),
        iconTheme: IconThemeData(color: Color(0xFF000000)),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Padding(
            padding: EdgeInsets.fromLTRB(20, 80, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                  Container(
                    width: 335,
                    height: 52,
                    child: Row(children: <Widget>[
                              Expanded(
                                child: Text("+86"),
                                flex: 1,
                              ),
                              Expanded(
                                child: TextField(
                                  controller: _inputPhoneController,
                                  autofocus: true, 
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: "请输入手机号",
                                    border: InputBorder.none
                                  ),
                                ),
                                flex: 8,
                              ),
                            ],crossAxisAlignment: CrossAxisAlignment.center),
                  ),
                  
                  Padding(padding: EdgeInsets.only(top:40)),
                 
                  Container(
                    width: 335,
                    height: 44,
                    child: RaisedButton(
                      color: Color(0xFF1E59F6),
                        onPressed: (){
                          print("跳转到获取验证码页面");
                          if (_inputPhoneController.text.length < 11) {
                            print("输入手机号格式不对");
                          } else {
                            NavigationUtils.jumpToVerifyCode(context, _inputPhoneController.text);
                          }
                        },
                        child: Text(
                          "获取验证码",
                           style: TextStyle(
                              color: Color(0xFFFFFFFF)
                            ),
                        ),
                      ),
                  ),
                  
                  Padding(padding: EdgeInsets.only(top:16)),

                  Row(
                    children: <Widget>[
                      Text(
                        "未注册用户验证后自动登录",
                        style: TextStyle(
                          color: Color(0xFF999999)
                        ),
                      )
                    ],
                  )
              ],

            ),
          )
      ),
    );
  }
}