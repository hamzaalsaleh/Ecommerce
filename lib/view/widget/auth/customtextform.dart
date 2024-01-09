import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  final String hinttext;
  final String text;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?) vald;
  final bool isNumber;
  final bool? obsecuretext;
  final void Function()? onTapIcon;
  const CustomTextForm(
      {super.key,
      required this.hinttext,
      this.onTapIcon,
      this.obsecuretext,
      required this.text,
      required this.iconData,
      required this.mycontroller,
      required this.vald,
      required this.isNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 25),
      child: TextFormField(
        obscureText:
            obsecuretext == null || obsecuretext == false ? false : true,
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: vald,
        controller: mycontroller,
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 15),
            suffixIconColor: const Color.fromARGB(255, 0, 0, 0),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            label: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                text,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: InkWell(
              onTap: onTapIcon,
              child: Icon(
                iconData,
              ),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
              30,
            ))),
      ),
    );
  }
}
