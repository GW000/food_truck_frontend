import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/app_pages.dart';

import '../view/setting_view.dart';
import '../view/profile_view.dart';
import '../view/profilesetting_view.dart';
import '../view/review_view.dart';

class ProfileController extends GetxController {
  void goToSettingPage() {
    Get.toNamed(Routes.SETTING, id: 1);
  }
}

class ProfileWrapper extends StatelessWidget {
  const ProfileWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      // !important
      key: Get.nestedKey(1),
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
        }
        return null;
      },
    );
  }
}
