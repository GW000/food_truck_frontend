import 'package:flutter/material.dart';
import 'package:food_truck/model/img_asset.dart';

class MenuBottom extends StatelessWidget {
  const MenuBottom({super.key});

  @override
  Widget build(BuildContext context) {
    int selectIndex = 0;

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      currentIndex: selectIndex,
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.of(context).pushReplacementNamed('/home');
            break;
          case 1:
            Navigator.of(context).pushReplacementNamed('/wishlist');
            break;
          case 2:
            Navigator.of(context).pushReplacementNamed('/second');
            break;
          case 3:
            Navigator.of(context).pushReplacementNamed('/mypage');
            break;
        }
      },
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
