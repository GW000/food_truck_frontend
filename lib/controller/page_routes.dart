import 'package:flutter/material.dart';
import 'package:food_truck/view/home_page.dart';
import 'package:food_truck/view/login_page.dart';
import 'package:food_truck/view/my_page.dart';
import 'package:food_truck/view/myreview_page.dart';
import 'package:food_truck/view/profilesetting_page.dart';
import 'package:food_truck/view/wishlist_page.dart';
import 'package:food_truck/widget/menu_bottom.dart';

class Routes {
  static Route<dynamic>? generateRoute(
      RouteSettings settings, BuildContext context) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/wishlist':
        return MaterialPageRoute(builder: (_) => WishListPage());
      // case '/foodtruck':
      //   return MaterialPageRoute(builder: (_) => foodtruck());
      case '/mypage':
        return MaterialPageRoute(builder: (_) => MyPage());
      case '/mypage/myreview_page':
        return MaterialPageRoute(builder: (_) => MyReviewPage());
      case '/mypage/profilesetting':
        return MaterialPageRoute(builder: (_) => ProfileSettingsPage());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('해당 페이지를 찾을 수 없습니다. $context'),
            ),
            bottomNavigationBar: MenuBottom(),
          );
        });
    }
  }
}
