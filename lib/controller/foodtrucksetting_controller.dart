import 'package:get/get.dart';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_truck/model/foodtruck_model.dart';
import 'package:image_picker/image_picker.dart';
import 'app_id.dart';

class FoodtrucksettingController extends GetxController {
  final _picker = ImagePicker();
  //final FirebaseAuth _auth = FirebaseAuth.instance;
  final FoodTruckModel _foodTruckModel = FoodTruckModel();
  void goBack() {
    Get.back(id: profileD);
  }

  createFoodTruck(
      String truckName,
      String truckDescription,
      String truckSchedule,
      String truckPhone,
      Map<String, dynamic> paymentOptions,
      /*File file,*/
      String truckTag) {
    //User user = _auth.currentUser!;
    return _foodTruckModel.createFoodTruck(
      truckName,
      truckDescription,
      truckSchedule,
      truckPhone,
      paymentOptions,
      /*file,*/ truckTag, /*user.uid*/
    );
  }

  getFoodTruckImgGaller() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      File file = File(image.path);
      return file;
    }
    return null;
  }
}
