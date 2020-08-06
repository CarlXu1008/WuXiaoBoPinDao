import 'package:flutter/material.dart';
import './home/home.dart';
import './mine/mine.dart';
import './study/study_record.dart';

class MainView extends StatefulWidget {

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {

  int _selectIndex = 0;
  List<Widget> _list = List();

  @override
  void initState() {
    super.initState();
    _list
    ..add(HomePage("coursePage"))
    ..add(HomePage("activityPage"))
    ..add(StudyRecordPage())
    ..add(MinePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectIndex,
        children: _list,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("课程")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum),
            title: Text("活动")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text("在学")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text("我的")
          ),
        ],
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          _didSelect(index);
        },
        selectedItemColor: Color(0xFF2F44BA),
        unselectedItemColor: Color(0xFF252831),
        currentIndex: _selectIndex,
      ),
    );
  }

  _didSelect(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

}