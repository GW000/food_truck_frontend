import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_truck/controller/base_controller.dart';
import 'package:get/get.dart';
import 'package:food_truck/controller/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = Get.find<BaseController>().screenHeight;
    double screenWidth = Get.find<BaseController>().screenWidth;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: screenWidth * 0.7,
              height: screenHeight * 0.06,
              decoration: BoxDecoration(
                color: Colors.grey[200], // 배경색
                borderRadius:
                    BorderRadius.circular(screenHeight * 0.03), // 반지름 값 설정
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '검색', // 검색창 안에 힌트 텍스트
                      hintStyle: TextStyle(color: Colors.grey), // 힌트 텍스트 색상
                      prefixIcon: Icon(Icons.search), // 검색 아이콘
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.005,
            ),
            Container(
              width: screenWidth * 0.9,
              height: screenHeight * 0.7,
              color: Colors.blue,
            ),
          ],
        ),
      )),
    );
  }
}
