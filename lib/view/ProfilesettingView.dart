import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:food_truck/controller/profile_controller.dart';

class ProfilesettingView extends GetView<ProfileController> {
  const ProfilesettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
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
            SizedBox(height: 16.0),
            Text(
              '결제 방법', // 결제 방법 텍스트
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: false, onChanged: null), // 현금 체크박스
                    Text('현금'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: null), // 카드 체크박스
                    Text('카드'),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: null), // 계좌이체 체크박스
                    Text('계좌이체'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('은행'), // 은행 텍스트
                    SizedBox(height: 4.0),
                    Container(
                      width: 120.0,
                      height: 36.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                          hintText: '은행 입력', // 은행 입력 박스
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 16.0), // 간격 조절
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('성명'), // 성명 텍스트
                    SizedBox(height: 4.0),
                    Container(
                      width: 120.0,
                      height: 36.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                          hintText: '성명 입력', // 성명 입력 박스
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text('계좌번호'), // 계좌번호 텍스트
            SizedBox(height: 4.0),
            Container(
              width: 250.0,
              height: 36.0,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                  hintText: '계좌번호 입력', // 계좌번호 입력 박스
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              '설명', // 설명 텍스트
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              width: double.infinity,
              height: 100.0,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                maxLines: null, // 다중 라인 입력을 가능하게 함
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(8.0),
                  hintText: '설명 입력', // 설명 입력 박스
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Spacer(), // 다른 위젯 위에 자리를 차지하지 않고 화면의 남은 공간을 차지하도록 함
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          onPressed: () {
            // 등록 기능 추가
          },
          child: Text('등록'),
        ),
      ),
    );
  }
}
