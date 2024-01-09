import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/controller/productsdetalescontroller.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductImage extends GetView<ProductsDetalesControllerImp> {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.blue,
            )),
        Positioned(
          right: Get.width / 20,
          left: Get.width / 20,
          top: Get.height / 22,
          child: Hero(
            tag: controller.itemsModel.itemsId!,
            child: CachedNetworkImage(
                height: 250,
                width: 200,
                fit: BoxFit.fill,
                imageUrl:
                    "${Applink.imageitems}/${controller.itemsModel.itemsImage!}"),
          ),
        ),
      ],
    );
  }
}
