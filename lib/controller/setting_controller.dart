import 'package:food_truck/controller/app_id.dart';
import 'package:get/get.dart';

class SettingController extends GetxController {
  void goBack() {
    // id is necessary to go back to previous nested route
    Get.back(id: profileD);
  }
}
