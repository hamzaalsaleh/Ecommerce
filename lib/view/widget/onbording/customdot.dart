import 'package:ecommerce/controller/onbordingcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/datasource/static/static.dart';

class Customdotonbording extends StatelessWidget {
  const Customdotonbording({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnbordingcontrollerImp>(
        builder: ((controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  onbordinglist.length,
                  (index) => AnimatedContainer(
                    margin: const EdgeInsets.all(2),
                    duration: const Duration(
                      milliseconds: 900,
                    ),
                    height: 6,
                    width: controller.currentpage == index ? 20 : 6,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
              ],
            )));
  }
}
