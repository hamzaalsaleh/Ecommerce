import 'package:flutter/material.dart';

class CustomTitleHome extends StatelessWidget {
  const CustomTitleHome({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xff2ecc71)),
    );
  }
}
