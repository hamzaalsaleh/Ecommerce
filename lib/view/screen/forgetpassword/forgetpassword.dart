import 'package:ecommerce/controller/forgetpassword/forgetpasswordcontroller.dart';
import 'package:ecommerce/core/classes/handlingviewtest.dart';
import 'package:ecommerce/core/function/validate.dart';
import 'package:ecommerce/view/widget/auth/customtextbody.dart';
import 'package:ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/widget/auth/customtextform.dart';
import 'package:ecommerce/view/widget/auth/customtexttitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put((ForgetPasswordControllerImp()));
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("14".tr, style: Theme.of(context).textTheme.displayLarge),
        ),
        body: GetBuilder<ForgetPasswordControllerImp>(
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
                        CustomTexttitle(text: "27".tr),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomTextbody(text: "29".tr),
                        const SizedBox(
                          height: 40,
                        ),
                        CustomTextForm(
                            isNumber: false,
                            vald: (val) {
                              return validate(val!, 10, 100, "email");
                            },
                            mycontroller: controller.email,
                            hinttext: "12".tr,
                            text: "18".tr,
                            iconData: Icons.email_outlined),
                        Custombuttonauth(
                          onPressed: () {
                            controller.checkemail();
                          },
                          text: '30'.tr,
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}
