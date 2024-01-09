import 'package:flutter/material.dart';

class Custumbuttenlang extends StatelessWidget {
  final String textbutton;
  final void Function()? onpress;
  const Custumbuttenlang({super.key, required this.textbutton, this.onpress});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      color: Colors.blue,
      onPressed: onpress,
      child: Text(
        textbutton,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
