import 'package:ecommerce/core/classes/statuserequest.dart';
import 'package:ecommerce/core/constant/routename.dart';
import 'package:ecommerce/core/function/handling.dart';
import 'package:ecommerce/data/datasource/remote/forgetpassword/resetpassword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPassword extends GetxController {
  resetpass();
  gotosuccessresetpassword();
}

class ResetPasswordImp extends ResetPassword {
  late TextEditingController password;
  late TextEditingController repassword;
  bool isshowpass = true;
  bool isshowpass2 = true;
  StatuseRequest statuseRequest = StatuseRequest.none;
  String? email;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  RestetPasswordForget restetPasswordForget = RestetPasswordForget(Get.find());
  showpass() {
    isshowpass = isshowpass == true ? false : true;
    update();
  }

  showpass2() {
    isshowpass2 = isshowpass2 == true ? false : true;
    update();
  }

  @override
  gotosuccessresetpassword() {
    Get.offNamed(Approute.sucssesreset);
  }

  @override
  resetpass() async {
    if (password.text != repassword.text) {
      return Get.defaultDialog(title: "Worning", middleText: "Not correct");
    }
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      statuseRequest = StatuseRequest.loading;
      update();
      var response = await restetPasswordForget.postdata(email!, password.text);
      statuseRequest = handling(response);
      if (StatuseRequest.success == statuseRequest) {
        if (response['status'] == "success") {
          Get.offNamed(Approute.sucssesreset);
        } else {
          Get.defaultDialog(title: "Worning", middleText: "Try again");
          statuseRequest = StatuseRequest.failure;
        }
      }
      update();
    }
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    email = Get.arguments["email"];
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
