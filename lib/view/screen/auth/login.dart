import 'package:ecommerce/controller/logincontroller.dart';
import 'package:ecommerce/core/classes/handlingviewtest.dart';
import 'package:ecommerce/core/function/alertexit.dart';
import 'package:ecommerce/core/function/validate.dart';
import 'package:ecommerce/view/widget/auth/customtextbody.dart';
import 'package:ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/widget/auth/customtextform.dart';
import 'package:ecommerce/view/widget/auth/customtexttitle.dart';
import 'package:ecommerce/view/widget/auth/logoauth.dart';
import 'package:ecommerce/view/widget/auth/textsigninandup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LogincontrollerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("9".tr, style: Theme.of(context).textTheme.displayLarge),
        ),
        body: WillPopScope(
            onWillPop: alertexit,
            child: GetBuilder<LogincontrollerImp>(
              builder: (controller) => HandlingRequest(
                  statuseRequest: controller.statuseRequest,
                  widget: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    child: Form(
                      key: controller.formstate,
                      child: ListView(
                        children: [
                          const Logoauth(),
                          CustomTexttitle(text: "10".tr),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomTextbody(text: "11".tr),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextForm(
                              isNumber: false,
                              vald: (val) {
                                return validate(val!, 5, 100, "email");
                              },
                              mycontroller: controller.email,
                              hinttext: "12".tr,
                              text: "18".tr,
                              iconData: Icons.email_outlined),
                          GetBuilder<LogincontrollerImp>(
                            builder: (controller) => CustomTextForm(
                              onTapIcon: () {
                                controller.showpass();
                              },
                              obsecuretext: controller.isshowpass,
                              isNumber: false,
                              vald: (val) {
                                return validate(val!, 5, 30, "password");
                              },
                              mycontroller: controller.password,
                              hinttext: "13".tr,
                              text: "19".tr,
                              iconData: Icons.lock_outline,
                            ),
                          ),
                          InkWell(
                            child: Text(
                              "14".tr,
                              textAlign: TextAlign.end,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              controller.goToForgetpassword();
                            },
                          ),
                          Custombuttonauth(
                            onPressed: () {
                              controller.login();
                            },
                            text: '15'.tr,
                          ),
                          CustomTextSigninAndSignup(
                              textone: "16".tr,
                              texttow: "17".tr,
                              onTap: () {
                                controller.goToSignUp();
                              })
                        ],
                      ),
                    ),
                  )),
            )));
  }
}
