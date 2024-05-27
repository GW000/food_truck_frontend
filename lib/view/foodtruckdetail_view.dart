import 'package:flutter/material.dart';
import 'package:food_truck/model/truck_reviewdata.dart';
import '../controller/foodtruckdetail_controller.dart';
import 'package:get/get.dart';
import '../style/font_style.dart'; // Import the text styles

class FoodtruckdetailView extends GetView<FoodtruckdetailController> {
  const FoodtruckdetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final foodtruck = Get.arguments;
    final String select = foodtruck['foodtruck_id'];
    final Size size = MediaQuery.of(context).size;
    //final menuKey = menus[select]!;
    final reviewKey = reviews[select]!;
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
            "${foodtruck['truck_name']}",
            style: CustomTextStyles.title,
          ),
          SizedBox(height: 10),
          // 위치 및 거리 정보 추가
          Text(
            "거리 : km",
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
                'truck_payment 추가 해야함',
                style: CustomTextStyles.body,
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                "운영 시간:",
                style: CustomTextStyles.subtitle,
              ),
              SizedBox(width: 10),
              Text(
                foodtruck['truck_schedule'],
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
                      FutureBuilder(
                          future: (controller.getFoodTruckMenuData(select)),
                          builder:
                              (BuildContext context, AsyncSnapshot snapshot) {
                            if (snapshot.hasData == false) {
                              return CircularProgressIndicator();
                            } else if (snapshot.hasError) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Error: ${snapshot.error}',
                                  style: TextStyle(fontSize: 15),
                                ),
                              );
                            } else {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListView.builder(
                                  itemCount: snapshot.data.length,
                                  itemBuilder: (context, index) {
                                    final menu = snapshot.data[index];
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: size.height * 0.2,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.3),
                                                spreadRadius: 1,
                                                blurRadius: 5,
                                                offset: Offset(0,
                                                    3), // changes position of shadow
                                              ),
                                            ],
                                          ),
                                          child: ListTile(
                                            leading: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                menu['menu_img'], // 이미지 URL
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            title: Text(menu['menu_name'],
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            subtitle: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    '설명: ${menu['menu_description']}'),
                                                Text(
                                                    '가격: ${menu['menu_price']}'),
                                              ],
                                            ),
                                            onTap: () {},
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              );
                            }
                          }),

                      // 정보 탭 내용
                      ListView(
                        padding: EdgeInsets.all(16.0),
                        children: [
                          Text(
                            '${foodtruck['truck_name']}',
                            style: CustomTextStyles.title,
                          ),
                          SizedBox(height: 10),
                          Text(
                            '운영 시간:',
                            style: CustomTextStyles.subtitle,
                          ),
                          SizedBox(height: 5),
                          Text(
                            foodtruck['truck_schedule'],
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
                            foodtruck['truck_phone'],
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
                            '${foodtruck['truck_address']}',
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
                            '${foodtruck['truck_description']}',
                            style: CustomTextStyles.body,
                          ),
                        ],
                      ),
                      // 리뷰 탭 내용
                      ListView.builder(
                        itemCount: reviewKey.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: reviewKey.keys.map((index) {
                                  final reviewInfo = reviewKey[index]!;
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Container(
                                      height: size.height * 0.2,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 1,
                                            blurRadius: 5,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: ListTile(
                                        leading: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            "testurl", // foodtruck.foodtruck_imgid,
                                            //width: 30,
                                            //height: 30,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        trailing: Wrap(
                                            spacing: 1, // 두 아이콘 간격,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 20,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 20,
                                              ),
                                            ]),
                                        title: Text(reviewInfo['user_name'],
                                            style: CustomTextStyles.bodyBold),
                                        subtitle: Text(
                                            '내용: ${reviewInfo['review_context']}\n 평점: ${reviewInfo['Rating']}\n 생성일: ${reviewInfo['review_create_date']}',
                                            style: CustomTextStyles.body),
                                        onTap: () => print(reviewKey.length),
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          );
                        },
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
