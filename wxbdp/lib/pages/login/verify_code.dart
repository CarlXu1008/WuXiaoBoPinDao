import 'package:flutter/material.dart';
import '../../widgets/common/toast_utils.dart';
import '../../utils/navigation_utils.dart';
class VerifyCode extends StatefulWidget {
  
  String phone;

  VerifyCode(this.phone);

  @override
  _VerifyCodeState createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
 
 String _phone;

  @override
  Widget build(BuildContext context) {
    _phone = widget.phone;
    return Scaffold(
      appBar: AppBar(
        title: Text("获取验证码", style: TextStyle(color: Color(0xFF000000))),
        backgroundColor: Color(0xFFFFFFFF),
        iconTheme: IconThemeData(color: Color(0xFF000000)),
      ),
      body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Padding(
              padding: EdgeInsets.fromLTRB(20, 42, 20, 0),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "已向" + _phone + "发送验证码",
                  ),
                  TextField(
                    autofocus: true,
                    maxLength: 4,
                    onChanged: (text) {
                      print("输入验证码: ${text}");
                      if (text.trim().length == 4) {
                        checkCode(text.trim());
                      }
                    },
                  ),
                  FlatButton(
                    onPressed: (){
                      ToastUtlis.showText("已经重新发送验证码", context);
                    },
                    child: Text(
                      "重新获取",
                      style: TextStyle(
                        color: Color(0xFF3B86FD)
                      ),
                    ),
                  )
                ],
              ),
            )
        ),
    );
  }

  checkCode(String code) {
    if (code == "6666") {
      ToastUtlis.showText("验证成功", context);
      NavigationUtils.jumpToHomePage(context);
    } else {
      ToastUtlis.showText("验证失败", context);
    }
  }

}