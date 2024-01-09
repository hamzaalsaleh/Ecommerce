import 'package:ecommerce/controller/verifysignupcontroller.dart';
import 'package:ecommerce/core/classes/handlingviewtest.dart';
import 'package:ecommerce/view/widget/auth/customtextbody.dart';
import 'package:ecommerce/view/widget/auth/customtexttitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerfiySignup extends StatelessWidget {
  const VerfiySignup({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put((VerifySignupcontrollerImp()));

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("42".tr, style: Theme.of(context).textTheme.displayLarge),
        ),
        body: GetBuilder<VerifySignupcontrollerImp>(
          builder: (controller) => HandlingRequest(
              statuseRequest: controller.statuseRequest,
              widget: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTexttitle(text: "check code"),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextbody(
                        text: "please enter the code to ${controller.email}"),
                    const SizedBox(
                      height: 20,
                    ),
                    OtpTextField(
                      fieldWidth: 50,
                      borderRadius: BorderRadius.circular(20),
                      numberOfFields: 5,
                      showFieldAsBox: true,
                      onCodeChanged: (String code) {},
                      onSubmit: (String verificationcode) =>
                          controller.gotosuccesssignup(verificationcode),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          controller.resend();
                        },
                        child: Text(
                          "Resend Code",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ))
                  ],
                ),
              )),
        ));
  }
}
