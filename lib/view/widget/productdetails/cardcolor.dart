import 'package:ecommerce/controller/productsdetalescontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardColor extends GetView<ProductsDetalesControllerImp> {
  const CardColor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          controller.subproduct.length,
          (index) => Container(
            margin: const EdgeInsets.only(right: 10),
            alignment: Alignment.center,
            height: 70,
            width: 90,
            decoration: BoxDecoration(
                border: Border.all(),
                color: controller.subproduct[index]['active'] == "1"
                    ? Colors.blue
                    : Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              controller.subproduct[index]['name'],
              style: TextStyle(
                  color: controller.subproduct[index]['active'] == '1'
                      ? Colors.white
                      : Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
