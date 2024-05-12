import 'package:flutter/material.dart';
import 'package:food_truck/view/profilesetting_view.dart';
import 'package:food_truck/view/review_view.dart';
import 'package:get/get.dart';

import 'base_controller.dart';
import '../view/base_view.dart';

import 'home_controller.dart';
import '../view/home_view.dart';

import 'wishlist_controller.dart';
import '../view/wishlist_view.dart';

import 'foodmenu_controller.dart';
import '../view/foodmenu_view.dart';

import 'profile_controller.dart';
import '../view/profile_view.dart';

import 'setting_controller.dart';
import '../view/setting_view.dart';

import '../view/first_login.dart';

import 'profilesetting_controller.dart';
import 'Review_controller.dart';
import 'login_controller.dart';
import '../view/login.dart';

part 'app_routes.dart';

class BaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseController>(
      () => BaseController(),
    );
  }
}

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}

class WishlistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WishlistController>(
      () => WishlistController(),
    );
  }
}

class FoodmenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FoodmenuController>(
      () => FoodmenuController(),
    );
  }
}

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}

class SettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingController>(
      () => SettingController(),
    );
  }
}

class ProfilesettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfilesettingController>(
      () => ProfilesettingController(),
    );
  }
}

class ReviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReviewController>(
      () => ReviewController(),
    );
  }
}

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}

class FirstLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}

class AppPages {
  AppPages._();
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => const Login(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.BASE,
      page: () => const BaseView(),
      binding: BaseBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WISHLIST,
      page: () => const WishlistView(),
      binding: WishlistBinding(),
    ),
    GetPage(
      name: _Paths.FOODMENU,
      page: () => const FoodmenuView(),
      binding: FoodmenuBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => const SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.PROFILESETTING,
      page: () => const ProfilesettingView(),
      binding: ProfilesettingBinding(),
    ),
    GetPage(
      name: _Paths.REVIEW,
      page: () => const Review(),
      binding: ReviewBinding(),
    ),
    GetPage(
      name: _Paths.FIRSTLOGIN,
      page: () => const FirstLogin(),
      binding: FirstLoginBinding(),
    ),
  ];
}
