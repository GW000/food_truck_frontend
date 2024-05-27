import 'dart:io';

import 'package:flutter/material.dart';
import '../controller/foodtrucksetting_controller.dart';
import 'package:get/get.dart';

import '../style/font_style.dart';

class FoodtrucksettingView extends GetView<FoodtrucksettingController> {
  const FoodtrucksettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TextEditingControllers for each text field
    final nameController = TextEditingController();
    final scheduleController = TextEditingController();
    final bankController = TextEditingController();
    final tagController = TextEditingController();
    final phoneController = TextEditingController();
    final accountHolderController = TextEditingController();
    final accountNumberController = TextEditingController();
    final descriptionController = TextEditingController();
    RxBool cash = false.obs;
    RxBool card = false.obs;
    RxBool bankTransfer = false.obs;
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
                    // backgroundImage: NetworkImage(profileimg), // 이미지 추가
                  ),
                  SizedBox(width: 16.0),
                  GestureDetector(
                    onTap: () {
                      //test = controller.getFoodTruckImgGaller();
                    },
                    child: Icon(Icons.edit), // 프로필 사진 변경 아이콘
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text('푸드트럭 이름', // 푸드트럭 이름 텍스트
                  style: CustomTextStyles.title),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: '푸드트럭 이름 입력',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text('푸드트럭 정보', // 시간 텍스트
                  style: CustomTextStyles.title),
              SizedBox(height: 8.0),

              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: phoneController,
                      decoration: InputDecoration(
                        hintText: '전화번호 입력',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextField(
                      controller: tagController,
                      decoration: InputDecoration(
                        hintText: '음식 태그',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: scheduleController,
                      decoration: InputDecoration(
                        hintText: '판매요일/시간 입력',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Row(children: [
                OutlinedButton(
                  onPressed: () {
                    print('지도이동 추가');
                  },
                  child: Text('버튼을 눌러서 주소를 추가하세요<지도 팝업 뛰우는 기능 필요>'),
                ),
              ]),
              SizedBox(height: 16.0),
              Text('결제 방법', // 결제 방법 텍스트
                  style: CustomTextStyles.title),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Obx(() => Checkbox(
                          value: cash.value,
                          onChanged: (bool? value) {
                            cash.value = value!;
                          })), // 현금 체크박스
                      Text('현금', style: CustomTextStyles.body),
                    ],
                  ),
                  Row(
                    children: [
                      Obx(() => Checkbox(
                          value: card.value,
                          onChanged: (bool? value) {
                            card.value = value!;
                          })), // 카드 체크박스
                      Text('카드', style: CustomTextStyles.body),
                    ],
                  ),
                  Row(
                    children: [
                      Obx(() => Checkbox(
                          value: bankTransfer.value,
                          onChanged: (bool? value) {
                            bankTransfer.value = value!;
                          })), // 계좌이체 체크박스
                      Text('계좌이체', style: CustomTextStyles.body),
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
                      Text('은행', style: CustomTextStyles.body), // 은행 텍스트
                      SizedBox(height: 4.0),
                      Container(
                        width: 120.0,
                        height: 36.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: TextField(
                          controller: bankController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 8.0),
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
                      Text('성명', style: CustomTextStyles.body), // 성명 텍스트
                      SizedBox(height: 4.0),
                      Container(
                        width: 120.0,
                        height: 36.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: TextField(
                          controller: accountHolderController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 8.0),
                            hintText: '성명 입력', // 성명 입력 박스
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text('계좌번호', style: CustomTextStyles.body), // 계좌번호 텍스트
              SizedBox(height: 4.0),
              Container(
                width: 250.0,
                height: 36.0,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TextField(
                  controller: accountNumberController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                    hintText: '계좌번호 입력', // 계좌번호 입력 박스
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text('설명', // 설명 텍스트
                  style: CustomTextStyles.title),
              SizedBox(height: 8.0),
              Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TextField(
                  controller: descriptionController,
                  maxLines: null, // 다중 라인 입력을 가능하게 함
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(8.0),
                    hintText: '설명 입력', // 설명 입력 박스
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Map<String, dynamic> paymentOptions = {
                      'cash': cash.value,
                      'card': card.value,
                      'bankTransfer': bankTransfer.value,
                      'bankName': bankController.text,
                      'accountName': accountHolderController.text,
                      'accountNumber': accountNumberController.text,
                    };
                    controller.createFoodTruck(
                        nameController.text,
                        descriptionController.text,
                        scheduleController.text,
                        phoneController.text,
                        paymentOptions,
                        tagController.text);
                    print('등록버튼 클릭');
                    controller.goBack();
                  },
                  child: Text('등록'),
                ),
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
