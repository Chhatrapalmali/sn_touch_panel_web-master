import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';
import 'package:sn_touch_panel_web/helper/constants_colors.dart';

class SocketLayout extends StatelessWidget {
  final int imageIndex;

  const SocketLayout({
    Key? key,
    required this.imageIndex,
  }) : super(key: key);

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

      return (controller.is8ModuleRotate.value ||
                  controller.is4ModuleRotate.value ||
                  controller.is3ModuleRotate.value ||
                  controller.is6ModuleRotate.value) &&
              (controller.is8ModuleClick.value ||
                  controller.is4ModuleClick.value ||
                  controller.is6ModuleClick.value ||
                  controller.is3ModuleClick.value)
          ? RotatedBox(
              quarterTurns: 1,
              child: SizedBox(
                width: 93,
                height: 93,
                child: Center(
                  child: Transform(
                    alignment: Alignment.center,
                    transform: controller.isModuleMirrorOn()
                        ? Matrix4.rotationX(pi)
                        : Matrix4.rotationX(0),
                    child: Image.asset(
                      imageIndex == 0
                          ? 'assets/images/AH1.png'
                          : imageIndex == 1
                              ? 'assets/images/AZ1.png'
                              : imageIndex == 2
                                  ? 'assets/images/SKT2.png'
                                  : 'assets/images/Y1.png',
                      color: selectedColor,
                      width: 61,
                      height: 65,
                    ),
                  ),
                ),
              ),
            )
          : SizedBox(
              width: 93,
              height: 93,
              child: Center(
                child: Image.asset(
                  imageIndex == 0
                      ? 'assets/images/AH1.png'
                      : imageIndex == 1
                          ? 'assets/images/AZ1.png'
                          : imageIndex == 2
                              ? 'assets/images/SKT2.png'
                              : 'assets/images/Y1.png',
                  color: selectedColor,
                  width: 61,
                  height: 65,
                ),
              ),
            );
    });
  }
}
