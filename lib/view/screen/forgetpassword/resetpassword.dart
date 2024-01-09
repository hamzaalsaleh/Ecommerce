import 'package:ecommerce/controller/forgetpassword/resetcontroller.dart';
import 'package:ecommerce/core/classes/handlingviewtest.dart';
import 'package:ecommerce/core/function/validate.dart';
import 'package:ecommerce/view/widget/auth/customtextbody.dart';
import 'package:ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/widget/auth/customtextform.dart';
import 'package:ecommerce/view/widget/auth/customtexttitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put((ResetPasswordImp()));
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("39".tr, style: Theme.of(context).textTheme.displayLarge),
        ),
        body: GetBuilder<ResetPasswordImp>(
          builder: (controller) => HandlingRequest(
              statuseRequest: controller.statuseRequest,
              widget: Container(
                alignment: Alignment.center,
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Form(
                  key: controller.formstate,
                  child: ListView(
                    children: [
                      CustomTexttitle(text: "35".tr),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomTextbody(text: "13".tr),
                      const SizedBox(
                        height: 40,
                      ),
                      GetBuilder<ResetPasswordImp>(
                        builder: (controller) => CustomTextForm(
                            isNumber: false,
                            obsecuretext: controller.isshowpass,
                            onTapIcon: () {
                              controller.showpass();
                            },
                            vald: (val) {
                              return validate(val!, 5, 30, "password");
                            },
                            mycontroller: controller.password,
                            hinttext: "13".tr,
                            text: "19".tr,
                            iconData: Icons.password_outlined),
                      ),
                      GetBuilder<ResetPasswordImp>(
                        builder: (controller) => CustomTextForm(
                            isNumber: false,
                            obsecuretext: controller.isshowpass2,
                            onTapIcon: () {
                              controller.showpass2();
                            },
                            vald: (val) {
                              return validate(val!, 5, 30, "repassword");
                            },
                            mycontroller: controller.repassword,
                            hinttext: "41".tr,
                            text: "40".tr,
                            iconData: Icons.password_outlined),
                      ),
                      Custombuttonauth(
                        onPressed: () {
                          controller.resetpass();
                        },
                        text: '33'.tr,
                      ),
                    ],
                  ),
                ),
              )),
        ));
  }
}
