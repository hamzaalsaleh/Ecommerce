import 'package:ecommerce/core/classes/statuserequest.dart';
import 'package:ecommerce/core/constant/routename.dart';
import 'package:ecommerce/core/function/handling.dart';
import 'package:ecommerce/data/datasource/remote/auth/verifysignup.dart';
import 'package:get/get.dart';

abstract class VerifySignupcontroller extends GetxController {
  checkcode();
  gotosuccesssignup(String ver);
}

class VerifySignupcontrollerImp extends VerifySignupcontroller {
  String? email;
  StatuseRequest statuseRequest = StatuseRequest.none;
  VerifySignup verifySignup = VerifySignup(Get.find());

  @override
  gotosuccesssignup(ver) async {
    statuseRequest = StatuseRequest.loading;
    update();
    var response = await verifySignup.postdata(email!, ver);
    statuseRequest = handling(response);
    if (StatuseRequest.success == statuseRequest) {
      if (response['status'] == "success") {
        Get.offNamed(Approute.sucssessignup);
      } else {
        Get.defaultDialog(
            title: "Worning", middleText: "verifycode not correct");
        statuseRequest = StatuseRequest.failure;
      }
    }
    update();
  }

  @override
  checkcode() {}

  @override
  void onInit() {
    email = Get.arguments["email"];
    super.onInit();
  }

  resend() {
    verifySignup.resendcode(email!);
  }
}
