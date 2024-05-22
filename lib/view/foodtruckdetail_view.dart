import 'package:flutter/material.dart';
import '../controller/foodtruckdetail_controller.dart';
import 'package:get/get.dart';
import '../style/font_style.dart'; // Import the text styles

class FoodtruckdetailView extends GetView<FoodtruckdetailController> {
  const FoodtruckdetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int index = Get.arguments;

    final foodtruck = controller.getdata(index - 1);
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
          Container(
            height: 1,
            color: Colors.grey[300],
          ),
          SizedBox(height: 20),
          Text(
            "${foodtruck.truckName}",
            style: CustomTextStyles.title,
          ),
          SizedBox(height: 10),
          // 위치 및 거리 정보 추가
          Text(
            "거리 : ${foodtruck.distance}km",
            style: CustomTextStyles.body,
          ),
          SizedBox(height: 20),
          // 결제 방법 추가
          Row(
            children: [
              Text(
                "결제 방법:",
                style: CustomTextStyles.subtitle,
              ),
              SizedBox(width: 10),
              Text(
                "카드 결제, 현금, 계좌이체",
                style: CustomTextStyles.body,
              ),
            ],
          ),
          SizedBox(height: 20),
          // 판매 시간 추가
          Row(
            children: [
              Text(
                "판매 시간:",
                style: CustomTextStyles.subtitle,
              ),
              SizedBox(width: 10),
              Text(
                "오후 12시 - 오후 10시",
                style: CustomTextStyles.body,
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            height: 1,
            color: Colors.grey[300],
          ),
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
                  height: 400,
                  child: TabBarView(
                    children: [
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
                                    style: CustomTextStyles.subtitle,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '설명',
                                    style: CustomTextStyles.caption,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '가격',
                                    style: CustomTextStyles.caption,
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
                          Text(
                            '트럭 상호명${foodtruck.truckName}',
                            style: CustomTextStyles.title,
                          ),
                          SizedBox(height: 10),
                          Text(
                            '운영 시간:',
                            style: CustomTextStyles.subtitle,
                          ),
                          SizedBox(height: 5),
                          Text(
                            '오후 12시 - 오후 10시',
                            style: CustomTextStyles.body,
                          ),
                          SizedBox(height: 20),
                          Text(
                            '준비 시간:',
                            style: CustomTextStyles.subtitle,
                          ),
                          SizedBox(height: 5),
                          Text(
                            '30분',
                            style: CustomTextStyles.body,
                          ),
                          SizedBox(height: 20),
                          Text(
                            '휴무일:${foodtruck.weekday}',
                            style: CustomTextStyles.subtitle,
                          ),
                          SizedBox(height: 5),
                          Text(
                            '월요일',
                            style: CustomTextStyles.body,
                          ),
                          // 전화번호
                          SizedBox(height: 20),
                          Text(
                            '전화번호:',
                            style: CustomTextStyles.subtitle,
                          ),
                          SizedBox(height: 5),
                          Text(
                            '010-1234-5678',
                            style: CustomTextStyles.body,
                          ),
                          // 위치
                          SizedBox(height: 20),
                          Text(
                            '위치:',
                            style: CustomTextStyles.subtitle,
                          ),
                          SizedBox(height: 5),
                          Text(
                            '${foodtruck.address}',
                            style: CustomTextStyles.body,
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
                            style: CustomTextStyles.subtitle,
                          ),
                          SizedBox(height: 5),
                          Text(
                            '${foodtruck.description}',
                            style: CustomTextStyles.body,
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
                                    style: CustomTextStyles.subtitle,
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
                                    style: CustomTextStyles.caption,
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
