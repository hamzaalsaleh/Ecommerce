import 'package:ecommerce/controller/onbordingcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/datasource/static/static.dart';

class Customslideronbording extends GetView<OnbordingcontrollerImp> {
  const Customslideronbording({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.onpagechenged(value);
        },
        itemCount: onbordinglist.length,
        itemBuilder: (context, i) => Column(
              children: [
                Text(
                  onbordinglist[i].title!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(height: 50),
                Image.asset(
                  onbordinglist[i].image!,
                  height: 250,
                  width: 200,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 50),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    textAlign: TextAlign.center,
                    onbordinglist[i].body!,
                    style: const TextStyle(
                        height: 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 17),
                  ),
                )
              ],
            ));
  }
}
