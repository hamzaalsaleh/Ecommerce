import 'package:ecommerce/controller/favotite_controller.dart';
import 'package:ecommerce/controller/itemscontroller.dart';
import 'package:ecommerce/core/classes/handlingviewtest.dart';
import 'package:ecommerce/core/constant/routename.dart';
import 'package:ecommerce/data/model/itemsmodel.dart';
import 'package:ecommerce/view/screen/auth/homepage.dart';
import 'package:ecommerce/view/widget/customappbar.dart';
import 'package:ecommerce/view/widget/items/customlistitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/items/listcategoriesitems.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ItemsControllerImp controller = Get.put(ItemsControllerImp());
    FavoriteController controllerfav = Get.put(FavoriteController());
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              CustomAppbar(
                mycontroller: controller.search!,
                onChanged: (val) {
                  controller.checksearch(val);
                },
                title: "52".tr,
                onPressedsearch: () {
                  controller.onsearchitems();
                },
                onPressedfavorite: () {
                  Get.toNamed(Approute.myfavorite);
                },
              ),
              const ListCategoriesItems(),
              GetBuilder<ItemsControllerImp>(
                builder: (controller) => HandlingView(
                  statuseRequest: controller.statuseRequest,
                  widget: controller.issearch == false
                      ? GridView.builder(
                          itemCount: controller.data.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, childAspectRatio: 0.7),
                          itemBuilder: (BuildContext context, index) {
                            controllerfav.isfavorite[controller.data[index]
                                    ['items_id']] =
                                controller.data[index]['favorite'];
                            return CustomListItems(
                                itemsModel: ItemsModel.fromJson(
                                    controller.data[index]));
                          })
                      : ListItemsSearch(
                          listdatamodel: controller.listdata,
                        ),
                ),
              )
            ],
          )),
    );
  }
}
