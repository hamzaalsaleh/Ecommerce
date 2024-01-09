import 'package:ecommerce/core/classes/statuserequest.dart';
import 'package:get/get.dart';

import '../core/function/handling.dart';
import '../data/datasource/remote/testdata.dart';

class Testcontroller extends GetxController {
  TestData testData = TestData(Get.find());
  List data = [];
  late StatuseRequest statuseRequest;
  getdata() async {
    statuseRequest = StatuseRequest.loading;
    var response = await testData.getdata();
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
  void onInit() {
    getdata();
    super.onInit();
  }
}
