import 'package:flutter/material.dart';
import 'package:food_truck/controller/img_asset.dart';

class Mypage extends StatelessWidget {
  const Mypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 120),
            child: Image.asset(AppAsset.imgtest, width: 50)),
      ),
    );
  }
}
