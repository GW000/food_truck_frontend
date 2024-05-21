import 'package:flutter/material.dart';
import '../controller/foodtruckdetail_controller.dart';
import 'package:get/get.dart';

class FoodtruckdetailView extends GetView<FoodtruckdetailController> {
  const FoodtruckdetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final index = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text('detailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text("번호 = $index"),
      ),
    );
  }
}
