import 'package:ecommerce/core/classes/statuserequest.dart';
import 'package:ecommerce/core/constant/routename.dart';
import 'package:ecommerce/core/function/handling.dart';
import 'package:ecommerce/core/servises/services.dart';
import 'package:ecommerce/data/datasource/remote/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Logincontroller extends GetxController {
  login();
  goToSignUp();
  goToForgetpassword();
}

class LogincontrollerImp extends Logincontroller {
  late TextEditingController email;
  late TextEditingController password;
  bool isshowpass = true;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  StatuseRequest statuseRequest = StatuseRequest.none;
  LoginData loginData = LoginData(Get.find());
  MyServices myServices = Get.find();
  showpass() {
    isshowpass = isshowpass == true ? false : true;
    update();
  }

  @override
  goToSignUp() {
    Get.offNamed(Approute.signup);
  }

  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statuseRequest = StatuseRequest.loading;
      update();
      var response = await loginData.postdata(email.text, password.text);
      statuseRequest = handling(response);
      if (StatuseRequest.success == statuseRequest) {
        if (response['status'] == "success") {
          if (response['data']['users_approve'] == 1) {
            myServices.sharedPreferences
                .setInt("id", response['data']['users_id']);
            myServices.sharedPreferences
                .setString("username", response['data']['users_name']);
            myServices.sharedPreferences
                .setString("email", response['data']['users_email']);
            myServices.sharedPreferences
                .setString("phone", response['data']['users_phone']);
            myServices.sharedPreferences.setString("step", "2");
            Get.offNamed(Approute.homepage);
          } else {
            Get.toNamed(Approute.verifysignup,
                arguments: {"email": email.text});
          }
        } else {
          Get.defaultDialog(
              title: "Worning", middleText: "Email or password not correct ! ");
          statuseRequest = StatuseRequest.failure;
        }
      }
      update();
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetpassword() {
    Get.toNamed(Approute.forgetpassword);
  }
}
