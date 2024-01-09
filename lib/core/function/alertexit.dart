import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertexit() {
  Get.defaultDialog(title: "51".tr, content: Text("50".tr), actions: [
    ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child: Text("49".tr)),
    ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: Text("48".tr)),
  ]);
  return Future.value(true);
}
