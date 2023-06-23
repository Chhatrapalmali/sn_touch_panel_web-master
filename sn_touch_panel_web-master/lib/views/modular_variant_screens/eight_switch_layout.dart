import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';
import 'package:sn_touch_panel_web/helper/constant.dart';
import 'package:sn_touch_panel_web/helper/constants_colors.dart';

class EightSwitchLayout extends StatelessWidget {
  final int icon1Index;
  final int icon2Index;
  final int icon3Index;
  final int icon4Index;
  final int icon5Index;
  final int icon6Index;
  final int icon7Index;
  final int icon8Index;
  final int layoutNumber;

  const EightSwitchLayout({
    Key? key,
    required this.icon1Index,
    required this.icon2Index,
    required this.icon3Index,
    required this.icon4Index,
    required this.icon5Index,
    required this.icon6Index,
    required this.icon7Index,
    required this.icon8Index,
    required this.layoutNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<ModuleController>(builder: (controller) {
      Color selectedColor = controller.panelMaterial.value == 'Wood' ||
              controller.panelMaterial.value == 'Marble'
          ? Colors.black
          : (controller.glassColor.value == 'Black' ||
                  controller.glassColor.value == 'Sparkling Blue' ||
                  controller.glassColor.value == 'Golden Grey')
              ? Colors.white
              : greyIconColor;

      return (controller.is8ModuleRotate.value ||
                  controller.is6ModuleRotate.value) &&
              (controller.is8ModuleClick.value ||
                  controller.is6ModuleClick.value)
          ? SizedBox(
              width: 100,
              height: 285,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform(
                    alignment: Alignment.center,
                    transform: controller.isModuleMirrorOn()
                        ? Matrix4.rotationY(pi)
                        : Matrix4.rotationX(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Visibility(
                              visible: controller.panelMaterial.value == 'Wood',
                              child: const Icon(Icons.circle,
                                  size: 6, color: Colors.black),
                            ),
                            Visibility(
                              visible: controller.panelMaterial.value == 'Wood',
                              child: const SizedBox(
                                width: 6,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                controller.changeIconDialog(
                                  screenName: '8S',
                                  switchIcon: 0,
                                  context: context,
                                  layoutNumber: layoutNumber,
                                );
                              },
                              child: SizedBox(
                                width: 18,
                                height: 18,
                                child: icon1Index == 0
                                    ? null
                                    : RotatedBox(
                                        quarterTurns:
                                            controller.isModuleMirrorOn()
                                                ? 2
                                                : 0,
                                        child: Image.asset(
                                          switchIconBlack[icon1Index],
                                          color: selectedColor,
                                        ),
                                      ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                controller.changeIconDialog(
                                  screenName: '8S',
                                  switchIcon: 1,
                                  context: context,
                                  layoutNumber: layoutNumber,
                                );
                              },
                              child: SizedBox(
                                width: 18,
                                height: 18,
                                child: icon2Index == 0
                                    ? null
                                    : RotatedBox(
                                        quarterTurns:
                                            controller.isModuleMirrorOn()
                                                ? 2
                                                : 0,
                                        child: Image.asset(
                                          switchIconBlack[icon2Index],
                                          color: selectedColor,
                                        ),
                                      ),
                              ),
                            ),
                            Visibility(
                              visible: controller.panelMaterial.value == 'Wood',
                              child: const SizedBox(
                                width: 6,
                              ),
                            ),
                            Visibility(
                              visible: controller.panelMaterial.value == 'Wood',
                              child: const Icon(Icons.circle,
                                  size: 6, color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 64),
                  Transform(
                    alignment: Alignment.center,
                    transform: controller.isModuleMirrorOn()
                        ? Matrix4.rotationY(pi)
                        : Matrix4.rotationX(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Visibility(
                              visible: controller.panelMaterial.value == 'Wood',
                              child: const Icon(Icons.circle,
                                  size: 6, color: Colors.black),
                            ),
                            Visibility(
                              visible: controller.panelMaterial.value == 'Wood',
                              child: const SizedBox(
                                width: 6,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                controller.changeIconDialog(
                                  screenName: '8S',
                                  switchIcon: 2,
                                  context: context,
                                  layoutNumber: layoutNumber,
                                );
                              },
                              child: SizedBox(
                                width: 18,
                                height: 18,
                                child: icon3Index == 0
                                    ? null
                                    : RotatedBox(
                                        quarterTurns:
                                            controller.isModuleMirrorOn()
                                                ? 2
                                                : 0,
                                        child: Image.asset(
                                          switchIconBlack[icon3Index],
                                          color: selectedColor,
                                        ),
                                      ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                controller.changeIconDialog(
                                  screenName: '8S',
                                  switchIcon: 3,
                                  context: context,
                                  layoutNumber: layoutNumber,
                                );
                              },
                              child: SizedBox(
                                width: 18,
                                height: 18,
                                child: icon4Index == 0
                                    ? null
                                    : RotatedBox(
                                        quarterTurns:
                                            controller.isModuleMirrorOn()
                                                ? 2
                                                : 0,
                                        child: Image.asset(
                                          switchIconBlack[icon4Index],
                                          color: selectedColor,
                                        ),
                                      ),
                              ),
                            ),
                            Visibility(
                              visible: controller.panelMaterial.value == 'Wood',
                              child: const SizedBox(
                                width: 6,
                              ),
                            ),
                            Visibility(
                              visible: controller.panelMaterial.value == 'Wood',
                              child: const Icon(Icons.circle,
                                  size: 6, color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Visibility(
                    visible: controller.panelMaterial.value != 'Wood' &&
                            controller.panelMaterial.value != 'Marble' ||
                        controller.isIRViewOn.isTrue,
                    replacement: const SizedBox(
                      height: 12.5,
                    ),
                    child: SizedBox(
                      width: 12.5,
                      height: 12.5,
                      child: Image.asset(
                        switchIconBlack[123],
                        color: selectedColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Transform(
                    alignment: Alignment.center,
                    transform: controller.isModuleMirrorOn()
                        ? Matrix4.rotationY(pi)
                        : Matrix4.rotationX(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Visibility(
                              visible: controller.panelMaterial.value == 'Wood',
                              child: const Icon(Icons.circle,
                                  size: 6, color: Colors.black),
                            ),
                            Visibility(
                              visible: controller.panelMaterial.value == 'Wood',
                              child: const SizedBox(
                                width: 6,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                controller.changeIconDialog(
                                  screenName: '8S',
                                  switchIcon: 4,
                                  context: context,
                                  layoutNumber: layoutNumber,
                                );
                              },
                              child: SizedBox(
                                width: 18,
                                height: 18,
                                child: icon5Index == 0
                                    ? null
                                    : RotatedBox(
                                        quarterTurns:
                                            controller.isModuleMirrorOn()
                                                ? 2
                                                : 0,
                                        child: Image.asset(
                                          switchIconBlack[icon5Index],
                                          color: selectedColor,
                                        ),
                                      ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                controller.changeIconDialog(
                                  screenName: '8S',
                                  switchIcon: 5,
                                  context: context,
                                  layoutNumber: layoutNumber,
                                );
                              },
                              child: SizedBox(
                                width: 18,
                                height: 18,
                                child: icon6Index == 0
                                    ? null
                                    : RotatedBox(
                                        quarterTurns:
                                            controller.isModuleMirrorOn()
                                                ? 2
                                                : 0,
                                        child: Image.asset(
                                          switchIconBlack[icon6Index],
                                          color: selectedColor,
                                        ),
                                      ),
                              ),
                            ),
                            Visibility(
                              visible: controller.panelMaterial.value == 'Wood',
                              child: const SizedBox(
                                width: 6,
                              ),
                            ),
                            Visibility(
                              visible: controller.panelMaterial.value == 'Wood',
                              child: const Icon(Icons.circle,
                                  size: 6, color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 64),
                  Transform(
                    alignment: Alignment.center,
                    transform: controller.isModuleMirrorOn()
                        ? Matrix4.rotationY(pi)
                        : Matrix4.rotationX(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Visibility(
                              visible: controller.panelMaterial.value == 'Wood',
                              child: const Icon(Icons.circle,
                                  size: 6, color: Colors.black),
                            ),
                            Visibility(
                              visible: controller.panelMaterial.value == 'Wood',
                              child: const SizedBox(
                                width: 6,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                controller.changeIconDialog(
                                  screenName: '8S',
                                  switchIcon: 6,
                                  context: context,
                                  layoutNumber: layoutNumber,
                                );
                              },
                              child: SizedBox(
                                width: 18,
                                height: 18,
                                child: icon7Index == 0
                                    ? null
                                    : RotatedBox(
                                        quarterTurns:
                                            controller.isModuleMirrorOn()
                                                ? 2
                                                : 0,
                                        child: Image.asset(
                                          switchIconBlack[icon7Index],
                                          color: selectedColor,
                                        ),
                                      ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                controller.changeIconDialog(
                                  screenName: '8S',
                                  switchIcon: 7,
                                  context: context,
                                  layoutNumber: layoutNumber,
                                );
                              },
                              child: SizedBox(
                                width: 18,
                                height: 18,
                                child: icon8Index == 0
                                    ? null
                                    : RotatedBox(
                                        quarterTurns:
                                            controller.isModuleMirrorOn()
                                                ? 2
                                                : 0,
                                        child: Image.asset(
                                          switchIconBlack[icon8Index],
                                          color: selectedColor,
                                        ),
                                      ),
                              ),
                            ),
                            Visibility(
                              visible: controller.panelMaterial.value == 'Wood',
                              child: const SizedBox(
                                width: 6,
                              ),
                            ),
                            Visibility(
                              visible: controller.panelMaterial.value == 'Wood',
                              child: const Icon(Icons.circle,
                                  size: 6, color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : SizedBox(
              width: 285,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Visibility(
                            visible: controller.panelMaterial.value == 'Wood',
                            child: const Icon(Icons.circle,
                                size: 6, color: Colors.black),
                          ),
                          Visibility(
                            visible: controller.panelMaterial.value == 'Wood',
                            child: const SizedBox(
                              height: 6,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              controller.changeIconDialog(
                                screenName: '8S',
                                switchIcon: 0,
                                context: context,
                                layoutNumber: layoutNumber,
                              );
                            },
                            child: SizedBox(
                              width: 18,
                              height: 18,
                              child: icon1Index == 0
                                  ? null
                                  : Image.asset(
                                      switchIconBlack[icon1Index],
                                      color: selectedColor,
                                    ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              controller.changeIconDialog(
                                screenName: '8S',
                                switchIcon: 1,
                                context: context,
                                layoutNumber: layoutNumber,
                              );
                            },
                            child: SizedBox(
                              width: 18,
                              height: 18,
                              child: icon2Index == 0
                                  ? null
                                  : Image.asset(
                                      switchIconBlack[icon2Index],
                                      color: selectedColor,
                                    ),
                            ),
                          ),
                          Visibility(
                            visible: controller.panelMaterial.value == 'Wood',
                            child: const SizedBox(
                              height: 6,
                            ),
                          ),
                          Visibility(
                            visible: controller.panelMaterial.value == 'Wood',
                            child: const Icon(Icons.circle,
                                size: 6, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 64),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Visibility(
                            visible: controller.panelMaterial.value == 'Wood',
                            child: const Icon(Icons.circle,
                                size: 6, color: Colors.black),
                          ),
                          Visibility(
                            visible: controller.panelMaterial.value == 'Wood',
                            child: const SizedBox(
                              height: 6,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              controller.changeIconDialog(
                                screenName: '8S',
                                switchIcon: 2,
                                context: context,
                                layoutNumber: layoutNumber,
                              );
                            },
                            child: SizedBox(
                              width: 18,
                              height: 18,
                              child: icon3Index == 0
                                  ? null
                                  : Image.asset(
                                      switchIconBlack[icon3Index],
                                      color: selectedColor,
                                    ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              controller.changeIconDialog(
                                screenName: '8S',
                                switchIcon: 3,
                                context: context,
                                layoutNumber: layoutNumber,
                              );
                            },
                            child: SizedBox(
                              width: 18,
                              height: 18,
                              child: icon4Index == 0
                                  ? null
                                  : Image.asset(
                                      switchIconBlack[icon4Index],
                                      color: selectedColor,
                                    ),
                            ),
                          ),
                          Visibility(
                            visible: controller.panelMaterial.value == 'Wood',
                            child: const SizedBox(
                              height: 6,
                            ),
                          ),
                          Visibility(
                            visible: controller.panelMaterial.value == 'Wood',
                            child: const Icon(Icons.circle,
                                size: 6, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 26,
                  ),
                  Visibility(
                    visible: controller.panelMaterial.value != 'Wood' &&
                            controller.panelMaterial.value != 'Marble' ||
                        controller.isIRViewOn.isTrue,
                    replacement: const SizedBox(
                      width: 12.5,
                    ),
                    child: SizedBox(
                      width: 12.5,
                      height: 12.5,
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Image.asset(
                          switchIconBlack[123],
                          color: selectedColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 26,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Visibility(
                            visible: controller.panelMaterial.value == 'Wood',
                            child: const Icon(Icons.circle,
                                size: 6, color: Colors.black),
                          ),
                          Visibility(
                            visible: controller.panelMaterial.value == 'Wood',
                            child: const SizedBox(
                              height: 6,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              controller.changeIconDialog(
                                screenName: '8S',
                                switchIcon: 4,
                                context: context,
                                layoutNumber: layoutNumber,
                              );
                            },
                            child: SizedBox(
                              width: 18,
                              height: 18,
                              child: icon5Index == 0
                                  ? null
                                  : Image.asset(
                                      switchIconBlack[icon5Index],
                                      color: selectedColor,
                                    ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              controller.changeIconDialog(
                                screenName: '8S',
                                switchIcon: 5,
                                context: context,
                                layoutNumber: layoutNumber,
                              );
                            },
                            child: SizedBox(
                              width: 18,
                              height: 18,
                              child: icon6Index == 0
                                  ? null
                                  : Image.asset(
                                      switchIconBlack[icon6Index],
                                      color: selectedColor,
                                    ),
                            ),
                          ),
                          Visibility(
                            visible: controller.panelMaterial.value == 'Wood',
                            child: const SizedBox(
                              height: 6,
                            ),
                          ),
                          Visibility(
                            visible: controller.panelMaterial.value == 'Wood',
                            child: const Icon(Icons.circle,
                                size: 6, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 64),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Visibility(
                            visible: controller.panelMaterial.value == 'Wood',
                            child: const Icon(Icons.circle,
                                size: 6, color: Colors.black),
                          ),
                          Visibility(
                            visible: controller.panelMaterial.value == 'Wood',
                            child: const SizedBox(
                              height: 6,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              controller.changeIconDialog(
                                screenName: '8S',
                                switchIcon: 6,
                                context: context,
                                layoutNumber: layoutNumber,
                              );
                            },
                            child: SizedBox(
                              width: 18,
                              height: 18,
                              child: icon7Index == 0
                                  ? null
                                  : Image.asset(
                                      switchIconBlack[icon7Index],
                                      color: selectedColor,
                                    ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              controller.changeIconDialog(
                                screenName: '8S',
                                switchIcon: 7,
                                context: context,
                                layoutNumber: layoutNumber,
                              );
                            },
                            child: SizedBox(
                              width: 18,
                              height: 18,
                              child: icon8Index == 0
                                  ? null
                                  : Image.asset(
                                      switchIconBlack[icon8Index],
                                      color: selectedColor,
                                    ),
                            ),
                          ),
                          Visibility(
                            visible: controller.panelMaterial.value == 'Wood',
                            child: const SizedBox(
                              height: 6,
                            ),
                          ),
                          Visibility(
                            visible: controller.panelMaterial.value == 'Wood',
                            child: const Icon(Icons.circle,
                                size: 6, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
    });
  }
}
