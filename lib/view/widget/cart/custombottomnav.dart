import 'package:ecommerce/core/constant/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    super.key,
    required this.price,
    required this.totalprice,
    required this.shipping,
  });
  final String price;
  final String totalprice;
  final String shipping;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Text(
                "Price",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Text(
                price,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const Text(
                "Shipping",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Text(
                shipping,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          const Divider(
            thickness: 3,
            height: 30,
            color: AppColor.hsecondryColor,
          ),
          Row(
            children: [
              const Text(
                "TotalPrice",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Text(
                totalprice,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: Get.width / 3),
            color: AppColor.hPrimaryColor,
            onPressed: () {},
            child: const Text(
              "Order",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
