import 'package:ecommerce/controller/homescreencontroller.dart';
import 'package:ecommerce/view/widget/home/custombottomappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CustomBottomAppBarHome extends StatelessWidget {
  const CustomBottomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => BottomAppBar(
        height: 70,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          children: [
            ...List.generate(controller.listpage.length + 1, (index) {
              int i = index > 2 ? index - 1 : index;
              return index == 2
                  ? const Spacer()
                  : CustomBottomAppBar(
                      onpressed: () {
                        controller.changepage(i);
                      },
                      text: controller.titlepagename[i]['title'],
                      iconData: controller.titlepagename[i]['icon'],
                      active: controller.currentpage == i ? true : false,
                    );
            }),
          ],
        ),
      ),
    );
  }
}
