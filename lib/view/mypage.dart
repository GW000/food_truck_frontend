import 'package:flutter/material.dart';
import 'package:food_truck/model/img_asset.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 120),
            child: Image.asset(IMGAsset.imgtest, width: 50)),
      ),
    );
  }
}
