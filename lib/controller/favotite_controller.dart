import 'package:ecommerce/core/classes/statuserequest.dart';
import 'package:ecommerce/core/function/handling.dart';
import 'package:ecommerce/core/servises/services.dart';
import 'package:ecommerce/data/datasource/remote/favorite_data.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController {
  Map isfavorite = {};
  List data = [];
  late StatuseRequest statuseRequest;
  FavoriteData favoriteData = FavoriteData(Get.find());
  MyServices myServices = Get.find();
  setfavorite(id, val) {
    isfavorite[id] = val;
    update();
  }

  addfav(int itemsid) async {
    data.clear();
    statuseRequest = StatuseRequest.loading;
    var response = await favoriteData.addfavorite(
        itemsid, myServices.sharedPreferences.getInt("id")!);
    statuseRequest = handling(response);

    if (StatuseRequest.success == statuseRequest) {
      print("__________");
      if (response['status'] == "success") {
        Get.snackbar("Attention !", "Add to favorite");
      } else {
        statuseRequest = StatuseRequest.failure;
      }
    }
  }

  deletefav(int itemsid) async {
    data.clear();
    statuseRequest = StatuseRequest.loading;
    var response = await favoriteData.removefavorite(
        itemsid, myServices.sharedPreferences.getInt("id")!);
    statuseRequest = handling(response);
    if (StatuseRequest.success == statuseRequest) {
      if (response['status'] == "success") {
        print("=========");
        Get.snackbar("Attention !", "Remove from favorite");
      } else {
        statuseRequest = StatuseRequest.failure;
      }
    }
  }
}
