import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'FFOODD   ',
                style: TextStyle(
                  fontSize: 32.0,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0), // 텍스트 색상 검은색으로 변경
                ),
              ),
              Image.asset(
                'assets/images/foodtruck_icon.png',
                width: 200.0,
                height: 200.0,
              ),
              const SizedBox(height: 40.0),
              IconButton(
                onPressed: () {
                  LoginController().signInWithGoogle();
                },
                icon: SvgPicture.asset(
                  'assets/icons/android_light_rd_ctn.svg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
