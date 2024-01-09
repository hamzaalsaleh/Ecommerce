import 'package:ecommerce/controller/cartcontroller.dart';
import 'package:ecommerce/core/classes/statuserequest.dart';
import 'package:ecommerce/core/function/handling.dart';
import 'package:ecommerce/core/servises/services.dart';
import 'package:ecommerce/data/datasource/remote/cartdata.dart';
import 'package:ecommerce/data/model/itemsmodel.dart';
import 'package:get/get.dart';

abstract class ProductsDetalesController extends GetxController {}

class ProductsDetalesControllerImp extends ProductsDetalesController {
  late ItemsModel itemsModel;
  // CartController cartController = Get.put(CartController());
  late StatuseRequest statuseRequest;

  CartData cartData = CartData(Get.find());
  MyServices myServices = Get.find();
  var countitems;
  initialdata() async {
    statuseRequest = StatuseRequest.loading;
    itemsModel = Get.arguments["itemsmodel"];
    countitems = await getcount(itemsModel.itemsId!);

    statuseRequest = StatuseRequest.success;
    update();
  }

  additems(int itemsid) async {
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

  deleteitems(int itemsid) async {
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

  getcount(int itemsid) async {
    statuseRequest = StatuseRequest.loading;
    var response = await cartData.getcount(
        itemsid, myServices.sharedPreferences.getInt("id")!);
    statuseRequest = handling(response);
    if (StatuseRequest.success == statuseRequest) {
      if (response['status'] == "success") {
        int countitems = 0;
        countitems = response['data'];
        return countitems;
      } else {
        statuseRequest = StatuseRequest.failure;
      }
    }
  }

  add() {
    additems(itemsModel.itemsId!);
    countitems++;
    update();
  }

  delete() {
    if (countitems > 0) {
      deleteitems(itemsModel.itemsId!);
      countitems--;
      update();
    }
  }

  List subproduct = [
    {"name": "Blue", "id": "1", "active": "1"},
    {"name": "Red", "id": "2", "active": "0"},
    {"name": "Black", "id": "3", "active": "0"},
  ];
  @override
  void onInit() {
    super.onInit();
    initialdata();
  }
}
