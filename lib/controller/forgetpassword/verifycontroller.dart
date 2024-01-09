import 'package:ecommerce/core/classes/statuserequest.dart';
import 'package:ecommerce/core/constant/routename.dart';
import 'package:ecommerce/core/function/handling.dart';
import 'package:ecommerce/data/datasource/remote/forgetpassword/verifycode.dart';
import 'package:get/get.dart';

abstract class VerifyController extends GetxController {
  checkcode(String verifycode);
}

class VerifyControllerImp extends VerifyController {
  String? email;

  StatuseRequest statuseRequest = StatuseRequest.none;
  VerifyCodeForget verifyCodeForget = VerifyCodeForget(Get.find());
  @override
  checkcode(verifycode) async {
    statuseRequest = StatuseRequest.loading;
    update();
    var response = await verifyCodeForget.postdata(email!, verifycode);
    statuseRequest = handling(response);
    if (StatuseRequest.success == statuseRequest) {
      if (response['status'] == "success") {
        Get.offAllNamed(Approute.resetpassword, arguments: {"email": email});
      } else {
        Get.defaultDialog(
            title: "Worning", middleText: "verifycode not correct");
        statuseRequest = StatuseRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments["email"];
    super.onInit();
  }

  reSend() {
    verifyCodeForget.resenddata(email!);
  }
}
