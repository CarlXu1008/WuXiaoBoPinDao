import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepOrangeAccent,
        child: getLoginPage(),
      )
    );
  }

   getLoginPage() {
    return ConstrainedBox(constraints: BoxConstraints.expand(), 
      child: Stack(children: <Widget>[
        Image.asset("images/login.png", width: double.infinity, height: double.infinity,fit: BoxFit.fill),
        Positioned(
          bottom: 64, 
          left: 0,
          child: getColumWidget()
        )
      ])
    );
  }


  getColumWidget() {
    return Column(children: <Widget>[
            Container( // Column的宽度会根据最大的子widget来设置.
              width: 375,
              child: Text("")
            ),
            Image.asset("images/wxbpd_app.png", 
                width: 200, 
                height: 48,
                fit: BoxFit.fill
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
            Container(
                width: 335,
                height: 48,
                child: RaisedButton(onPressed: () => {
                            print("点击微信登录")
                          }, 
                          child: Text("微信登录", style: TextStyle(color: Color(0xFFFFFFFF)),),color: Color(0xFF46BB36)
                        ),
            ),
          
            Padding(padding: EdgeInsets.only(top: 12)),
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: () => {
                    print("点击游客模式")
                  },
                  child: Text(
                      "游客模式",
                      style: TextStyle(
                        color: Color(0xFF999999)
                      ),
                    ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                  child: Text(
                    "|",
                    style: TextStyle(
                      color: Color(0xFF999999)
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () => {
                    print("点击手机号登录")
                  },
                  child: Text(
                    "手机号登录",
                    style: TextStyle(
                      color: Color(0xFF999999)
                    )
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              children: <Widget>[
                Text.rich(
                  TextSpan(children: [
                      TextSpan(
                        text: "登录则视为同意",
                        style: TextStyle(
                          color: Color(0xFF999999)
                        )
                      ),
                      TextSpan(
                        text: "《吴晓波频道服务协议》",
                        style: TextStyle(
                          color: Color(0xFFBCA16B)
                        ),
                        recognizer: clickPrivayProtocal()
                      )
                    ]
                  )
                )
              ],
            )
          ], 
          crossAxisAlignment: CrossAxisAlignment.center
        );
  }

  clickPrivayProtocal() {
    print("点击了隐私协议");
  }

}