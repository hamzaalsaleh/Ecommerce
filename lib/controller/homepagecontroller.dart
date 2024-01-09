import 'package:ecommerce/core/classes/statuserequest.dart';
import 'package:ecommerce/core/constant/routename.dart';
import 'package:ecommerce/core/function/handling.dart';
import 'package:ecommerce/core/servises/services.dart';
import 'package:ecommerce/data/datasource/remote/homedata.dart';
import 'package:ecommerce/data/model/itemsmodel.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initialdata();
  getdata();
  gotoitemsscreen(List categories, int sellectedcat, String categoriesid);
}

class HomeControllerImp extends Searchcontroller {
  String? username;
  String? categoriesid;
  String? id;
  int? usersid;
  String? lang;

  MyServices myServices = Get.find();
  late StatuseRequest statuseRequest;
  HomeData homeData = HomeData(Get.find());

  List data = [];
  List categories = [];
  List items = [];
  @override
  initialdata() {
    username = myServices.sharedPreferences.getString("username");
    lang = myServices.sharedPreferences.getString("lang");
    id = myServices.sharedPreferences.getInt("id").toString();
  }

  @override
  void onInit() {
    initialdata();
    getdata();
    super.onInit();
    search = TextEditingController();
  }

  @override
  getdata() async {
    statuseRequest = StatuseRequest.loading;
    var response = await homeData.getdata();
    statuseRequest = handling(response);
    if (StatuseRequest.success == statuseRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']['data']);
        items.addAll(response['items']['data']);
      } else {
        statuseRequest = StatuseRequest.failure;
      }
    }
    update();
  }

  @override
  gotoitemsscreen(categories, sellectedcat, categoriesid) {
    Get.toNamed(Approute.itemsscreen, arguments: {
      "categories": categories,
      "sellectedcat": sellectedcat,
      "catid": categoriesid
    });
  }

  gotoproductdetales(itemsModel) {
    Get.toNamed(Approute.productdetales, arguments: {"itemsmodel": itemsModel});
  }
}

class Searchcontroller extends GetxController {
  TextEditingController? search;
  late StatuseRequest statuseRequest;
  HomeData homeData = HomeData(Get.find());
  List<ItemsModel> listdata = [];
  bool issearch = false;
  searchData() async {
    statuseRequest = StatuseRequest.loading;
    var response = await homeData.searchData(search!.text);

    statuseRequest = handling(response);
    if (StatuseRequest.success == statuseRequest) {
      if (response['status'] == "success") {
        print("succes");
        listdata.clear();
        List resposedata = response['data'];
        listdata.addAll(resposedata.map((e) => ItemsModel.fromJson(e)));
        print(search.toString());
      } else {
        statuseRequest = StatuseRequest.failure;
      }
    }
    update();
  }

  checksearch(val) {
    if (val == "") {
      statuseRequest = StatuseRequest.none;
      issearch = false;
    }
    update();
  }

  onsearchitems() {
    issearch = true;
    searchData();
    update();
  }
}
