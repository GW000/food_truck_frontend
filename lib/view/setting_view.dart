import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:food_truck/controller/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SettingView'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: controller.goBack,
          child: Text("Go back"),
        ),
      ),
    );
  }
}
