import 'package:flutter/material.dart';

class ProfileSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('회원정보 수정'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/profile_image.jpg'),
                ),
                SizedBox(width: 16.0),
                GestureDetector(
                  onTap: () {
                    // 프로필 사진 변경 기능 추가
                  },
                  child: Icon(Icons.edit), // 프로필 사진 변경 아이콘
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              '푸드트럭 이름', // 푸드트럭 이름 텍스트
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '푸드트럭 이름 입력',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: () {
                    // 중복 체크 기능 추가
                  },
                  child: Text('중복체크'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              '시간', // 시간 텍스트
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '판매요일/시간 입력',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
