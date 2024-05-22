import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:food_truck/controller/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileView'),
        centerTitle: true,
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
                  backgroundImage:
                      AssetImage('assets/profile_image.jpg'), //테스트 이미지 삽입
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
                    controller.goToReviewPage();
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
              onTap: () {},
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
                      content: Text('회원 정보 수정 페이지로 이동하시겠습니까?'),
                      actions: <Widget>[
                        TextButton(
                          child: Text('아니오'),
                          onPressed: () {
                            Get.back();
                          },
                        ),
                        TextButton(
                          child: Text('예'),
                          onPressed: () {
                            Navigator.of(context).pop(); // 팝업 창 닫기
                            controller.goToProfilesettingPage();
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
                            //푸드트럭 수정 페이지 이동 필요!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1
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
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('경고'),
                      content: Text('푸드트럭 정보 수정 페이지로 이동하시겠습니까?'),
                      actions: <Widget>[
                        TextButton(
                          child: Text('아니오'),
                          onPressed: () {
                            Get.back();
                          },
                        ),
                        TextButton(
                          child: Text('예'),
                          onPressed: () {
                            Navigator.of(context).pop(); // 팝업 창 닫기
                            controller.goToFoodtrucksettingPage();
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
                    '푸드트럭 정보 수정',
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
                // 나의 푸드트럭 페이지로 이동하는 기능 추가!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!11
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
