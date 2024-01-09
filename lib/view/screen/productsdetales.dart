import 'package:ecommerce/controller/productsdetalescontroller.dart';
import 'package:ecommerce/core/classes/handlingviewtest.dart';
import 'package:ecommerce/core/constant/routename.dart';
import 'package:ecommerce/view/widget/productdetails/bottombar.dart';
import 'package:ecommerce/view/widget/productdetails/cardcolor.dart';

import 'package:ecommerce/view/widget/productdetails/priceandcounter.dart';
import 'package:ecommerce/view/widget/productdetails/productimage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsDetales extends StatelessWidget {
  const ProductsDetales({super.key});

  @override
  Widget build(BuildContext context) {
    ProductsDetalesControllerImp controller =
        Get.put(ProductsDetalesControllerImp());
    return Scaffold(
        bottomNavigationBar: BottomBar(onPressed: () {
          Get.toNamed(Approute.cart);
        }),
        body: GetBuilder<ProductsDetalesControllerImp>(
          builder: (controller) => HandlingView(
            statuseRequest: controller.statuseRequest,
            widget: ListView(
              children: [
                const ProductImage(),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${controller.itemsModel.itemsName}",
                        style: const TextStyle(
                            fontSize: 30, color: Color(0xff2ecc71)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      PriceAndCount(
                          onremove: () {
                            controller.delete();
                          },
                          onadd: () {
                            controller.add();
                          },
                          count: "${controller.countitems}",
                          price: "${controller.itemsModel.itemspricediscount}"),
                      Text(
                        textAlign: TextAlign.center,
                        "${controller.itemsModel.itemsDesc}${controller.itemsModel.itemsDesc}${controller.itemsModel.itemsDesc}${controller.itemsModel.itemsDesc}${controller.itemsModel.itemsDesc}",
                        style: TextStyle(
                            color: Colors.grey[800],
                            height: 2,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // const Text(
                      //   "Color",
                      //   style: TextStyle(fontSize: 30, color: Color(0xff2ecc71)),
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // const CardColor(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
