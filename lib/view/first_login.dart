import 'package:flutter/material.dart';
import '../controller/login_controller.dart';

class FirstLogin extends StatelessWidget {
  const FirstLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.grey, // 조금 더 진한 파스텔 핑크색
              Colors.white,
              Colors.grey, // 조금 더 진한 파스텔 주황색
            ],
            begin: Alignment.topCenter, // 그라데이션 시작 위치 설정
            end: Alignment.bottomCenter, // 그라데이션 종료 위치 설정
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '최초 로그인 구분',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "GamjaFlower",
                  color: Colors.black, // 텍스트 색상 검은색으로 변경
                ),
              ),
              TextButton(
                child: Text('판매자인가요?'),
                onPressed: () {
                  LoginController().buyUser();
                },
              ),
              TextButton(
                child: Text('소비자인가요?'),
                onPressed: () {
                  LoginController().sellUser();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
