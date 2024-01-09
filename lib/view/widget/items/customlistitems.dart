import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/controller/favotite_controller.dart';
import 'package:ecommerce/controller/itemscontroller.dart';
import 'package:ecommerce/core/constant/imageurl.dart';

import 'package:ecommerce/core/function/translatedatabase.dart';
import 'package:ecommerce/data/model/itemsmodel.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  final ItemsModel itemsModel;

  const CustomListItems({
    super.key,
    required this.itemsModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.gotoproductdetales(itemsModel);
      },
      child: Card(
        surfaceTintColor: Colors.white,
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: itemsModel.itemsId!,
                  child: CachedNetworkImage(
                      height: 100,
                      fit: BoxFit.fill,
                      imageUrl:
                          "${Applink.imageitems}/${itemsModel.itemsImage!}"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                    "${translatedatabase(itemsModel.itemsNameAr, itemsModel.itemsName)}",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("60".tr),
                    const SizedBox(
                      width: 3,
                    ),
                    ...List.generate(
                        5,
                        (index) => const Icon(
                              Icons.star,
                              size: 15,
                            ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "${itemsModel.itemspricediscount}\$",
                      style: const TextStyle(fontFamily: "sans", fontSize: 20),
                    ),
                    GetBuilder<FavoriteController>(
                      builder: (controller) => IconButton(
                          onPressed: () {
                            if (controller.isfavorite[itemsModel.itemsId] ==
                                1) {
                              controller.setfavorite(itemsModel.itemsId, 0);

                              controller.deletefav(itemsModel.itemsId!);
                            } else {
                              controller.setfavorite(itemsModel.itemsId, 1);

                              controller.addfav(itemsModel.itemsId!);
                            }
                          },
                          icon: Icon(
                            controller.isfavorite[itemsModel.itemsId] == 1
                                ? Icons.favorite
                                : Icons.favorite_border_outlined,
                            color: Colors.red,
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
          if (itemsModel.itemsDiscount != 0)
            Image.asset(width: 50, Assetimage.sale)
        ]),
      ),
    );
  }
}
