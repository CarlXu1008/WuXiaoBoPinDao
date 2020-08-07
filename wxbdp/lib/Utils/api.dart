
var defaultParameters = {
	"shop_id": "appe0MEs6qX8480",
	"uuid": "19746D6F-EE8A-409E-9D03-49E72958E6DB",
	"agent_type": 2,
	"feature": "fe_wxb",
	"build_version": "1",
	"client": "6",
	"app_version": "2.2.0",
	"app_id": "appe0MEs6qX8480",
	"ChannelNo": "AppStore",
  "client_info": {
      "systemVersion": "14.0",
      "phoneModel": "iPhone",
      "batteryLevel": "1.0",
      "phoneBrand": "iOS",
      "deviceName": "Carl’s iPhoneX"
  }
};

typedef OnSuccessListBolco<T>(List<T> dataList);
typedef OnSuccessBlock<T>(T data);
typedef OnFailBlock(String message);


class Api {

  static String apiToken = "A9ft8GrhiRFaN3DU5rhKba2x6FX02FBWR4qijSNiefod7bBSUjf6jyDKOqcPScZF";
  static const base_Url = "https://app-server.890.wasu.tv/";

  // 登录模块
  static const verify_code = "api/verify_code";
  static const check_phone = "api/check_phone";
  static const send_msg = "api/send_msg";


  // 用户信息相关
  static const get_person_message = "api/get_person_message/1.0.1";
  static const user_svip_info = "third/xiaoe_request/xe.user.svip.info.get/1.0.0";


  // 课程模块
  static const shop_page = "third/xiaoe_request/xe.shop.page.get/1.0.1";


}

