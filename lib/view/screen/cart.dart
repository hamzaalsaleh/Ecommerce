import 'package:ecommerce/controller/cartcontroller.dart';
import 'package:ecommerce/core/classes/handlingviewtest.dart';
import 'package:ecommerce/view/widget/cart/customappbar.dart';
import 'package:ecommerce/view/widget/cart/custombottomnav.dart';
import 'package:ecommerce/view/widget/cart/customcart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.put(CartController());
    return Scaffold(
        bottomNavigationBar: GetBuilder<CartController>(
          builder: (controller) => CustomBottomNavigation(
              price: "${cartController.priceorders}\$",
              shipping: "600\$",
              totalprice: "2100\$"),
        ),
        body: GetBuilder<CartController>(
          builder: (controller) => HandlingView(
            statuseRequest: controller.statuseRequest,
            widget: ListView(
              children: [
                const Customappbar(title: "My Cart"),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      ...List.generate(
                        cartController.data.length,
                        (index) => CustomCart(
                            onadd: () async {
                              await cartController
                                  .add(controller.data[index].itemsId!);
                              cartController.refreshpage();
                            },
                            onremove: () async {
                              await cartController
                                  .delete(controller.data[index].itemsId!);
                              cartController.refreshpage();
                            },
                            imagename: "${controller.data[index].itemsImage}",
                            name: "${controller.data[index].itemsName}",
                            count: "${controller.data[index].countitems}",
                            price: "${controller.data[index].itemsprice}"),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
