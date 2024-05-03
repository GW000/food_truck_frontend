import 'package:flutter/material.dart';
import 'package:food_truck/view/mypage.dart';
import 'package:food_truck/controller/img_asset.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(AppAsset.imgtest, width: 50),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.cyanAccent,
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Mypage()));
              },
              child: Text("화면이동"),
            ),
          ),
        ),
      ),
    );
  }
}
