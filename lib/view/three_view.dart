import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          titleSpacing: 0,
          title: Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.black),
            ),
            child: Row(
              children: [
                SizedBox(width: 8.0),
                Icon(Icons.search, color: Colors.white),
                SizedBox(width: 8.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '지도 검색',
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    onSubmitted: (value) {
                      print('검색어: $value');
                    },
                  ),
                ),
                SizedBox(width: 8.0),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black,
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.white),
              label: '찜 목록',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/food_truck_icon.png', width: 24.0, height: 24.0, color: Colors.white),
              label: '푸드트럭',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.white),
              label: '마이페이지',
            ),
          ],
          onTap: (int index) {
            if (index == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyProfilePage()),
              );
            } else if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WishListPage()),
              );
            }
          },
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.green,
              child: Placeholder(),
            ),
          ),
        ],
      ),
    );
  }
}

class MyProfilePage extends StatelessWidget {
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
        title: Text('마이페이지'),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '사용자 이름',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'user@example.com',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 24.0),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // 내 리뷰로 이동하는 기능 추가
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyReviewPage()),
                    );
                  },
                  icon: Icon(Icons.rate_review),
                  label: Text('내 리뷰'),
                ),
                SizedBox(width: 8.0),
                ElevatedButton.icon(
                  onPressed: () {
                    // 알림함으로 이동하는 기능 추가
                  },
                  icon: Icon(Icons.notifications),
                  label: Text('알림함'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Divider(height: 1.0, color: Colors.grey),
            SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('경고'),
                      content: Text('회원 정보 수정 페이지로 이동하시겠습니까?'),
                      actions: <Widget>[
                        TextButton(
                          child: Text('아니오'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          child: Text('예'),
                          onPressed: () {
                            Navigator.of(context).pop(); // 팝업 창 닫기
                            Navigator.push( // 회원정보 수정 페이지로 이동
                              context,
                              MaterialPageRoute(builder: (context) => ProfileSettingsPage()),
                            );
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Row(
                children: [
                  Text(
                    '회원정보수정',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.0),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('경고'),
                      content: Text('푸드트럭 영업 허가를 받아야 푸드트럭 장사가 가능합니다.'),
                      actions: <Widget>[
                        TextButton(
                          child: Text('아니오'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          child: Text('예'),
                          onPressed: () {
                            Navigator.of(context).pop(); // 팝업 창 닫기
                            Navigator.push( // 회원정보 수정 페이지로 이동
                              context,
                              MaterialPageRoute(builder: (context) => ProfileSettingsPage()),
                            );
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Row(
                children: [
                  Text(
                    '나의 정보 수정',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Divider(height: 1.0, color: Colors.grey),
            SizedBox(height: 16.0),
            Row(
              children: [
                Text(
                  '판매자용',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            GestureDetector(
              onTap: () {
                // 푸드트럭 등록 페이지로 이동하는 기능 추가
              },
              child: Row(
                children: [
                  Text(
                    '푸드트럭 등록',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
            SizedBox(height: 8.0),
            GestureDetector(
              onTap: () {
                // 나의 푸드트럭 페이지로 이동하는 기능 추가
              },
              child: Row(
                children: [
                  Text(
                    '나의 푸드트럭',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Divider(height: 1.0, color: Colors.grey),
            SizedBox(height: 16.0),
            Row(
              children: [
                Text(
                  '설정',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_forward),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WishListPage extends StatelessWidget {
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
        title: Text('찜 목록'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '[찜 목록 개수]',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              height: 1.0,
              color: Colors.grey,
            ),
            SizedBox(height: 8.0),
            _buildWishListItem(),
            SizedBox(height: 8.0),
            _buildWishListItem(),
            SizedBox(height: 8.0),
            _buildWishListItem(),
          ],
        ),
      ),
    );
  }

  Widget _buildWishListItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 50.0,
              height: 50.0,
              color: Colors.blue, // 정사각형 모양의 사진 부분
            ),
            SizedBox(width: 12.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '트럭명',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '별점',
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                Text(
                  '결제 방법',
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // 삭제 기능 추가
              },
              child: Text('삭제'),
            ),
          ],
        ),
        SizedBox(height: 16.0),
        Container(
          height: 1.0,
          color: Colors.grey,
        ),
      ],
    );
  }
}

class MyReviewPage extends StatelessWidget {
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
        title: Text('내 리뷰'),
      ),
      body: ListView.builder(
        itemCount: 3, // 내가 작성한 리뷰 개수
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Text(
                      '트럭명',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Icon(Icons.arrow_forward), // '>' 아이콘 추가
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        // 삭제 기능 추가
                      },
                      child: Text(
                        '삭제',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: List.generate(5, (i) {
                  if (i < 3) {
                    return Icon(
                      Icons.star,
                      color: Colors.amber,
                    );
                  } else {
                    return Icon(
                      Icons.star_border,
                      color: Colors.amber,
                    );
                  }
                }),
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  '[내용]',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Divider(),
            ],
          );
        },
      ),
    );
  }
}

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
