import 'package:flutter/material.dart';
import 'package:food_truck/controller/profilesetting_controller.dart';
import 'package:get/get.dart';
import '../style/font_style.dart';

class ProfilesettingView extends GetView<ProfilesettingController> {
  const ProfilesettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userdata = controller.user;
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    // backgroundImage: AssetImage(
                    //     "(userdata as UserList).user_img"), //테스트 이미지 삽입
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text((userdata as UserList).user_name,
                          style: CustomTextStyles.title),
                      Text((userdata as UserList).user_email,
                          style: CustomTextStyles.captionsubtitle),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.0),
                        Text('닉네임', style: CustomTextStyles.bodyBold),
                        SizedBox(height: 8.0),
                        Row(
                          children: [
                            Container(
                              width: size.width * 0.5,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: '닉네임 입력',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            SizedBox(width: 16.0),
                            ElevatedButton(
                              onPressed: () {
                                // 수정하기 버튼이 클릭되었을 때의 동작
                              },
                              child: Text('수정하기'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.0),
                        Text('이메일', style: CustomTextStyles.bodyBold),
                        SizedBox(height: 8.0),
                        Row(
                          children: [
                            Container(
                              width: size.width * 0.5,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: '이메일 입력',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            SizedBox(width: 16.0),
                            ElevatedButton(
                              onPressed: () {
                                // 수정하기 버튼이 클릭되었을 때의 동작
                              },
                              child: Text('수정하기'),
                            ),
                          ],
                        ),
                      ],
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
