import 'package:ecommerce/controller/successsignupcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextbody.dart';
import '../../widget/auth/customtexttitle.dart';

class SuccessSignup extends StatelessWidget {
  const SuccessSignup({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignupControllerImp controller =
        Get.put(SuccessSignupControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("32".tr, style: Theme.of(context).textTheme.displayLarge),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Center(
                child: Icon(
                  Icons.check_circle_outline,
                  size: 200,
                  color: Colors.blue,
                ),
              ),
              CustomTexttitle(
                text: "37".tr,
              ),
              const SizedBox(
                height: 50,
              ),
              CustomTextbody(text: "38".tr),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: double.infinity,
                child: Custombuttonauth(
                  onPressed: () {
                    controller.gotologin();
                  },
                  text: '31'.tr,
                ),
              ),
            ],
          ),
        ));
  }
}
