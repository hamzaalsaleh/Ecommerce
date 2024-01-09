import 'package:ecommerce/core/constant/routename.dart';
import 'package:ecommerce/core/servises/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/datasource/static/static.dart';

abstract class Onbordingcontroller extends GetxController {
  next();
  onpagechenged(int index);
}

class OnbordingcontrollerImp extends Onbordingcontroller {
  int currentpage = 0;

  late PageController pageController;
  MyServices myServices = Get.find();
  @override
  next() {
    currentpage++;
    if (currentpage > onbordinglist.length - 1) {
      myServices.sharedPreferences.setString("step", "1");
      Get.offAllNamed(Approute.login);
    } else {
      pageController.animateToPage(currentpage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onpagechenged(int index) {
    currentpage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
