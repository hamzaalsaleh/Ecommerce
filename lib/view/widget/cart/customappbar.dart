import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 15),
        alignment: Alignment.center,
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back)),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                title,
                style: const TextStyle(fontSize: 30),
              ),
            ),
            const Spacer()
          ],
        ));
  }
}
