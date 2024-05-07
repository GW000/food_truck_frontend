import 'package:flutter/material.dart';
import 'package:food_truck/widget/menu_bottom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          titleSpacing: 0, // 타이틀 간격 조정
          title: Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5), // 검색 바 배경색
              borderRadius: BorderRadius.circular(8.0), // 검색 바 외각 둥글게 처리
              border: Border.all(color: Colors.black), // 검은 선 추가
            ),
            child: Row(
              children: [
                SizedBox(width: 8.0), // 왼쪽 여백
                Icon(Icons.search, color: Colors.white), // 돋보기 아이콘
                SizedBox(width: 8.0), // 아이콘과 검색창 사이 간격
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '지도 검색', // 힌트 텍스트
                      border: InputBorder.none, // 외곽선 없애기
                      hintStyle: TextStyle(color: Colors.white), // 힌트 텍스트 색상
                    ),
                    style: TextStyle(color: Colors.white), // 입력 텍스트 색상
                    cursorColor: Colors.white, // 커서 색상
                    onSubmitted: (value) {
                      print('검색어: $value');
                    },
                  ),
                ),
                SizedBox(width: 8.0), // 오른쪽 여백
              ],
            ),
          ),
          backgroundColor: Colors.transparent, // AppBar 배경 투명 설정
          elevation: 0, // AppBar 그림자 없애기
          automaticallyImplyLeading: false, // 뒤로 가기 버튼 없애기
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.green, // 임시 배경색
              child: Placeholder(), // 여기에 지도 위젯을 추가하면 됩니다.
            ),
          ),
        ],
      ),
      bottomNavigationBar: MenuBottom(),
    );
  }
}
