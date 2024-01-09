import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar(
      {super.key,
      required this.title,
      required this.onPressedsearch,
      required this.onPressedfavorite,
      this.onChanged,
      required this.mycontroller});
  final String title;

  final void Function()? onPressedsearch;
  final void Function()? onPressedfavorite;
  final void Function(String)? onChanged;
  final TextEditingController mycontroller;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
            controller: mycontroller,
            onChanged: onChanged,
            decoration: InputDecoration(
                hintText: title,
                hintStyle: const TextStyle(fontSize: 20),
                prefixIcon: IconButton(
                    icon: const Icon(Icons.search), onPressed: onPressedsearch),
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20)),
                fillColor: Colors.grey[200]),
          )),
          const SizedBox(
            width: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
            ),
            child: IconButton(
                onPressed: onPressedfavorite,
                icon: const Icon(Icons.favorite_border_outlined)),
          )
        ],
      ),
    );
  }
}
