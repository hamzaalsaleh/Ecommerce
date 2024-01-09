import 'package:ecommerce/controller/itemscontroller.dart';
import 'package:ecommerce/core/function/translatedatabase.dart';
import 'package:ecommerce/data/model/categoriesmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListCategoriesItems extends GetView<ItemsControllerImp> {
  const ListCategoriesItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(
          width: 40,
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

class Categories extends GetView<ItemsControllerImp> {
  final CategoriesModel categoriesModel;
  final int i;

  const Categories({super.key, required this.categoriesModel, required this.i});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // controller.gotoitemsscreen(controller.categories, i);
        controller.changecat(i, categoriesModel.categoriesId.toString());
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Column(children: [
          GetBuilder<ItemsControllerImp>(
            builder: (controller) => Container(
              padding: const EdgeInsets.only(bottom: 5),
              decoration: controller.sellectedcat == i
                  ? const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.black, width: 3)))
                  : null,
              child: Text(
                "${translatedatabase(categoriesModel.categoriesNameAr, categoriesModel.categoriesName)}",
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
