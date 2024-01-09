import 'package:ecommerce/controller/homepagecontroller.dart';
import 'package:ecommerce/core/function/translatedatabase.dart';
import 'package:ecommerce/data/model/categoriesmodel.dart';

import 'package:ecommerce/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ListCategoriesHome extends GetView<HomeControllerImp> {
  const ListCategoriesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(
          width: 50,
        ),
        itemCount: controller.categories.length,
        itemBuilder: (context, index) {
          return Categories(
              i: index,
              categoriesModel:
                  CategoriesModel.fromJson(controller.categories[index]));
        },
      ),
    );
  }
}

class Categories extends GetView<HomeControllerImp> {
  final CategoriesModel categoriesModel;
  final int i;

  const Categories({super.key, required this.categoriesModel, required this.i});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.gotoitemsscreen(
            controller.categories, i, categoriesModel.categoriesId.toString());
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Column(children: [
          Stack(children: [
            SvgPicture.network(
                height: 150,
                "${Applink.imagecategories}/${categoriesModel.categoriesImage}"),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff2ecc71).withOpacity(0.2),
              ),
              height: 150,
              width: 150,
            )
          ]),
          Text(
            "${translatedatabase(categoriesModel.categoriesNameAr, categoriesModel.categoriesName)}",
            style: const TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ]),
      ),
    );
  }
}
