import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/base_controller.dart';

class BaseView extends GetView<BaseController> {
  const BaseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() =>
          controller.widgetOptions.elementAt(controller.selectedIndex.value)),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.heart_broken),
                label: 'Whislist',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.food_bank),
                label: 'Food',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: controller.selectedIndex.value,
            onTap: controller.onItemTapped,
          )),
    );
  }
}
