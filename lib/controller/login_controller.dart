import 'package:get/get.dart';
import '../controller/app_pages.dart';

class LoginController extends GetxController {
  void goBase() {
    // USER 아이디를 넘겨주어야함
    Get.offAllNamed(Routes.BASE);
  }

  void buyUser() {
    //푸드트럭 음식 구매자
    goBase();
  }

  void sellUser() {
    //푸드트럭 음식 판매자
    goBase();
  }

  void goFirstLogin() {
    Get.offAllNamed(Routes.FIRSTLOGIN);
  }
}
