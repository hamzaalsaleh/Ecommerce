import 'package:ecommerce/controller/homepagecontroller.dart';
import 'package:ecommerce/data/model/itemsmodel.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListItemsHome extends GetView<HomeControllerImp> {
  const ListItemsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.items.length,
        itemBuilder: (context, index) {
          return Items(
              itemsModel: ItemsModel.fromJson(controller.items[index]));
        },
      ),
    );
  }
}

class Items extends StatelessWidget {
  const Items({super.key, required this.itemsModel});
  final ItemsModel itemsModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Image.network(
                fit: BoxFit.fill,
                height: 100,
                width: 120,
                "${Applink.imageitems}/${itemsModel.itemsImage}",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
