import 'package:flutter/material.dart';
import 'package:food_truck/view/login_page.dart';
import 'package:food_truck/controller/page_routes.dart';

class StartApp extends StatelessWidget {
  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FFOODD",
      theme: ThemeData(canvasColor: Colors.black),
      home: LoginPage(),
      onGenerateRoute: (settings) => Routes.generateRoute(settings, context),
    );
  }
}
