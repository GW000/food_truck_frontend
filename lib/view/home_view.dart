import 'package:flutter/material.dart';
import 'package:food_truck/controller/base_controller.dart';
import 'package:get/get.dart';
import 'package:food_truck/controller/home_controller.dart';

class HomeView extends GetView<HomeController> {
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
              InkWell(
                // 누르면 버튼 효과
                highlightColor: Colors.black12,
                // Container와 동일한 Radius 설정
                borderRadius: BorderRadius.circular(8.0),
                onTap: () async {
                  controller.goSearch();
                },
                onLongPress: () {
                  // Get.to(() => const SearchFocus(),
                  //     transition: Transition.fadeIn,
                  //     binding: SearchFocusBinding(),
                  //     id: 1);
                },
                // TextField인 척하는 컨테이너
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Icon(
                          Icons.search,
                          color: Color(0xff7d7d7d),
                          size: 20.0,
                        ),
                      ),
                      Text(
                        "주소를 입력하세요",
                        style:
                            TextStyle(color: Color(0xff7d7d7d), fontSize: 18),
                      )
                    ],
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
        ),
      ),
    );
  }
}
