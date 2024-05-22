import 'package:flutter/material.dart';
import 'package:food_truck/style/font_style.dart';
import 'package:get/get.dart';
import '../controller/foodtruck_controller.dart';
import '../model/testdata.dart';

class FoodtruckView extends GetView<FoodtruckController> {
  const FoodtruckView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Foodtruck'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: foodtrucks.length,
          itemBuilder: (context, index) {
            final foodtruck = foodtrucks[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: size.height * 0.3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      "testurl", // foodtruck.foodtruck_imgid,
                      //width: 30,
                      //height: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(foodtruck.truck_name,
                      style: CustomTextStyles.bodyBold),
                  subtitle: Text(
                      '거리: ${foodtruck.distance} \n 평점: ${foodtruck.rating}',
                      style: CustomTextStyles.body),
                  onTap: () => controller.goDetail(foodtruck.foodtruck_id),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
