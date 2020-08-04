import 'package:shared_preferences/shared_preferences.dart';

class SharePreferencesUtils {

  static int isLogin = -1;

  static Future getIsLogin() async {
    if (isLogin == -1) {
      SharedPreferences sp = await SharedPreferences.getInstance();
      SharePreferencesUtils.isLogin = sp.getInt("isLogin");
    }
    return isLogin;
  }

  static setIsLogin(int isLogin) async {
    SharePreferencesUtils.isLogin = isLogin;
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setInt("isLogin", isLogin);
  }

}