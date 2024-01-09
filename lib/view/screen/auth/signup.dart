import 'package:ecommerce/controller/signupcontroller.dart';
import 'package:ecommerce/core/classes/handlingviewtest.dart';
import 'package:ecommerce/core/function/alertexit.dart';
import 'package:ecommerce/core/function/validate.dart';
import 'package:ecommerce/view/widget/auth/customtextbody.dart';
import 'package:ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/widget/auth/customtextform.dart';
import 'package:ecommerce/view/widget/auth/customtexttitle.dart';
import 'package:ecommerce/view/widget/auth/textsigninandup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUP extends StatelessWidget {
  const SignUP({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignupcontrollerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("17".tr, style: Theme.of(context).textTheme.displayLarge),
        ),
        body: WillPopScope(
            onWillPop: alertexit,
            child: GetBuilder<SignupcontrollerImp>(
              builder: (controller) => HandlingRequest(
                  statuseRequest: controller.statuseRequest,
                  widget: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    child: Form(
                      key: controller.formstate,
                      child: ListView(
                        children: [
                          CustomTexttitle(text: "10".tr),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomTextbody(text: "24".tr),
                          const SizedBox(
                            height: 40,
                          ),
                          CustomTextForm(
                              isNumber: false,
                              vald: (val) {
                                return validate(val!, 5, 30, "username");
                              },
                              mycontroller: controller.username,
                              hinttext: "23".tr,
                              text: "20".tr,
                              iconData: Icons.person_2_outlined),
                          CustomTextForm(
                              isNumber: false,
                              vald: (val) {
                                return validate(val!, 5, 100, "email");
                              },
                              mycontroller: controller.email,
                              hinttext: "12".tr,
                              text: "18".tr,
                              iconData: Icons.email_outlined),
                          GetBuilder<SignupcontrollerImp>(
                            builder: (controller) => CustomTextForm(
                                obsecuretext: controller.isshowpass,
                                onTapIcon: () {
                                  controller.showpass();
                                },
                                isNumber: false,
                                vald: (val) {
                                  return validate(val!, 5, 30, "password");
                                },
                                mycontroller: controller.password,
                                hinttext: "13".tr,
                                text: "19".tr,
                                iconData: Icons.lock_outline),
                          ),
                          CustomTextForm(
                              isNumber: true,
                              vald: (val) {
                                return validate(val!, 5, 30, "phone");
                              },
                              mycontroller: controller.phone,
                              hinttext: "22".tr,
                              text: "21".tr,
                              iconData: Icons.phone_android_outlined),
                          Custombuttonauth(
                            onPressed: () {
                              controller.signup();
                            },
                            text: '17'.tr,
                          ),
                          CustomTextSigninAndSignup(
                              onTap: () {
                                controller.goToLogin();
                              },
                              textone: "25".tr,
                              texttow: "9".tr)
                        ],
                      ),
                    ),
                  )),
            )));
  }
}
