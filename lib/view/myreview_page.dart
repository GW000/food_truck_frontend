import 'package:flutter/material.dart';

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
