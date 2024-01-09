import 'package:ecommerce/controller/homescreencontroller.dart';
import 'package:ecommerce/core/constant/routename.dart';
import 'package:ecommerce/view/widget/home/custombottomappbarhome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => Scaffold(
          body: controller.listpage.elementAt(controller.currentpage),
          floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.blue,
              shape: const CircleBorder(),
              onPressed: () {
                Get.toNamed(Approute.cart);
              },
              child: const Icon(
                Icons.shopping_basket_outlined,
                color: Colors.white,
              )),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: const CustomBottomAppBarHome()),
    );
  }
}
