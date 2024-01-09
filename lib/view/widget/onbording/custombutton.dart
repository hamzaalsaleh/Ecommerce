import 'package:ecommerce/controller/onbordingcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Custombuttononbording extends GetView<OnbordingcontrollerImp> {
  const Custombuttononbording({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        controller.next();
      },
      color: Colors.blue,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Text(
        "8".tr,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
