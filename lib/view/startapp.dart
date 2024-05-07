import 'package:flutter/material.dart';
import 'package:food_truck/view/loginpage.dart';

class StartApp extends StatelessWidget {
  const StartApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(), // 바텀 네비게이션을 홈으로 설정
    );
  }
}
