import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';
import 'package:sn_touch_panel_web/controllers/pdf_controller.dart';
import 'package:sn_touch_panel_web/helper/size_config.dart';
import 'package:sn_touch_panel_web/views/home_screen/components/drawer_list_tile.dart';

class TouchMaterialMenu extends StatelessWidget {
  const TouchMaterialMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pdfController = Get.put(PdfController());
    SizeConfig().init(context);
    return GetX<ModuleController>(builder: (menuController) {
      return Drawer(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 3,
        child: ListView(
          children: [
            if (menuController.isModularViewOn.value)
              DrawerListTile(
                title: "Acrylic",
                subTitle: '',
                tileColor: menuController.modularMaterial.value == 'Acrylic'
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const SizedBox(),
                press: () {
                  menuController.modularMaterial.value = 'Acrylic';
                  menuController.panelMaterial.value = '';
                  menuController.setDefault();
                  menuController
                      .setSelectedSize(menuController.getSelectedSize());
                },
                trailing: const SizedBox(),
              ),
            if (menuController.isModularViewOn.isFalse)
              DrawerListTile(
                title: "Acrylic",
                subTitle: '',
                tileColor: menuController.panelMaterial.value == 'Acrylic'
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const SizedBox(),
                press: () {
                  menuController.panelMaterial.value = 'Acrylic';
                  menuController.modularMaterial.value = '';
                  menuController.setDefault();
                  menuController
                      .setSelectedSize(menuController.getSelectedSize());
                },
                trailing: const SizedBox(),
              ),
            if (menuController.isModularViewOn.isFalse)
              DrawerListTile(
                title: "Glass",
                subTitle: '',
                tileColor: menuController.panelMaterial.value == 'Glass'
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const SizedBox(),
                press: () {
                  menuController.panelMaterial.value = 'Glass';
                  menuController.modularMaterial.value = '';
                  menuController.setDefault();
                  menuController
                      .setSelectedSize(menuController.getSelectedSize());
                },
                trailing: const SizedBox(),
              ),
            if (menuController.isModularViewOn.isFalse)
              DrawerListTile(
                title: "Wood",
                subTitle: '',
                tileColor: menuController.panelMaterial.value == 'Wood'
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const SizedBox(),
                press: () {
                  menuController.panelMaterial.value = 'Wood';
                  menuController.modularMaterial.value = '';
                  menuController.setDefault();
                  menuController
                      .setSelectedSize(menuController.getSelectedSize());
                },
                trailing: const SizedBox(),
              ),
            if (menuController.isModularViewOn.isFalse)
              DrawerListTile(
                title: "Marble",
                subTitle: '',
                tileColor: menuController.panelMaterial.value == 'Marble'
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const SizedBox(),
                press: () {
                  menuController.panelMaterial.value = 'Marble';
                  menuController.modularMaterial.value = '';
                  menuController.setDefault();
                  menuController
                      .setSelectedSize(menuController.getSelectedSize());
                },
                trailing: const SizedBox(),
              ),
          ],
        ),
      );
    });
  }
}
