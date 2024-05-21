import 'package:flutter/material.dart';
import 'package:food_truck/controller/foodtruck_controller.dart';
import 'package:food_truck/controller/home_controller.dart';
import 'package:food_truck/view/wishlist_view.dart';
import 'package:get/get.dart';
import '../controller/profile_controller.dart';

class BaseController extends GetxController {
  RxInt selectedIndex = 0.obs;
  double screenHeight = 0;
  double screenWidth = 0;
  late List<Widget> widgetOptions;

  BaseController() {
    widgetOptions = <Widget>[
      const HomeWrapper(),
      const WishlistView(),
      const FoodtruckWrapper(),
      const ProfileWrapper(),
    ];
  }

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }

  void setScreen(Size size) {
    screenHeight = size.height;
    screenWidth = size.width;
  }
}
