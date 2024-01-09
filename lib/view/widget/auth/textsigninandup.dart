import 'package:flutter/material.dart';

class CustomTextSigninAndSignup extends StatelessWidget {
  final String textone;
  final String texttow;
  final void Function() onTap;
  const CustomTextSigninAndSignup(
      {super.key,
      required this.textone,
      required this.texttow,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textone),
        InkWell(
          onTap: onTap,
          child: Text(
            texttow,
            style: const TextStyle(
                fontSize: 17, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
