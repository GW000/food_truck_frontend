import 'package:food_truck/controller/app_id.dart';
import 'package:get/get.dart';
import '../model/testdata.dart';
import 'package:flutter/material.dart';

class FoodTruck {
  final int foodtruckImgId;
  final int foodtruckId;
  final String truckName;
  final String description;
  final DateTime timestamp;
  final List<String> weekday;
  final String address;
  final double distance;
  final double rating;

  FoodTruck({
    required this.foodtruckImgId,
    required this.foodtruckId,
    required this.truckName,
    required this.description,
    required this.timestamp,
    required this.weekday,
    required this.address,
    required this.distance,
    required this.rating,
  });
}

class FoodtruckdetailController extends GetxController {
  getdata(index) {
    FoodTruck foodtruck = FoodTruck(
      foodtruckId: foodtrucks[index].foodtruck_id,
      foodtruckImgId: foodtrucks[index].foodtruck_imgid,
      truckName: foodtrucks[index].truck_name,
      description: foodtrucks[index].description,
      timestamp: foodtrucks[index].timestamp,
      weekday: foodtrucks[index].weekday,
      address: foodtrucks[index].address,
      distance: foodtrucks[index].distance,
      rating: foodtrucks[index].rating,
    );
    return foodtruck;
  }
}
