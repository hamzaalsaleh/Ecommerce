import 'package:ecommerce/controller/successresetpasswordcontroller.dart';
import 'package:ecommerce/core/classes/handlingviewtest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextbody.dart';
import '../../widget/auth/customtexttitle.dart';

class SucssesReset extends StatelessWidget {
  const SucssesReset({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SuccessResetControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("32".tr, style: Theme.of(context).textTheme.displayLarge),
        ),
        body: GetBuilder<SuccessResetControllerImp>(
          builder: (controller) => HandlingRequest(
              statuseRequest: controller.statuseRequest,
              widget: Container(
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
                    CustomTextbody(text: "36".tr),
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
              )),
        ));
  }
}
