import 'package:flutter/material.dart';

// 푸드트럭 목록 페이지
class FoodTruckListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('푸드트럭'),
      ),
      body: FoodTruckListView(),
    );
  }
}


// 가게 목록 데이터 모델
class FoodTruck {
  final String name;
  final String distance; // 거리
  final double rating; // 평점
  final String imageUrl; // 이미지 URL 추가

  FoodTruck({
    required this.name,
    required this.distance,
    required this.rating,
    required this.imageUrl,
  });
}

// 푸드트럭 목록 위젯
class FoodTruckListView extends StatelessWidget {
  final List<FoodTruck> foodTrucks = [
    FoodTruck(name: '가게1', distance: '1km', rating: 4.5, imageUrl: 'https://example.com/image1.jpg'),
    FoodTruck(name: '가게2', distance: '2km', rating: 4.2, imageUrl: 'https://example.com/image2.jpg'),
    FoodTruck(name: '가게3', distance: '3km', rating: 4.4, imageUrl: 'https://example.com/image1.jpg'),
    FoodTruck(name: '가게4', distance: '4km', rating: 4.3, imageUrl: 'https://example.com/image2.jpg'),
    // 다른 가게들 추가
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodTrucks.length,
      itemBuilder: (context, index) {
        return FoodTruckListItem(foodTruck: foodTrucks[index]);
      },
    );
  }
}

// 가게 목록 항목 위젯
class FoodTruckListItem extends StatelessWidget {
  final FoodTruck foodTruck;

  FoodTruckListItem({required this.foodTruck});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        foodTruck.imageUrl,
        width: 50, // 이미지 너비 조정
        height: 50, // 이미지 높이 조정
        fit: BoxFit.cover, // 이미지를 가능한 많이 채우기 위해 fit 조정
      ),
      title: Text(foodTruck.name),
      subtitle: Text('${foodTruck.distance} · 평점: ${foodTruck.rating}'),
      onTap: () {
        // 가게 상세 페이지로 이동하는 기능 추가
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FoodTruckDetailPage(foodTruck: foodTruck),
          ),
        );
      },
    );
  }
}

// 결제 방법을 선택할 수 있는 위젯
class PaymentOptionBox extends StatelessWidget {
  final String option;
  final bool selected;
  final VoidCallback onTap;

  PaymentOptionBox({
    required this.option,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
          color: selected ? Colors.blue : Colors.transparent, // 선택 여부에 따라 색상 변경
        ),
        child: Text(
          option,
          style: TextStyle(
            fontSize: 16,
            color: selected ? Colors.white : Colors.black, // 선택 여부에 따라 색상 변경
          ),
        ),
      ),
    );
  }
}

class FoodTruckDetailPage extends StatefulWidget {
  final FoodTruck foodTruck;

  FoodTruckDetailPage({required this.foodTruck});

  @override
  _FoodTruckDetailPageState createState() => _FoodTruckDetailPageState();
}

class _FoodTruckDetailPageState extends State<FoodTruckDetailPage> {
  String? _selectedPaymentOption;
  String? _saleTime; // 판매시간 저장 변수
  String _selectedTab = 'Menu'; // 선택된 탭 초기값 설정

  @override
  void initState() {
    super.initState();
    // 초기 상태에서 판매시간을 설정할 수 있습니다.
    _saleTime = '11:00 - 19:00'; // 예시로 설정
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.foodTruck.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            widget.foodTruck.imageUrl,
            fit: BoxFit.cover,
            height: 300, // 음식 사진 크기 조정
          ),
          SizedBox(height: 20), // 간격 추가
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.foodTruck.name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10), // 간격 추가
                Text(
                  '위치: ${widget.foodTruck.distance} | 사용자와의 거리', // 위치 및 사용자와의 거리 추가
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10), // 간격 추가
                Text(
                  '결제방법',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10), // 간격 추가
                Row(
                  children: [
                    PaymentOptionBox(
                      option: '현금',
                      selected: _selectedPaymentOption == '현금',
                      onTap: () {
                        setState(() {
                          _selectedPaymentOption = '현금';
                        });
                      },
                    ),
                    SizedBox(width: 10),
                    PaymentOptionBox(
                      option: '카드',
                      selected: _selectedPaymentOption == '카드',
                      onTap: () {
                        setState(() {
                          _selectedPaymentOption = '카드';
                        });
                      },
                    ),
                    SizedBox(width: 10),
                    PaymentOptionBox(
                      option: '계좌이체',
                      selected: _selectedPaymentOption == '계좌이체',
                      onTap: () {
                        setState(() {
                          _selectedPaymentOption = '계좌이체';
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20), // 간격 추가
                Text(
                  '판매시간', // 판매시간 텍스트 추가
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10), // 간격 추가
                Text(
                  _saleTime!, // 판매시간 출력
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20), // 간격 추가
                Container(
                  height: 1,
                  color: Colors.grey, // 선의 색상 설정
                ),
                SizedBox(height: 20), // 간격 추가
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedTab = 'Menu';
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                          color: _selectedTab == 'Menu' ? Colors.black : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          '메뉴',
                          style: TextStyle(
                            fontSize: 18,
                            color: _selectedTab == 'Menu' ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 1,
                      color: Colors.grey,
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedTab = 'Info';
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                          color: _selectedTab == 'Info' ? Colors.black : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          '정보',
                          style: TextStyle(
                            fontSize: 18,
                            color: _selectedTab == 'Info' ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 1,
                      color: Colors.grey,
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedTab = 'Review';
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                          color: _selectedTab == 'Review' ? Colors.black : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          '리뷰',
                          style: TextStyle(
                            fontSize: 18,
                            color: _selectedTab == 'Review' ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20), // 간격 추가
          // 추가적인 가게 상세 정보를 표시하는 위젯 추가 가능
        ],
      ),
    );
  }
}
