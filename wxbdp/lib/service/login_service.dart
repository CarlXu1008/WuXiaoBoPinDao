import 'package:wxbdp/utils/http_utils.dart';
import '../utils/api.dart';


class LoginService {

// 检查手机号是否已注册
 Future checkPhone(String phone, OnSuccessBlock onSuccess, {OnFailBlock onFail}) async {
    String url = Api.base_Url + Api.check_phone;
    defaultParameters["phone"] = phone;
    try {   
      var response = await HttpUtil.instance.post(url, parameters: defaultParameters);
      onSuccess(response);
    } catch (e) {
      onFail("请求失败:" + url);
    }
  }

// 发送验证码
  Future sendVertiyCode(String phone, OnSuccessBlock onSuccess, {OnFailBlock onFail}) async {
    String url = Api.base_Url + Api.send_msg;
    defaultParameters["phone"] = phone;
    try {   
      var response = await HttpUtil.instance.post(url, parameters: defaultParameters);
      onSuccess(response);
    } catch (e) {
      onFail("请求失败:" + url);
    }
  }

  // 校验验证码
  Future verifyCode(String phone, String smsCode, String diallingCode, OnSuccessBlock onSuccess, {OnFailBlock onFail}) async {
    String url = Api.base_Url + Api.verify_code;
    defaultParameters["phone"] = phone;
    defaultParameters["sms_code"] = "1104";
    defaultParameters["dialling_code"] = "+86";
    try {    
      var response = await HttpUtil.instance.post(url, parameters: defaultParameters);
      onSuccess(response["data"]);
    } catch (e) {
      onFail("请求失败:" + url);
    }
  }

  // 查询用户信息
  Future getPersonMessage(String apiToken, OnSuccessBlock onSuccess, {OnFailBlock onFail}) async {
    String url = Api.base_Url + Api.get_person_message;
    defaultParameters["api_token"] = Api.apiToken;
    defaultParameters["message_type"] = 2;
    try {    
      var response = await HttpUtil.instance.post(url, parameters: defaultParameters);
      onSuccess(response["data"]);
    } catch (e) {
      onFail("请求失败:" + url);
    }
  }

  // 获取用户超级会员身份信息
  Future getUserSvipInfo(String apiToken, OnSuccessBlock onSuccess, {OnFailBlock onFail}) async {
    String url = Api.base_Url + Api.user_svip_info;
    defaultParameters["api_token"] = Api.apiToken;
    try {    
      var response = await HttpUtil.instance.post(url, parameters: defaultParameters);
      onSuccess(response);
    } catch (e) {
      onFail("请求失败:" + url);
    }
  }

  // 请求微页面数据
  Future getShopPage(String microPageId, OnSuccessBlock onSuccess, {OnFailBlock onFail}) async {
    String url = Api.base_Url + Api.shop_page;
     defaultParameters["api_token"] = Api.apiToken;
     defaultParameters["data"] = {
       "micro_page_id": microPageId,
       "client": "6"
     };
    try {    
      var response = await HttpUtil.instance.post(url, parameters: defaultParameters);
      onSuccess(response);
    } catch (e) {
      onFail("请求失败:" + url);
    }
  }

}