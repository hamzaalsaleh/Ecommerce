import 'package:ecommerce/core/classes/statuserequest.dart';
import 'package:ecommerce/core/constant/routename.dart';
import 'package:ecommerce/core/function/handling.dart';
import 'package:ecommerce/data/datasource/remote/auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Signupcontroller extends GetxController {
  signup();
  goToLogin();
}

class SignupcontrollerImp extends Signupcontroller {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;
  late TextEditingController phone;
  List data = [];
  StatuseRequest statuseRequest = StatuseRequest.none;
  bool isshowpass = true;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  SignupData signupData = SignupData(Get.find());

  showpass() {
    isshowpass = isshowpass == true ? false : true;
    update();
  }

  @override
  goToLogin() {
    Get.offNamed(Approute.login);
  }

  @override
  signup() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      statuseRequest = StatuseRequest.loading;
      update();
      var response = await signupData.postdata(
          username.text, email.text, phone.text, password.text);
      statuseRequest = handling(response);
      if (StatuseRequest.success == statuseRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(Approute.verifysignup, arguments: {"email": email.text});
        } else {
          Get.defaultDialog(
              title: "Worning", middleText: "Email or phone Alrady Exist ");
          statuseRequest = StatuseRequest.failure;
        }
      }
      update();
    }
  }

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    phone.dispose();
    super.dispose();
  }
}
