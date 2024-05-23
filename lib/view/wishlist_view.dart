import 'package:flutter/material.dart';
import 'package:food_truck/controller/wishlist_controller.dart';
import 'package:get/get.dart';
import '../style/font_style.dart';
import '../model/wishlistdata.dart';

class WishlistView extends GetView<WishlistController> {
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
        child: ListView.builder(
          itemCount: wishlists.length,
          itemBuilder: (context, index) {
            final foodtruck = wishlists[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      "testurl", // foodtruck.foodtruck_imgid,
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(foodtruck.truck_name,
                      style: CustomTextStyles.bodyBold),
                  subtitle: Text(
                      '${foodtruck.distance} · 평점: ${foodtruck.rating}',
                      style: CustomTextStyles.body),
                  onTap: () => controller.goDetail(foodtruck.foodtruck_id),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
