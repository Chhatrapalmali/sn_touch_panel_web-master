import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/helper/size_config.dart';

import '../../controllers/module_controller.dart';

class TouchMaterialMenuPhone extends StatelessWidget {
  const TouchMaterialMenuPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetX<ModuleController>(builder: (menuController) {
      return ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          materialSelection(menuController, context, "Acrylic", ""),
          materialSelection(menuController, context, "Glass", ""),
          materialSelection(
              menuController, context, "Wood", "assets/images/wood_bg.png"),
          materialSelection(
              menuController, context, "Marble", "assets/images/marble.png"),
        ],
      );
    });
  }
}

materialSelection(
    ModuleController menuController, context, String name, String imageAsset) {
  return InkWell(
    onTap: () {
      menuController.panelMaterial.value = name;
      menuController.modularMaterial.value = '';
      menuController.setDefault();
      menuController.setSelectedSize(menuController.getSelectedSize());
    },
    child: Card(
      elevation: menuController.panelMaterial.value == name ? 1 : 0,
      color: menuController.panelMaterial.value == name
          ? Theme.of(context).colorScheme.background
          : Colors.transparent,
      child: SizedBox(
        height: 60,
        width: SizeConfig.screenWidth! * 0.33,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Theme.of(context).colorScheme.onPrimary,
                        width: 1)),
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.black,
                  backgroundImage:
                      imageAsset != "" ? AssetImage(imageAsset) : null,
                ),
              ),
              Text(
                name,
                style: TextStyle(
                  color: menuController.panelMaterial.value == name
                      ? Colors.teal.shade200
                      : Theme.of(context).colorScheme.onPrimary,
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
