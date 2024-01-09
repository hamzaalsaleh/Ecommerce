import 'package:ecommerce/controller/testcontroller.dart';
import 'package:ecommerce/core/classes/handlingviewtest.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Testview extends StatelessWidget {
  const Testview({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Testcontroller());
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<Testcontroller>(
        builder: (controller) {
          return HandlingView(
            statuseRequest: controller.statuseRequest,
            widget: ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context, index) {
                return Text(
                  "${controller.data}",
                );
              },
            ),
          );
        },
      ),
    );
  }
}
