import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';
import 'package:sn_touch_panel_web/helper/size_config.dart';

import '../home_screen/components/drawer_list_tile.dart';

class TouchColorMenu extends StatelessWidget {
  const TouchColorMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var menuController = Get.put(MenuController());
    SizeConfig().init(context);
    return GetX<ModuleController>(builder: (menuController) {
      return Drawer(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 3,
        child: ListView(
          children: [
            ExpansionTile(
              initiallyExpanded: true,
              leading: const Icon(Icons.color_lens),
              title: Text(
                'Colors',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText2!.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                DrawerListTile(
                  title: "Black Color",
                  subTitle: '',
                  tileColor: menuController.glassColor.value == 'Black'
                      ? Colors.teal.shade200
                      : Colors.transparent,
                  leading: const CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                  ),
                  press: () {
                    menuController.glassColor.value = 'Black';
                    menuController.getBasicPrising();
                  },
                  trailing: const SizedBox(),
                ),
                DrawerListTile(
                  title: "White Color",
                  subTitle: '',
                  tileColor: menuController.glassColor.value == 'White'
                      ? Colors.teal.shade200
                      : Colors.transparent,
                  leading: const CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                  ),
                  press: () {
                    menuController.glassColor.value = 'White';
                    menuController.getBasicPrising();
                  },
                  trailing: const SizedBox(),
                ),
              ],
            ),
            ExpansionTile(
              initiallyExpanded: false,
              leading: const Icon(Icons.color_lens),
              title: Text(
                'Custom Colors',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText2!.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                DrawerListTile(
                  title: "Sparkling Blue",
                  subTitle: '',
                  tileColor: menuController.glassColor.value == 'Sparkling Blue'
                      ? Colors.teal.shade200
                      : Colors.transparent,
                  leading: const CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage("assets/images/blue.jpg"),
                  ),
                  press: () {
                    menuController.glassColor.value = 'Sparkling Blue';
                    menuController.getBasicPrising();
                  },
                  trailing: const SizedBox(),
                ),
                DrawerListTile(
                  title: "Golden Grey",
                  subTitle: '',
                  tileColor: menuController.glassColor.value == 'Golden Grey'
                      ? Colors.teal.shade200
                      : Colors.transparent,
                  leading: const CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage("assets/images/gold.jpg"),
                  ),
                  press: () {
                    menuController.glassColor.value = 'Golden Grey';
                    menuController.getBasicPrising();
                  },
                  trailing: const SizedBox(),
                ),
                DrawerListTile(
                  title: "Silver Grey",
                  subTitle: '',
                  tileColor: menuController.glassColor.value == 'Silver Grey'
                      ? Colors.teal.shade200
                      : Colors.transparent,
                  leading: const CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage("assets/images/SL.jpg"),
                  ),
                  press: () {
                    menuController.glassColor.value = 'Silver Grey';
                    menuController.getBasicPrising();
                  },
                  trailing: const SizedBox(),
                ),
                DrawerListTile(
                  title: "Baby Pink",
                  subTitle: '',
                  tileColor: menuController.glassColor.value == 'Baby Pink'
                      ? Colors.teal.shade200
                      : Colors.transparent,
                  leading: const CircleAvatar(
                    radius: 15,
                    backgroundColor: Color(0xFFFF8FD9),
                  ),
                  press: () {
                    menuController.glassColor.value = 'Baby Pink';
                    menuController.getBasicPrising();
                  },
                  trailing: const SizedBox(),
                ),
                DrawerListTile(
                  title: "Light Purple",
                  subTitle: '',
                  tileColor: menuController.glassColor.value == 'Light Purple'
                      ? Colors.teal.shade200
                      : Colors.transparent,
                  leading: const CircleAvatar(
                    radius: 15,
                    backgroundColor: Color(0xFFAE9DD4),
                  ),
                  press: () {
                    menuController.glassColor.value = 'Light Purple';
                    menuController.getBasicPrising();
                  },
                  trailing: const SizedBox(),
                ),
                DrawerListTile(
                  title: "Royal Ivory",
                  subTitle: '',
                  tileColor: menuController.glassColor.value == 'Royal Ivory'
                      ? Colors.teal.shade200
                      : Colors.transparent,
                  leading: const CircleAvatar(
                    radius: 15,
                    backgroundColor: Color(0xFFF8DBA3),
                  ),
                  press: () {
                    menuController.glassColor.value = 'Royal Ivory';
                    menuController.getBasicPrising();
                  },
                  trailing: const SizedBox(),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
