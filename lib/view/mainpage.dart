import 'package:flutter/material.dart';
import 'package:food_truck/view/homepage.dart';
import 'package:food_truck/view/mypage.dart';
import 'package:food_truck/widget/menu_bottom.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FFOODD'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectIndex),
      ),
      bottomNavigationBar: MenuBottom(
        // 별도 파일에서 정의한 BottomNavigationBar를 사용
        selectIndex: _selectIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }

  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text('찜 페이지'),
    Text('푸드트럭 페이지'),
    MyPage(),
  ];
}
