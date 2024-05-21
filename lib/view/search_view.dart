import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/search_controller.dart';

class SearchView extends GetView<Search_Controller> {
  const SearchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SearchView'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: controller.goBack,
          child: Text("Go back"),
        ),
      ),
    );
  }
}
