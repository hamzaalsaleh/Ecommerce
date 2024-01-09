import 'package:ecommerce/controller/homepagecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCardHome extends GetView<HomeControllerImp> {
  const CustomCardHome(
      {super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),
            alignment: Alignment.center,
            height: 150,
            child: ListTile(
              title: Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              subtitle: Text(
                subtitle,
                style: const TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
          ),
          Positioned(
              top: -20,
              right: controller.lang == "en" ? -20 : null,
              left: controller.lang == "ar" ? -20 : null,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(160),
                  color: const Color(0xff2ecc71),
                ),
                height: 150,
                width: 150,
              )),
        ],
      ),
    );
  }
}
