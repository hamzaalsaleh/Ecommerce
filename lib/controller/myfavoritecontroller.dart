import 'package:ecommerce/core/classes/statuserequest.dart';
import 'package:ecommerce/core/function/handling.dart';
import 'package:ecommerce/core/servises/services.dart';

import 'package:ecommerce/data/datasource/remote/myfavoritedata.dart';
import 'package:ecommerce/data/model/myfavoritemodel.dart';
import 'package:get/get.dart';

class MyFavoriteController extends GetxController {
  List<MyFavoriteModel> data = [];
  late StatuseRequest statuseRequest;
  MyFavoriteData myFavoriteData = MyFavoriteData(Get.find());
  MyServices myServices = Get.find();

  getdata() async {
    data.clear();
    statuseRequest = StatuseRequest.loading;
    var response = await myFavoriteData
        .getdata(myServices.sharedPreferences.getInt("id")!);
    statuseRequest = handling(response);

    if (StatuseRequest.success == statuseRequest) {
      if (response['status'] == "success") {
        List responsedata = response['data'];
        data.addAll(responsedata.map((e) => MyFavoriteModel.fromJson(e)));
        print("data");
        print(data);
      } else {
        statuseRequest = StatuseRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    super.onInit();
    getdata();
  }

  deletefromfavorite(int favoriteid) {
    var response = myFavoriteData.deletedata(favoriteid);
    data.removeWhere((element) => element.favoriteId == favoriteid);

    update();
  }
}
