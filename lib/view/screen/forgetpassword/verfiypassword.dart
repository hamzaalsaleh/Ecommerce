import 'package:ecommerce/controller/forgetpassword/verifycontroller.dart';
import 'package:ecommerce/core/classes/handlingviewtest.dart';
import 'package:ecommerce/view/widget/auth/customtextbody.dart';
import 'package:ecommerce/view/widget/auth/customtexttitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerfiyPassword extends StatelessWidget {
  const VerfiyPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put((VerifyControllerImp()));
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("42".tr, style: Theme.of(context).textTheme.displayLarge),
        ),
        body: GetBuilder<VerifyControllerImp>(
          builder: (controller) => HandlingRequest(
              statuseRequest: controller.statuseRequest,
              widget: Container(
                alignment: Alignment.center,
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: ListView(
                  children: [
                    CustomTexttitle(text: "30".tr),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextbody(text: "43".tr),
                    const SizedBox(
                      height: 40,
                    ),
                    OtpTextField(
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                      borderRadius: BorderRadius.circular(50),
                      fieldWidth: 50,
                      numberOfFields: 5,
                      borderColor: const Color(0xFF512DA8),
                      showFieldAsBox: true,
                      onCodeChanged: (String code) {},
                      onSubmit: (String verificationCode) {
                        controller.checkcode(verificationCode);
                      },
                    ),
                    InkWell(
                      onTap: () {
                        controller.reSend();
                      },
                      child: Text("ReSend"),
                    )
                  ],
                ),
              )),
        ));
  }
}
