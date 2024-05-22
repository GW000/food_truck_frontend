import 'package:food_truck/view/wishlist_view.dart';
import '../view/foodtruckdetail_view.dart';
import 'package:get/get.dart';
import 'app_pages.dart';
import 'package:flutter/material.dart';
import 'app_id.dart';

class WishlistController extends GetxController {
  void goDetail(seletIndex) {
    //print(seletIndex);
    Get.toNamed(Routes.FOODTRUCKDETAIL, arguments: seletIndex);
  }
}

class WishlistWrapper extends StatelessWidget {
  const WishlistWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(wishlistD),
      initialRoute: Routes.WISHLIST,
      onGenerateRoute: (routeSettings) {
        if (routeSettings.name == Routes.WISHLIST) {
          return GetPageRoute(
              routeName: Routes.WISHLIST,
              page: () => const WishlistView(),
              binding: WishlistBinding());
        } else if (routeSettings.name == Routes.FOODTRUCKDETAIL) {
          return GetPageRoute(
              routeName: Routes.FOODTRUCKDETAIL,
              page: () => const FoodtruckdetailView(),
              binding: FoodtruckdetailBinding());
        }
        return null;
      },
    );
  }
}
