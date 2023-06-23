import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/module_controller.dart';
import '../../helper/constants_colors.dart';

class OneBellLayout extends StatelessWidget {
  const OneBellLayout({Key? key}) : super(key: key);

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: controller.panelMaterial.value == 'Wood',
              child: const Icon(Icons.circle, size: 6, color: Colors.black),
            ),
            Visibility(
              visible: controller.panelMaterial.value == 'Wood',
              child: const SizedBox(
                height: 6,
              ),
            ),
            Center(
              child: Transform(
                alignment: Alignment.center,
                transform: controller.isModuleMirrorOn()
                    ? Matrix4.rotationX(pi)
                    : Matrix4.rotationX(0),
                child: Image.asset(
                  'assets/images/W.png',
                  color: selectedColor,
                  width: 46,
                  height: 46,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
