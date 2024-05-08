import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controller/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "FFOODD",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
