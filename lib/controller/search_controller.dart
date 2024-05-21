import 'package:food_truck/controller/app_id.dart';
import 'package:get/get.dart';

class Search_Controller extends GetxController {
  void goBack() {
    Get.back(id: homeID, result: "TEST");
    //Get.toNamed('/home', arguments: 1); //arguments에 최종 텍스트 값 전달
  }
}
