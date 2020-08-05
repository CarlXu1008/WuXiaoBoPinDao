import 'package:flutter/material.dart';
import '../../Utils/navigation_utils.dart';

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
               NavigationUtils.jumpToSearch(context);
             }
          )
        ],
      )
    );
  }
}
