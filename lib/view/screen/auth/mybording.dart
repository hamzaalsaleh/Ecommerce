import 'package:ecommerce/controller/onbordingcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/onbording/custombutton.dart';
import '../../widget/onbording/customdot.dart';
import '../../widget/onbording/slider.dart';

class Mybording extends StatelessWidget {
  const Mybording({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnbordingcontrollerImp());
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          Expanded(
            flex: 3,
            child: Customslideronbording(),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Customdotonbording(),
                SizedBox(
                  height: 50,
                ),
                Custombuttononbording(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
