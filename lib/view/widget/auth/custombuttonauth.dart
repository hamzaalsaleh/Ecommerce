import 'package:flutter/material.dart';

class Custombuttonauth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const Custombuttonauth({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 10),
        onPressed: onPressed,
        color: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
