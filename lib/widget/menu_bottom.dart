import 'package:flutter/material.dart';
import 'package:food_truck/model/img_asset.dart';

class MenuBottom extends StatelessWidget {
  final int selectIndex;
  final Function(int) onItemTapped;
  MenuBottom({required this.selectIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      currentIndex: selectIndex,
      onTap: onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.white),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite, color: Colors.white),
          label: '하트',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(IMGAsset.imgtest, width: 24.0, height: 24.0),
          label: '푸드트럭',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.white),
          label: '마이페이지',
        ),
      ],
    );
  }
}
