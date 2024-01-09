import 'package:ecommerce/core/constant/apptheme.dart';
import 'package:ecommerce/core/servises/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Localcontroller extends GetxController {
  Locale? language;
  ThemeData apptheme = englishtheme;
  MyServices myServices = Get.find();
  changelang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    apptheme = langcode == "ar" ? arabictheme : englishtheme;
    Get.changeTheme(apptheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedpreflang = myServices.sharedPreferences.getString("lang");
    if (sharedpreflang == "ar") {
      language = const Locale("ar");
      apptheme = arabictheme;
    } else if (sharedpreflang == "en") {
      language = const Locale("en");
      apptheme = englishtheme;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      apptheme = englishtheme;
    }
    super.onInit();
  }
}
