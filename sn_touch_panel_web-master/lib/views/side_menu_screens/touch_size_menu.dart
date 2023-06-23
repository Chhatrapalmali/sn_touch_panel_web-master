import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';
import 'package:sn_touch_panel_web/helper/size_config.dart';

import '../home_screen/components/drawer_list_tile.dart';

class TouchSizeMenu extends StatelessWidget {
  const TouchSizeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetX<ModuleController>(builder: (menuController) {
      int count = menuController.countModulesInArray('', 0);
      return Drawer(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 3,
        child: ListView(
          children: [
            DrawerListTile(
              title: "2 Module",
              subTitle: '',
              leading: const Icon(Icons.view_module),
              press: () {
                menuController.is2ModuleClick.value = true;
                menuController.is3ModuleClick.value = false;
                menuController.is4ModuleClick.value = false;
                menuController.is6ModuleClick.value = false;
                menuController.is8ModuleClick.value = false;
                menuController.is8Module2Click.value = false;
                menuController.is12ModuleClick.value = false;
                menuController.is16ModuleClick.value = false;
                menuController.is18ModuleClick.value = false;
                if (count == 0) {
                  menuController.setDefault();
                }
                menuController.isWatermarkOn.value = true;
                menuController.widgetList.value = List.generate(
                    2,
                    (_) => const SizedBox(
                          height: 93,
                          width: 46,
                        ));
                menuController.widgetNameList.value =
                    List.generate(2, (_) => "");
                menuController.automationList.value =
                    List.generate(2, (_) => "");
                menuController.switchIndexList.value =
                    List.generate(2, (_) => []);
              },
              trailing: const SizedBox(),
              tileColor: menuController.is2ModuleClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
            ),
            DrawerListTile(
              title: "3 Module",
              subTitle: '',
              leading: const Icon(Icons.view_module),
              press: () {
                menuController.is2ModuleClick.value = false;
                menuController.is3ModuleClick.value = true;
                menuController.is4ModuleClick.value = false;
                menuController.is6ModuleClick.value = false;
                menuController.is8ModuleClick.value = false;
                menuController.is8Module2Click.value = false;
                menuController.is12ModuleClick.value = false;
                menuController.is16ModuleClick.value = false;
                menuController.is18ModuleClick.value = false;
                if (count == 0) {
                  menuController.setDefault();
                }
                menuController.isWatermarkOn.value = true;
                menuController.widgetList.value = List.generate(
                    3,
                    (_) => const SizedBox(
                          height: 93,
                          width: 46,
                        ));
                menuController.widgetNameList.value =
                    List.generate(3, (_) => "");
                menuController.automationList.value =
                    List.generate(3, (_) => "");
                menuController.switchIndexList.value =
                    List.generate(3, (_) => []);
              },
              trailing: const SizedBox(),
              tileColor: menuController.is3ModuleClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
            ),
            DrawerListTile(
              title: "4 Module",
              subTitle: '',
              leading: const Icon(Icons.view_module),
              tileColor: menuController.is4ModuleClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              press: () {
                menuController.is2ModuleClick.value = false;
                menuController.is3ModuleClick.value = false;
                menuController.is4ModuleClick.value = true;
                menuController.is6ModuleClick.value = false;
                menuController.is8ModuleClick.value = false;
                menuController.is8Module2Click.value = false;
                menuController.is12ModuleClick.value = false;
                menuController.is16ModuleClick.value = false;
                menuController.is18ModuleClick.value = false;
                if (count == 0) {
                  menuController.setDefault();
                }
                menuController.isWatermarkOn.value = true;
                menuController.widgetList.value = List.generate(
                    4,
                    (_) => const SizedBox(
                          height: 93,
                          width: 46,
                        ));
                menuController.widgetNameList.value =
                    List.generate(4, (_) => "");
                menuController.automationList.value =
                    List.generate(4, (_) => "");
                menuController.switchIndexList.value =
                    List.generate(4, (_) => []);
              },
              trailing: const SizedBox(),
            ),
            DrawerListTile(
              title: "6 Module",
              subTitle: '',
              leading: const Icon(Icons.view_module),
              tileColor: menuController.is6ModuleClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              press: () {
                menuController.is2ModuleClick.value = false;
                menuController.is3ModuleClick.value = false;
                menuController.is4ModuleClick.value = false;
                menuController.is6ModuleClick.value = true;
                menuController.is8ModuleClick.value = false;
                menuController.is8Module2Click.value = false;
                menuController.is12ModuleClick.value = false;
                menuController.is16ModuleClick.value = false;
                menuController.is18ModuleClick.value = false;
                if (count == 0) {
                  menuController.setDefault();
                }
                menuController.isWatermarkOn.value = true;
                menuController.widgetList.value = List.generate(
                    6,
                    (_) => const SizedBox(
                          height: 93,
                          width: 46,
                        ));
                menuController.widgetNameList.value =
                    List.generate(6, (_) => "");
                menuController.automationList.value =
                    List.generate(6, (_) => "");
                menuController.switchIndexList.value =
                    List.generate(6, (_) => []);
              },
              trailing: const SizedBox(),
            ),
            DrawerListTile(
              title: "8 Module",
              subTitle: 'Horizontal',
              leading: const Icon(Icons.view_module),
              tileColor: menuController.is8ModuleClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              press: () {
                menuController.is2ModuleClick.value = false;
                menuController.is3ModuleClick.value = false;
                menuController.is4ModuleClick.value = false;
                menuController.is6ModuleClick.value = false;
                menuController.is8ModuleClick.value = true;
                menuController.is8Module2Click.value = false;
                menuController.is12ModuleClick.value = false;
                menuController.is16ModuleClick.value = false;
                menuController.is18ModuleClick.value = false;
                if (count == 0) {
                  menuController.setDefault();
                }
                menuController.isWatermarkOn.value = true;
                menuController.widgetList.value = List.generate(
                    8,
                    (_) => const SizedBox(
                          height: 93,
                          width: 46,
                        ));
                menuController.widgetNameList.value =
                    List.generate(8, (_) => "");
                menuController.automationList.value =
                    List.generate(8, (_) => "");
                menuController.switchIndexList.value =
                    List.generate(8, (_) => []);
              },
              trailing: const SizedBox(),
            ),
            DrawerListTile(
              title: "8 Module",
              subTitle: 'Square',
              leading: const Icon(Icons.view_module),
              tileColor: menuController.is8Module2Click.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              press: () {
                menuController.is2ModuleClick.value = false;
                menuController.is3ModuleClick.value = false;
                menuController.is4ModuleClick.value = false;
                menuController.is6ModuleClick.value = false;
                menuController.is8ModuleClick.value = false;
                menuController.is8Module2Click.value = true;
                menuController.is12ModuleClick.value = false;
                menuController.is16ModuleClick.value = false;
                menuController.is18ModuleClick.value = false;
                if (count == 0) {
                  menuController.setDefault();
                }
                menuController.isWatermarkOn.value = false;
                menuController.widgetList.value = List.generate(
                    4,
                    (_) => const SizedBox(
                          height: 93,
                          width: 46,
                        ));
                menuController.widgetList2.value = List.generate(
                    4,
                    (_) => const SizedBox(
                          height: 93,
                          width: 46,
                        ));
                menuController.widgetNameList.value =
                    List.generate(4, (_) => "");
                menuController.switchIndexList.value =
                    List.generate(4, (_) => []);
                menuController.widgetNameList2.value =
                    List.generate(4, (_) => "");
                menuController.switchIndexList2.value =
                    List.generate(4, (_) => []);
                menuController.automationList.value =
                    List.generate(4, (_) => "");
                menuController.automationList2.value =
                    List.generate(4, (_) => "");
              },
              trailing: const SizedBox(),
            ),
            DrawerListTile(
              title: "12 Module",
              subTitle: '',
              leading: const Icon(Icons.view_module),
              tileColor: menuController.is12ModuleClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              press: () {
                menuController.is2ModuleClick.value = false;
                menuController.is3ModuleClick.value = false;
                menuController.is4ModuleClick.value = false;
                menuController.is6ModuleClick.value = false;
                menuController.is8ModuleClick.value = false;
                menuController.is8Module2Click.value = false;
                menuController.is12ModuleClick.value = true;
                menuController.is16ModuleClick.value = false;
                menuController.is18ModuleClick.value = false;
                if (count == 0) {
                  menuController.setDefault();
                }
                menuController.isWatermarkOn.value = false;
                menuController.widgetList.value = List.generate(
                    6,
                    (_) => const SizedBox(
                          height: 93,
                          width: 46,
                        ));
                menuController.widgetList2.value = List.generate(
                    6,
                    (_) => const SizedBox(
                          height: 93,
                          width: 46,
                        ));
                menuController.widgetNameList.value =
                    List.generate(6, (_) => "");
                menuController.switchIndexList.value =
                    List.generate(6, (_) => []);
                menuController.widgetNameList2.value =
                    List.generate(6, (_) => "");
                menuController.switchIndexList2.value =
                    List.generate(6, (_) => []);
                menuController.automationList.value =
                    List.generate(6, (_) => "");
                menuController.automationList2.value =
                    List.generate(6, (_) => "");
              },
              trailing: const SizedBox(),
            ),
            DrawerListTile(
              title: "16 Module",
              subTitle: '',
              leading: const Icon(Icons.view_module),
              tileColor: menuController.is16ModuleClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              press: () {
                menuController.is2ModuleClick.value = false;
                menuController.is3ModuleClick.value = false;
                menuController.is4ModuleClick.value = false;
                menuController.is6ModuleClick.value = false;
                menuController.is8ModuleClick.value = false;
                menuController.is8Module2Click.value = false;
                menuController.is12ModuleClick.value = false;
                menuController.is16ModuleClick.value = true;
                menuController.is18ModuleClick.value = false;
                if (count == 0) {
                  menuController.setDefault();
                }
                menuController.isWatermarkOn.value = false;
                menuController.widgetList.value = List.generate(
                    8,
                    (_) => const SizedBox(
                          height: 93,
                          width: 46,
                        ));
                menuController.widgetList2.value = List.generate(
                    8,
                    (_) => const SizedBox(
                          height: 93,
                          width: 46,
                        ));
                menuController.widgetNameList.value =
                    List.generate(8, (_) => "");
                menuController.switchIndexList.value =
                    List.generate(8, (_) => []);
                menuController.widgetNameList2.value =
                    List.generate(8, (_) => "");
                menuController.switchIndexList2.value =
                    List.generate(8, (_) => []);
                menuController.automationList.value =
                    List.generate(8, (_) => "");
                menuController.automationList2.value =
                    List.generate(8, (_) => "");
              },
              trailing: const SizedBox(),
            ),
            DrawerListTile(
              title: "18 Module",
              subTitle: '',
              leading: const Icon(Icons.view_module),
              tileColor: menuController.is18ModuleClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              press: () {
                menuController.is2ModuleClick.value = false;
                menuController.is3ModuleClick.value = false;
                menuController.is4ModuleClick.value = false;
                menuController.is6ModuleClick.value = false;
                menuController.is8ModuleClick.value = false;
                menuController.is8Module2Click.value = false;
                menuController.is12ModuleClick.value = false;
                menuController.is16ModuleClick.value = false;
                menuController.is18ModuleClick.value = true;
                if (count == 0) {
                  menuController.setDefault();
                }
                menuController.isWatermarkOn.value = false;
                menuController.widgetList.value = List.generate(
                    6,
                    (_) => const SizedBox(
                          height: 93,
                          width: 46,
                        ));
                menuController.widgetList2.value = List.generate(
                    6,
                    (_) => const SizedBox(
                          height: 93,
                          width: 46,
                        ));
                menuController.widgetList3.value = List.generate(
                    6,
                    (_) => const SizedBox(
                          height: 93,
                          width: 46,
                        ));
                menuController.widgetNameList.value =
                    List.generate(6, (_) => "");
                menuController.switchIndexList.value =
                    List.generate(6, (_) => []);
                menuController.widgetNameList2.value =
                    List.generate(6, (_) => "");
                menuController.switchIndexList2.value =
                    List.generate(6, (_) => []);
                menuController.widgetNameList3.value =
                    List.generate(6, (_) => "");
                menuController.switchIndexList3.value =
                    List.generate(6, (_) => []);
                menuController.automationList.value =
                    List.generate(6, (_) => "");
                menuController.automationList2.value =
                    List.generate(6, (_) => "");
                menuController.automationList3.value =
                    List.generate(6, (_) => "");
              },
              trailing: const SizedBox(),
            ),
          ],
        ),
      );
    });
  }
}
