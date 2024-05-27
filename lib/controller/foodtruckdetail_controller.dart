import 'package:food_truck/controller/app_id.dart';
import 'package:get/get.dart';
import '../model/truckdata.dart';
import 'package:flutter/material.dart';

class FoodtruckdetailController extends GetxController {
  getdata(index) {
    final truck = trucks[index]!;
    return truck;
  }
}
