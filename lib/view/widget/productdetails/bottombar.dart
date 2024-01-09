import 'package:ecommerce/core/constant/routename.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff2ecc71),
      ),
      margin: const EdgeInsets.all(10),
      height: 50,
      child: MaterialButton(
        onPressed: onPressed,
        child: const Text(
          "Go To Cart",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
