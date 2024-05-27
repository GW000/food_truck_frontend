import 'package:food_truck/controller/app_id.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../model/menu_model.dart';

class FoodtruckdetailController extends GetxController {
  final MenuModel _menuModel = MenuModel();

  getFoodTruckMenuData(String foodtruckId) async {
    return await _menuModel.getFoodTruckMenuData(foodtruckId);
  }
}
