import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:food_truck/controller/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.green, // 임시 배경색
              child: Placeholder(), // 여기에 지도 위젯을 추가하면 됩니다.
            ),
          ),
        ],
      ),
    );
  }
}
