import 'package:ecommerce/core/constant/imageurl.dart';
import 'package:flutter/material.dart';

class Logoauth extends StatelessWidget {
  const Logoauth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assetimage.logo,
      height: 200,
    );
  }
}
