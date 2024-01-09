import 'package:ecommerce/controller/homepagecontroller.dart';
import 'package:ecommerce/core/classes/handlingviewtest.dart';
import 'package:ecommerce/core/constant/routename.dart';
import 'package:ecommerce/data/model/itemsmodel.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:ecommerce/view/widget/customappbar.dart';
import 'package:ecommerce/view/widget/home/customcardhome.dart';
import 'package:ecommerce/view/widget/home/customtitlehome.dart';
import 'package:ecommerce/view/widget/home/listcategorieshome.dart';
import 'package:ecommerce/view/widget/home/listitemshome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 15,
      ),
      child: ListView(children: [
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
        GetBuilder<HomeControllerImp>(
            builder: (controller) => HandlingView(
                statuseRequest: controller.statuseRequest,
                widget: controller.issearch == false
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomCardHome(title: "53".tr, subtitle: "54".tr),
                          const ListCategoriesHome(),
                          CustomTitleHome(title: "55".tr),
                          const ListItemsHome(),
                        ],
                      )
                    : ListItemsSearch(
                        listdatamodel: controller.listdata,
                      )))
      ]),
    );
  }
}

class ListItemsSearch extends GetView<HomeControllerImp> {
  const ListItemsSearch({
    super.key,
    required this.listdatamodel,
  });
  final List<ItemsModel> listdatamodel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listdatamodel.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => controller.gotoproductdetales(listdatamodel[index]),
          child: Card(
            child: Row(
              children: [
                Expanded(
                    child: CachedNetworkImage(
                        imageUrl:
                            "${Applink.imageitems}/${listdatamodel[index].itemsImage}")),
                Expanded(
                    child: ListTile(
                  title: Text("${listdatamodel[index].itemsName}"),
                  subtitle: Text("${listdatamodel[index].categoriesName}"),
                ))
              ],
            ),
          ),
        );
      },
    );
  }
}
