import 'package:ecommerce/controller/settings_controller.dart';
import 'package:ecommerce/core/constant/appcolor.dart';
import 'package:ecommerce/core/constant/imageurl.dart';
import 'package:ecommerce/core/constant/routename.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsController controller = Get.put(SettingsController());
    return ListView(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(100)),
                color: AppColor.hPrimaryColor,
              ),
              height: Get.width / 2,
            ),
            Positioned(
                top: Get.width / 2.5,
                child: Container(
                  height: 120,
                  width: 120,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: AppColor.hsecondryColor),
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(Assetimage.hamza),
                  ),
                ))
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                  title: Text("Disable Notifications"),
                  trailing: Switch(
                      activeColor: AppColor.hsecondryColor,
                      value: true,
                      onChanged: (val) {})),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Approute.addressview);
                },
                child: ListTile(
                  title: Text("Adress"),
                  trailing: Icon(
                    Icons.location_on_outlined,
                    color: AppColor.hsecondryColor,
                  ),
                ),
              ),
              ListTile(
                title: Text("About Us"),
                trailing: Icon(
                  Icons.info_outlined,
                  color: AppColor.hsecondryColor,
                ),
              ),
              const ListTile(
                title: Text("Contact Us"),
                trailing: Icon(
                  Icons.phone_callback_outlined,
                  color: AppColor.hsecondryColor,
                ),
              ),
              ListTile(
                onTap: () {
                  controller.logout();
                },
                title: Text("Logout"),
                trailing: Icon(
                  Icons.logout_outlined,
                  color: AppColor.hsecondryColor,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
