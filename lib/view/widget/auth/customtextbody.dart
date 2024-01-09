import 'package:flutter/material.dart';

class CustomTextbody extends StatelessWidget {
  final String text;
  const CustomTextbody({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style:
          const TextStyle(height: 2, fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
