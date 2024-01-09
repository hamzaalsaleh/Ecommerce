import 'package:ecommerce/controller/myfavoritecontroller.dart';
import 'package:ecommerce/core/classes/handlingviewtest.dart';
import 'package:ecommerce/view/widget/myfavorite/customlistmitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Myfavorite extends StatelessWidget {
  const Myfavorite({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MyFavoriteController());
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: GetBuilder<MyFavoriteController>(
            builder: (controller) => ListView(
                  children: [
                    HandlingView(
                        statuseRequest: controller.statuseRequest,
                        widget: GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 0.7, crossAxisCount: 2),
                            itemCount: controller.data.length,
                            itemBuilder: (context, index) =>
                                MyFavoriteCustomListItems(
                                  itemsModel: controller.data[index],
                                ))),
                  ],
                )),
      ),
    );
  }
}
