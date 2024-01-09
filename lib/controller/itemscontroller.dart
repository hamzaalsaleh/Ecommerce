import 'package:ecommerce/controller/homepagecontroller.dart';
import 'package:ecommerce/core/classes/statuserequest.dart';
import 'package:ecommerce/core/constant/routename.dart';
import 'package:ecommerce/core/function/handling.dart';
import 'package:ecommerce/core/servises/services.dart';
import 'package:ecommerce/data/datasource/remote/items.dart';
import 'package:ecommerce/data/model/itemsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ItemsController extends GetxController {
  initialData();
  changecat(int val, String catval);
  getdata(String categoriesid);
  gotoproductdetales(ItemsModel itemsModel);
}

class ItemsControllerImp extends Searchcontroller {
  List categories = [];
  int? sellectedcat;
  String? categoriesid;
  MyServices myServices = Get.find();
  late StatuseRequest statuseRequest;
  ItemsData itemsData = ItemsData(Get.find());

  List data = [];
  @override
  void onInit() {
    initialData();
    super.onInit();
    search = TextEditingController();
  }

  @override
  getdata(categoriesid) async {
    data.clear();
    statuseRequest = StatuseRequest.loading;
    var response = await itemsData.getdata(
        categoriesid, myServices.sharedPreferences.getInt("id")!);
    statuseRequest = handling(response);
    if (StatuseRequest.success == statuseRequest) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statuseRequest = StatuseRequest.failure;
      }
    }
    update();
  }

  @override
  initialData() {
    categories = Get.arguments['categories'];
    sellectedcat = Get.arguments['sellectedcat'];
    categoriesid = Get.arguments['catid'];
    getdata(categoriesid!);
  }

  @override
  changecat(val, catval) {
    sellectedcat = val;
    categoriesid = catval;
    getdata(categoriesid!);
    update();
  }

  @override
  gotoproductdetales(itemsModel) {
    Get.toNamed(Approute.productdetales, arguments: {"itemsmodel": itemsModel});
  }
}
