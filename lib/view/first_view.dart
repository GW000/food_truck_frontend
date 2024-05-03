import 'package:flutter/material.dart';
import 'package:food_truck/controller/scroll_asset.dart';
import 'package:food_truck/view/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: CustomScroll(),
      home: Homepage(),
    );
  }
}
