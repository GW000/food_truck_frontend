import 'package:flutter/material.dart';
import '../controller/foodtruckdetail_controller.dart';
import 'package:get/get.dart';

class FoodtruckdetailView extends GetView<FoodtruckdetailController> {
  const FoodtruckdetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final index = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('트럭 상세 정보'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // 이미지 추가
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/food_truck_image.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          SizedBox(height: 20),
          // 수평선 추가
          Container(
            height: 1,
            color: Colors.grey[300],
          ),
          SizedBox(height: 20),
          // 트럭 상호명 추가
          Text(
            "트럭 상호명",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          // 위치 및 거리 정보 추가
          Text(
            "서울시 강남구 가로수길 | 1km",
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 20),
          // 결제 방법 추가
          Row(
            children: [
              Text(
                "결제 방법:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "카드 결제, 현금, 계좌이체",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          // 판매 시간 추가
          Row(
            children: [
              Text(
                "판매 시간:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "오후 12시 - 오후 10시",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          // 수평선 추가
          Container(
            height: 1,
            color: Colors.grey[300],
          ),
          SizedBox(height: 20),
          // 인덱스 텍스트 추가 (예시)
          Text("번호 = $index"),
          // 메뉴, 정보, 리뷰 탭 추가
          DefaultTabController(
            length: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
                TabBar(
                  tabs: [
                    Tab(text: '메뉴'),
                    Tab(text: '정보'),
                    Tab(text: '리뷰'),
                  ],
                ),
                Container(
                  height: 400, // 탭 바로 아래에 각 탭의 내용을 표시할 공간을 할당합니다.
                  child: TabBarView(
                    children: [
                      // 메뉴 탭 내용
                      ListView(
                        padding: EdgeInsets.all(16.0),
                        children: [
                          Row(
                            children: [
                              // 음식 이미지
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/food_image.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '메뉴명',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '설명',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '가격',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      // 정보 탭 내용
                      ListView(
                        padding: EdgeInsets.all(16.0),
                        children: [
                          // 트럭 상호명
                          Text(
                            '트럭 상호명',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          // 운영 시간
                          Text(
                            '운영 시간:',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '오후 12시 - 오후 10시',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[700],
                            ),
                          ),
                          // 준비 시간
                          SizedBox(height: 20),
                          Text(
                            '준비 시간:',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '30분',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[700],
                            ),
                          ),
                          // 휴무일
                          SizedBox(height: 20),
                          Text(
                            '휴무일:',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '월요일',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[700],
                            ),
                          ),
                          // 전화번호
                          SizedBox(height: 20),
                          Text(
                            '전화번호:',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '010-1234-5678',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[700],
                            ),
                          ),
                          // 위치
                          SizedBox(height: 20),
                          Text(
                            '위치:',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '서울시 강남구 가로수길 123',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[700],
                            ),
                          ),
                          SizedBox(height: 20),
                          // 수평선 추가
                          Container(
                            height: 1,
                            color: Colors.black,
                          ),
                          SizedBox(height: 20),
                          // 푸드트럭 설명 추가
                          Text(
                            '푸드트럭 설명:',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '이 푸드트럭은 최고의 음식을 제공합니다.',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                      // 리뷰 탭 내용
                      ListView(
                        padding: EdgeInsets.all(16.0),
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // 소비자 사진
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/customer_image.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '소비자명',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  // 별점
                                  Row(
                                    children: List.generate(5, (index) {
                                      return Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 20,
                                      );
                                    }),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '내용',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
