import 'package:flutter/material.dart';
import 'package:food_truck/controller/app_id.dart';
import 'package:food_truck/controller/base_controller.dart';
import 'package:food_truck/model/userdata.dart';
import 'package:food_truck/view/foodtrucksetting_view.dart';
import 'package:get/get.dart';
import '../controller/app_pages.dart';
import '../view/setting_view.dart';
import '../view/profile_view.dart';
import '../view/profilesetting_view.dart';
import '../view/review_view.dart';

class ProfileController extends GetxController {
  final user = Get.find<BaseController>().userdata;

  void goToSettingPage() {
    Get.toNamed(Routes.SETTING, id: profileD);
  }

  void goToReviewPage() {
    Get.toNamed(Routes.REVIEW, id: profileD);
  }

  void goToFoodtrucksettingPage() {
    //print((user as UserList).user_name);
    Get.toNamed(Routes.FOODTRUCKSETTING, id: profileD);
  }

  void goToProfilesettingPage() {
    Get.toNamed(Routes.PROFILESETTING, id: profileD);
  }
}

class ProfileWrapper extends StatelessWidget {
  const ProfileWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      // !important
      key: Get.nestedKey(profileD),
      initialRoute: Routes.PROFILE,
      onGenerateRoute: (routeSettings) {
        if (routeSettings.name == Routes.PROFILE) {
          return GetPageRoute(
              routeName: Routes.PROFILE,
              page: () => const ProfileView(),
              binding: ProfileBinding());
        } else if (routeSettings.name == Routes.SETTING) {
          return GetPageRoute(
              routeName: Routes.SETTING,
              page: () => const SettingView(),
              binding: SettingBinding());
        } else if (routeSettings.name == Routes.PROFILESETTING) {
          return GetPageRoute(
              routeName: Routes.PROFILESETTING,
              page: () => const ProfilesettingView(),
              binding: ProfilesettingBinding());
        } else if (routeSettings.name == Routes.REVIEW) {
          return GetPageRoute(
              routeName: Routes.REVIEW,
              page: () => const Review(),
              binding: ReviewBinding());
        } else if (routeSettings.name == Routes.FOODTRUCKSETTING) {
          return GetPageRoute(
              routeName: Routes.FOODTRUCKSETTING,
              page: () => const FoodtrucksettingView(),
              binding: FoodtrucksettingBinding());
        }
        return null;
      },
    );
  }
}
