import 'package:flutter/material.dart';

class CustomTexttitle extends StatelessWidget {
  final String text;
  const CustomTexttitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
          color: Colors.grey, fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
