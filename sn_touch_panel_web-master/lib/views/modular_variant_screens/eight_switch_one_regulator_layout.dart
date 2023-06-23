import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';
import 'package:sn_touch_panel_web/helper/constant.dart';
import 'package:sn_touch_panel_web/helper/constants_colors.dart';

class EightSwitchOneRegulatorLayout extends StatelessWidget {
  final int icon1Index;
  final int icon2Index;
  final int icon3Index;
  final int icon4Index;
  final int icon5Index;
  final int icon6Index;
  final int icon7Index;
  final int icon8Index;
  final int layoutNumber;

  const EightSwitchOneRegulatorLayout({
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
                                  screenName: '8S1R',
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
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                controller.changeIconDialog(
                                  screenName: '8S1R',
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
                  const SizedBox(height: 43),
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
                                  screenName: '8S1R',
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
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                controller.changeIconDialog(
                                  screenName: '8S1R',
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
                  const SizedBox(height: 43),
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
                                  screenName: '8S1R',
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
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                controller.changeIconDialog(
                                  screenName: '8S1R',
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
                    height: 15.25,
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
                    height: 15.25,
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
                                  screenName: '8S1R',
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
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                controller.changeIconDialog(
                                  screenName: '8S1R',
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
                  const SizedBox(height: 25),
                  Transform(
                    alignment: Alignment.center,
                    transform: controller.isModuleMirrorOn()
                        ? Matrix4.rotationY(pi)
                        : Matrix4.rotationX(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                            radius: 2.3, backgroundColor: selectedColor),
                        const SizedBox(width: 8.33),
                        CircleAvatar(
                            radius: 2.8, backgroundColor: selectedColor),
                        const SizedBox(width: 8.33),
                        CircleAvatar(
                            radius: 3.3, backgroundColor: selectedColor),
                        const SizedBox(width: 8.33),
                        CircleAvatar(
                            radius: 3.8, backgroundColor: selectedColor),
                        const SizedBox(width: 8.33),
                        CircleAvatar(
                            radius: 4.3, backgroundColor: selectedColor),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18.75),
                  Row(
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
                          RotatedBox(
                            quarterTurns: 1,
                            child: Image.asset(
                              'assets/images/down1.png',
                              color: selectedColor,
                              width: 11.78,
                              height: 9.41,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          RotatedBox(
                            quarterTurns: 1,
                            child: Image.asset(
                              'assets/images/up1.png',
                              color: selectedColor,
                              width: 11.78,
                              height: 9.41,
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
                                screenName: '8S1R',
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
                        children: [
                          InkWell(
                            onTap: () {
                              controller.changeIconDialog(
                                screenName: '8S1R',
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
                  const SizedBox(width: 43),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
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
                                screenName: '8S1R',
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
                        children: [
                          InkWell(
                            onTap: () {
                              controller.changeIconDialog(
                                screenName: '8S1R',
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
                  const SizedBox(width: 43),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
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
                                screenName: '8S1R',
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
                        children: [
                          InkWell(
                            onTap: () {
                              controller.changeIconDialog(
                                screenName: '8S1R',
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
                  const SizedBox(
                    width: 15.25,
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
                    width: 15.25,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
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
                                screenName: '8S1R',
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
                        children: [
                          InkWell(
                            onTap: () {
                              controller.changeIconDialog(
                                screenName: '8S1R',
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
                  const SizedBox(width: 25),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(radius: 4.3, backgroundColor: selectedColor),
                      const SizedBox(height: 8.33),
                      CircleAvatar(radius: 3.8, backgroundColor: selectedColor),
                      const SizedBox(height: 8.33),
                      CircleAvatar(radius: 3.3, backgroundColor: selectedColor),
                      const SizedBox(height: 8.33),
                      CircleAvatar(radius: 2.8, backgroundColor: selectedColor),
                      const SizedBox(height: 8.33),
                      CircleAvatar(radius: 2.3, backgroundColor: selectedColor),
                    ],
                  ),
                  const SizedBox(width: 18.75),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
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
                          Image.asset(
                            'assets/images/up1.png',
                            color: selectedColor,
                            width: 11.78,
                            height: 9.41,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/down1.png',
                            color: selectedColor,
                            width: 11.78,
                            height: 9.41,
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
