import 'package:flutter/material.dart';
import 'base_view.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFF7F9E), // 조금 더 진한 파스텔 핑크색
              Color(0xFFFFC66C), // 조금 더 진한 파스텔 주황색
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
                '푸드트럭',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // 텍스트 색상 검은색으로 변경
                ),
              ),
              SizedBox(height: 20.0), // 텍스트와 이미지 사이 간격 조절
              Image.asset(
                'assets/images/test1.png', // 푸드트럭 이미지 파일 경로
                width: 200.0,
                height: 200.0,
              ),
              SizedBox(height: 40.0), // 이미지와 로그인 버튼 사이 간격 조절
              ElevatedButton(
                onPressed: () {
                  // 카카오톡 로그인 기능 추가
                  Navigator.of(context).pushReplacementNamed('/base');
                },
                child: Text('카카오톡 로그인',
                    style:
                        TextStyle(color: Colors.black)), // 버튼 텍스트 색상 검은색으로 변경
              ),
              SizedBox(height: 20.0), // 로그인 버튼과 텍스트 사이 간격 조절
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      // 이메일로 로그인 기능 추가
                    },
                    child: Text(
                      '이메일로 로그인',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black, // 텍스트 색상 검은색으로 변경
                      ),
                    ),
                  ),
                  Text(
                    ' | ',
                    style: TextStyle(color: Colors.black), // 구분자 색상 검은색으로 변경
                  ),
                  InkWell(
                    onTap: () {
                      // 회원가입 화면으로 이동하는 기능 추가
                    },
                    child: Text(
                      '이메일로 회원가입',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black, // 텍스트 색상 검은색으로 변경
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
