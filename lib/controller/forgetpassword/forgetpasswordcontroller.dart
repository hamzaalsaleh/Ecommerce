import 'package:ecommerce/core/classes/statuserequest.dart';
import 'package:ecommerce/core/constant/routename.dart';
import 'package:ecommerce/core/function/handling.dart';
import 'package:ecommerce/data/datasource/remote/forgetpassword/checkemail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkemail();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController email;
  StatuseRequest statuseRequest = StatuseRequest.none;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  CheckEmailForget checkEmailForget = CheckEmailForget(Get.find());
  @override
  @override
  checkemail() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      statuseRequest = StatuseRequest.loading;
      update();
      var response = await checkEmailForget.postdata(email.text);
      statuseRequest = handling(response);
      if (StatuseRequest.success == statuseRequest) {
        if (response['status'] == "success") {
          Get.offAllNamed(Approute.verfiyPassword,
              arguments: {"email": email.text});
        } else {
          Get.defaultDialog(title: "Worning", middleText: "Email Not Found ! ");
          statuseRequest = StatuseRequest.failure;
        }
      }
      update();
    }
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
