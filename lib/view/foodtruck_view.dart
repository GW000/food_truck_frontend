import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/foodtruck_controller.dart';

class FoodtruckView extends GetView<FoodtruckController> {
  const FoodtruckView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foodtruck'),
      ),
      body: ListView.builder(
        itemCount: foodtrucks.length,
        itemBuilder: (context, index) {
          final foodtruck = foodtrucks[index];
          return ListTile(
            // leading: Image.network(
            //   foodTruck.imageUrl,
            //   width: 50, // 이미지 너비 조정
            //   height: 50, // 이미지 높이 조정
            //   fit: BoxFit.cover, // 이미지를 가능한 많이 채우기 위해 fit 조정
            // ),
            title: Text(foodtruck.name),
            subtitle: Text('${foodtruck.distance} · 평점: ${foodtruck.rating}'),
            onTap: () {
              controller.goDetail(foodtruck.foodtruck_id);
              // 가게 상세 페이지로 이동하는 기능 추가
            },
          );
        },
      ),
    );
  }
}
