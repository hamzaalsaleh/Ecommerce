import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/view/screen/auth/homepage.dart';
import 'package:ecommerce/view/screen/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  changepage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;
  List<Widget> listpage = [
    const HomePage(),
    const SettingsPage(),
    const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text("Favorate")],
    ),
    const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text("Profile")],
    )
  ];
  List titlepagename = [
    {"title": "56".tr, "icon": Icons.home},
    {"title": "57".tr, "icon": Icons.settings},
    {"title": "59".tr, "icon": Icons.notifications_active_outlined},
    {"title": "58".tr, "icon": Icons.person_outline_outlined}
  ];
  @override
  changepage(int i) {
    currentpage = i;
    update();
  }
}
