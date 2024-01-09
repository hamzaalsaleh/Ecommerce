import 'package:ecommerce/core/servises/services.dart';
import 'package:get/get.dart';

translatedatabase(coloumnar, coloumnen) {
  MyServices myServices = Get.find();

  if (myServices.sharedPreferences.getString("lang") == "ar") {
    return coloumnar;
  } else {
    return coloumnen;
  }
}
