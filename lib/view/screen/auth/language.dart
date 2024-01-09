import 'package:ecommerce/core/constant/routename.dart';
import 'package:ecommerce/core/localization/changelocall.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/custombuttenlang.dart';

class Language extends GetView<Localcontroller> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Choose Language",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(
            height: 30,
          ),
          Custumbuttenlang(
            textbutton: "Arabic",
            onpress: () {
              controller.changelang("ar");
              Get.offNamed(Approute.mybording);
            },
          ),
          Custumbuttenlang(
            textbutton: "English",
            onpress: () {
              controller.changelang("en");
              Get.offNamed(Approute.mybording);
            },
          )
        ]),
      ),
    );
  }
}
