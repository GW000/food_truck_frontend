import 'package:food_truck/view/foodtruck_view.dart';
import 'package:food_truck/view/foodtruckdetail_view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'app_id.dart';
import 'app_pages.dart';

class FoodtruckController extends GetxController {
  void goDetail(seletIndex) {
    //print(seletIndex);
    Get.toNamed(Routes.FOODTRUCKDETAIL, arguments: seletIndex);
  }

  void addFoodtruckList() {
    // final id = foodtrucks.length + 1;
    // final imgid = 1;
    // final distance = 1.1;
    // final rating = 2.2
    // final name = "test"
    // foodtrucks.add(FoodtruckList(foodtruck_id: id, foodtruck_img_id: imgid, name:name, distance: distance, rating: rating));
  }
  void getFoodtruckList() {
    // 데이터 베이스에 저장된 모든 푸드트럭 리스트를 정리하여 표시필요
  }
}

class FoodtruckWrapper extends StatelessWidget {
  const FoodtruckWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(foodtruckD),
      initialRoute: Routes.FOODTRUCK,
      onGenerateRoute: (routeSettings) {
        if (routeSettings.name == Routes.FOODTRUCK) {
          return GetPageRoute(
              routeName: Routes.FOODTRUCK,
              page: () => const FoodtruckView(),
              binding: FoodtruckBinding());
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
