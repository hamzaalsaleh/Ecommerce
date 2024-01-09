import 'package:ecommerce/core/classes/statuserequest.dart';
import 'package:ecommerce/core/function/handling.dart';
import 'package:ecommerce/data/datasource/remote/cartdata.dart';
import 'package:ecommerce/data/model/cartmodel.dart';
import 'package:ecommerce/data/model/itemsmodel.dart';
import 'package:get/get.dart';

import '../core/servises/services.dart';

class CartController extends GetxController {
  late StatuseRequest statuseRequest;
  CartData cartData = CartData(Get.find());
  MyServices myServices = Get.find();
  late ItemsModel itemsModel;

  List<CartModel> data = [];
  double priceorders = 0.0;
  int totlacountitems = 0;
  add(int itemsid) async {
    statuseRequest = StatuseRequest.loading;
    update();
    var response =
        await cartData.add(itemsid, myServices.sharedPreferences.getInt("id")!);
    statuseRequest = handling(response);
    if (StatuseRequest.success == statuseRequest) {
      print("__________");
      if (response['status'] == "success") {
        Get.snackbar("Attention !", "Add to Cart");
      } else {
        statuseRequest = StatuseRequest.failure;
      }
    }
    update();
  }

  delete(int itemsid) async {
    statuseRequest = StatuseRequest.loading;
    update();
    var response = await cartData.delete(
        itemsid, myServices.sharedPreferences.getInt("id")!);
    statuseRequest = handling(response);
    if (StatuseRequest.success == statuseRequest) {
      if (response['status'] == "success") {
        print("=========");
        Get.snackbar("Attention !", "Remove from cart");
      } else {
        statuseRequest = StatuseRequest.failure;
      }
    }
    update();
  }

  view() async {
    statuseRequest = StatuseRequest.loading;
    update();
    var response =
        await cartData.view(myServices.sharedPreferences.getInt("id")!);
    statuseRequest = handling(response);
    if (StatuseRequest.success == statuseRequest) {
      if (response['status'] == "success") {
        if (response['datacart']['status'] == 'success') {
          Map dataresponscountprice = response['countprice'];
          data.clear();
          List dataresponse = response['datacart']['data'];
          data.addAll(dataresponse.map((e) => CartModel.fromJson(e)));
          totlacountitems = int.parse(dataresponscountprice['totalcount']);
          priceorders =
              double.parse(dataresponscountprice['totalprice'].toString());
          print(priceorders);
        }
      } else {
        statuseRequest = StatuseRequest.failure;
      }
    }
    update();
  }

  resetvarcart() {
    priceorders = 0;
    data.clear();
  }

  refreshpage() {
    view();
    resetvarcart();
  }

  @override
  void onInit() {
    view();
    super.onInit();
  }
}
