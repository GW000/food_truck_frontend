import 'package:food_truck/view/foodtruck_view.dart';
import 'package:food_truck/view/foodtruckdetail_view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'app_id.dart';
import 'app_pages.dart';

class FoodtruckList {
  int foodtruck_id;
  int foodtruck_img_id;
  String name;
  double distance;
  double rating;

  FoodtruckList(
      {required this.foodtruck_id,
      required this.foodtruck_img_id,
      required this.name,
      required this.distance,
      required this.rating});
  @override
  String toString() {
    return 'ID: $foodtruck_id, ImgID: $foodtruck_img_id, Name: $name Distance: $distance, Rating: $rating';
  }
}

List<FoodtruckList> foodtrucks = [
  FoodtruckList(
      foodtruck_id: 1,
      foodtruck_img_id: 1,
      name: "test1",
      distance: 1.5,
      rating: 4.2),
  FoodtruckList(
      foodtruck_id: 2,
      foodtruck_img_id: 2,
      name: "test2",
      distance: 2.0,
      rating: 3.8),
  FoodtruckList(
      foodtruck_id: 3,
      foodtruck_img_id: 3,
      name: "test3",
      distance: 0.5,
      rating: 4.5),
  FoodtruckList(
      foodtruck_id: 4,
      foodtruck_img_id: 4,
      name: "test4",
      distance: 3.0,
      rating: 4.0),
  FoodtruckList(
      foodtruck_id: 5,
      foodtruck_img_id: 5,
      name: "test5",
      distance: 2.5,
      rating: 3.9),
  FoodtruckList(
      foodtruck_id: 6,
      foodtruck_img_id: 6,
      name: "test6",
      distance: 1.2,
      rating: 4.8),
  FoodtruckList(
      foodtruck_id: 7,
      foodtruck_img_id: 7,
      name: "test7",
      distance: 1.2,
      rating: 4.8),
  FoodtruckList(
      foodtruck_id: 8,
      foodtruck_img_id: 8,
      name: "test8",
      distance: 1.2,
      rating: 4.8),
  FoodtruckList(
      foodtruck_id: 9,
      foodtruck_img_id: 9,
      name: "test9",
      distance: 1.2,
      rating: 4.8),
  FoodtruckList(
      foodtruck_id: 10,
      foodtruck_img_id: 10,
      name: "test10",
      distance: 1.2,
      rating: 4.8),
];

class FoodtruckController extends GetxController {
  void goDetail(seletIndex) {
    print(seletIndex);
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
      key: Get.nestedKey(foodtruckID),
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
