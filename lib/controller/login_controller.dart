import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view/first_login.dart';
import '../view/base_view.dart';
import '../controller/app_pages.dart';

class LoginController extends GetxController {
  void goBase() {
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

    //Navigator.of(context).pushReplacementNamed('/firstlogin');
  }
}
