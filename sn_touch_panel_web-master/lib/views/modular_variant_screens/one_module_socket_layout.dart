import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';
import 'package:sn_touch_panel_web/helper/constants_colors.dart';

class OneModuleSocketLayout extends StatelessWidget {
  final String accessoryType;

  const OneModuleSocketLayout({
    Key? key,
    required this.accessoryType,
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
                width: 46,
                height: 93,
                child: accessoryType == 'USB'
                    ? Transform(
                        alignment: Alignment.center,
                        transform: controller.isModuleMirrorOn()
                            ? Matrix4.rotationX(pi)
                            : Matrix4.rotationX(0),
                        child: Image.asset(
                          'assets/images/usb_b.png',
                          width: 46,
                          height: 93,
                          // color: selectedColor,
                        ),
                      )
                    : accessoryType == 'LAN'
                        ? Transform(
                            alignment: Alignment.center,
                            transform: controller.isModuleMirrorOn()
                                ? Matrix4.rotationX(pi)
                                : Matrix4.rotationX(0),
                            child: Image.asset(
                              'assets/images/lan-black.png',
                              width: 46,
                              height: 93,
                              // color: selectedColor,
                            ),
                          )
                        : Image.asset(
                            'assets/images/external_1M.png',
                            width: 46,
                            height: 93,
                            color: selectedColor,
                          ),
                // child: Icon(Icons.usb, size: 30, color: selectedColor),
              ),
            )
          : SizedBox(
              width: 46,
              height: 93,
              child: accessoryType == 'USB'
                  ? Image.asset(
                      'assets/images/usb_b.png',
                      width: 46,
                      height: 93,
                      // color: selectedColor,
                    )
                  : accessoryType == 'LAN'
                      ? Image.asset(
                          'assets/images/lan-black.png',
                          width: 46,
                          height: 93,
                          // color: selectedColor,
                        )
                      : Image.asset(
                          'assets/images/external_1M.png',
                          width: 46,
                          height: 93,
                          color: selectedColor,
                        ),
            );
    });
  }
}
