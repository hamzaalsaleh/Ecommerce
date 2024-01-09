import 'package:ecommerce/core/constant/routename.dart';
import 'package:ecommerce/core/servises/services.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  MyServices myServices = Get.find();
  logout() {
    myServices.sharedPreferences.clear();
    Get.offAllNamed(Approute.login);
  }
}
