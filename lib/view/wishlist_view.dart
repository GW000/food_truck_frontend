import 'package:flutter/material.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WishlistView'),
        centerTitle: true,
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
