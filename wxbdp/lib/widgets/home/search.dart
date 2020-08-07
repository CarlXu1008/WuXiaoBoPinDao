import 'package:flutter/material.dart';
import '../../Utils/navigation_utils.dart';
import '../../service/login_service.dart';

// 搜索组件
class SearchView extends StatelessWidget {
  const SearchView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      margin: const EdgeInsets.fromLTRB(20, 8, 20, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "课程",
            style: TextStyle(
              color: Color(0xFF333333),
              fontSize: 24,
              fontWeight: FontWeight.w500
            ),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              onTapSearch(context);
             }
          )
        ],
      )
    );
  }

  onTapSearch(BuildContext context) {
    NavigationUtils.jumpToSearch(context);

    // LoginService service = LoginService();
    
    // service.sendVertiyCode("18689209256", (data) => {
    //   print("请求结束")
    // });

    // service.checkPhone("18689209256", (data) => {
    //   print("请求结束")
    // });

    // service.getPersonMessage("A9ft8GrhiRFaN3DU5rhKba2x6FX02FBWR4qijSNiefod7bBSUjf6jyDKOqcPScZF", (data) => {

    // });

    // service.getUserSvipInfo("", (data) => {

    // });

    // service.getShopPage("app_second", (data) => {

    // });

  }


}
