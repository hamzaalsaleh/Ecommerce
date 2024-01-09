import 'package:flutter/material.dart';

class PriceAndCount extends StatelessWidget {
  const PriceAndCount(
      {super.key,
      required this.onremove,
      required this.onadd,
      required this.count,
      required this.price});
  final void Function()? onremove;
  final void Function()? onadd;
  final String price;
  final String count;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            IconButton(onPressed: onadd, icon: const Icon(Icons.add)),
            Container(
              alignment: Alignment.center,
              height: 30,
              width: 50,
              decoration: BoxDecoration(border: Border.all()),
              child: Text(count,
                  style: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold)),
            ),
            IconButton(onPressed: onremove, icon: const Icon(Icons.remove)),
          ],
        ),
        const Spacer(),
        Text(
          "$price\$",
          style: const TextStyle(fontSize: 20, color: Colors.blue),
        )
      ],
    );
  }
}
