import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/controller/myfavoritecontroller.dart';

import 'package:ecommerce/core/function/translatedatabase.dart';

import 'package:ecommerce/data/model/myfavoritemodel.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFavoriteCustomListItems extends GetView<MyFavoriteController> {
  final MyFavoriteModel itemsModel;

  const MyFavoriteCustomListItems({
    super.key,
    required this.itemsModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // controller.gotoproductdetales(itemsModel);
      },
      child: Card(
        surfaceTintColor: Colors.white,
        child: Padding(
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
                    "${itemsModel.itemsPrice}\$",
                    style: const TextStyle(fontFamily: "sans", fontSize: 20),
                  ),
                  IconButton(
                      onPressed: () {
                        controller.deletefromfavorite(itemsModel.favoriteId!);
                      },
                      icon: Icon(
                        Icons.delete_outline,
                        size: 25,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
