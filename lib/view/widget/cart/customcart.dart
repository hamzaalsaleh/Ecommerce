import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:flutter/material.dart';

class CustomCart extends StatelessWidget {
  const CustomCart({
    super.key,
    required this.name,
    required this.price,
    required this.count,
    required this.imagename,
    this.onadd,
    this.onremove,
  });
  final String name;
  final String price;
  final String count;
  final String imagename;
  final void Function()? onadd;
  final void Function()? onremove;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: CachedNetworkImage(
                  filterQuality: FilterQuality.high,
                  height: 100,
                  imageUrl: "${Applink.imageitems}/$imagename")),
          Expanded(
              flex: 2,
              child: ListTile(
                title: Text(
                  name,
                ),
                subtitle: Text(price),
              )),
          Expanded(
              child: Column(
            children: [
              IconButton(onPressed: onadd, icon: Icon(Icons.add)),
              Text(count),
              IconButton(onPressed: onremove, icon: Icon(Icons.remove))
            ],
          )),
        ],
      ),
    );
  }
}
