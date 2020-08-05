import 'package:flutter/material.dart';

// 日签
class DaySignView extends StatefulWidget {
  @override
  // 日签
  _DaySignViewState createState() => _DaySignViewState();
}

// 日签
class _DaySignViewState extends State<DaySignView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      padding: EdgeInsets.all(24),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Container(
              padding: EdgeInsets.only(right: 45),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "必须严格避免任何仪式性的东西，因为他们很快就会腐烂",
                    style: TextStyle(
                      color: Color(0xFF252831),
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "——维特根斯坦",
                    style: TextStyle(
                      color: Color(0xFF252831),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                 Text(
                    "3月",
                    style: TextStyle(
                      color: Color(0xFF252831),
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  // Text(
                  //   "/",
                  //   style: TextStyle(
                  //     color: Color(0xFF252831),
                  //     fontSize: 12,
                  //   ),
                  // ),
                  Text(
                    "5号",
                    style: TextStyle(
                      color: Color(0xFF252831),
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  ),
              ],
            )
          ),
        ],
      ),
    );
  }
}