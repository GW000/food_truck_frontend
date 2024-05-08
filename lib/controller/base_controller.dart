import 'package:flutter/material.dart';
import 'package:food_truck/view/foodmenu_view.dart';
import 'package:food_truck/view/wishlist_view.dart';
import 'package:get/get.dart';
import '../controller/profile_controller.dart';
import 'package:food_truck/view/home_view.dart';

class BaseController extends GetxController {
  RxInt selectedIndex = 0.obs;
  late List<Widget> widgetOptions;

  BaseController() {
    widgetOptions = <Widget>[
      const HomeView(),
      const WishlistView(),
      const FoodmenuView(),
      const ProfileWrapper(),
    ];
  }

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
