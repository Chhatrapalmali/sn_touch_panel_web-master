import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/module_controller.dart';
import '../../helper/constants_colors.dart';

class SixteenASocket extends StatelessWidget {
  const SixteenASocket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<ModuleController>(builder: (controller) {
      Color selectedColor;
      if (controller.panelMaterial.value == 'Wood' ||
          controller.panelMaterial.value == 'Marble') {
        selectedColor = Colors.black;
      } else {
        selectedColor = (controller.glassColor.value == 'Black' ||
                controller.glassColor.value == 'Sparkling Blue' ||
                controller.glassColor.value == 'Golden Grey')
            ? Colors.white
            : greyIconColor;
      }

      return SizedBox(
          width: 93,
          height: 93,
          child: Container(
            color: selectedColor,
          ));
    });
  }
}
