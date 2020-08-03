import 'package:flutter/material.dart';

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
                      print(text);
                    },
                  ),
                  FlatButton(
                    onPressed: (){

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
}