import 'package:ecommerce/Binding/initialbinding.dart';
import 'package:ecommerce/core/localization/changelocall.dart';
import 'package:ecommerce/core/localization/translation.dart';
import 'package:ecommerce/routes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/servises/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Localcontroller controller = Get.put(Localcontroller());
    return GetMaterialApp(
      locale: controller.language,
      translations: Mytranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: controller.apptheme,
      getPages: routes,
      initialBinding: Initialbinding(),
    );
  }
}
