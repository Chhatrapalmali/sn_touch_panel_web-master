import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/module_controller.dart';
import '../../helper/size_config.dart';

class TouchModuleMenuPhone extends StatelessWidget {
  const TouchModuleMenuPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetX<ModuleController>(builder: (menuController) {
      return Container(
        color: Theme.of(context).colorScheme.background,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            automationSelection(menuController, context, "Wifi & Remote"),
            VerticalDivider(
              color: Theme.of(context).colorScheme.onPrimary,
              width: 1,
            ),
            automationSelection(menuController, context, "Remote"),
            VerticalDivider(
              color: Theme.of(context).colorScheme.onPrimary,
              width: 1,
            ),
            automationSelection(menuController, context, "Touch Interface"),
            VerticalDivider(
              color: Theme.of(context).colorScheme.onPrimary,
              width: 1,
            ),
            automationSelection(menuController, context, "Dummy"),
            Visibility(
              visible: menuController.isModularViewOn.isFalse,
              child: VerticalDivider(
                color: Theme.of(context).colorScheme.onPrimary,
                width: 1,
              ),
            ),
            Visibility(
              visible: menuController.isModularViewOn.isFalse &&
                  menuController.panelMaterial.value != "Glass",
              child:
                  automationSelection(menuController, context, "Accessories"),
            )
          ],
        ),
      );
    });
  }
}

automationSelection(ModuleController menuController, context, String name) {
  return InkWell(
    onTap: () {
      if (menuController.automation.value == name) {
        menuController.automation.value = "";
        menuController.variant.value = "";
      } else {
        menuController.automation.value = name;
        menuController.variant.value = "";
      }
      if (name == "Accessories") {
        menuController.variant.value = '';
      }
      if (name == "Dummy") {
        menuController.tiAutomation.value = "";
      }
    },
    child: Container(
      color: menuController.automation.value == name
          ? Theme.of(context).colorScheme.background
          : Colors.transparent,
      child: SizedBox(
        height: 60,
        width: SizeConfig.screenWidth! * 0.33,
        child: Center(
          child: Text(
            name,
            style: TextStyle(
                color: menuController.automation.value == name
                    ? Colors.teal
                    : Theme.of(context).colorScheme.onPrimary,
                fontWeight: menuController.automation.value == name
                    ? FontWeight.bold
                    : FontWeight.normal),
          ),
        ),
      ),
    ),
  );
}
