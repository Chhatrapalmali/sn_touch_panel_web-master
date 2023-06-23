import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';
import 'package:sn_touch_panel_web/helper/constant.dart';
import 'package:sn_touch_panel_web/helper/constants_colors.dart';

class FourSwitchLayout extends StatelessWidget {
  final int icon1Index;
  final int icon2Index;
  final int icon3Index;
  final int icon4Index;
  final int layoutNumber;

  const FourSwitchLayout({
    Key? key,
    required this.icon1Index,
    required this.icon2Index,
    required this.icon3Index,
    required this.icon4Index,
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
      return SizedBox(
        width: 100,
        height: 100,
        child: (controller.is8ModuleRotate.value ||
                    controller.is4ModuleRotate.value ||
                    controller.is3ModuleRotate.value ||
                    controller.is6ModuleRotate.value) &&
                (controller.is8ModuleClick.value ||
                    controller.is4ModuleClick.value ||
                    controller.is6ModuleClick.value ||
                    controller.is3ModuleClick.value)
            ? Transform(
                alignment: Alignment.center,
                transform: controller.isModuleMirrorOn()
                    ? Matrix4.rotationY(pi)
                    : Matrix4.rotationX(0),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Visibility(
                                  visible:
                                      controller.panelMaterial.value == 'Wood',
                                  child: const Icon(Icons.circle,
                                      size: 6, color: Colors.black),
                                ),
                                Visibility(
                                  visible:
                                      controller.panelMaterial.value == 'Wood',
                                  child: const SizedBox(
                                    width: 6,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.changeIconDialog(
                                      screenName: '4S',
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
                                      screenName: '4S',
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
                                  visible:
                                      controller.panelMaterial.value == 'Wood',
                                  child: const SizedBox(
                                    width: 6,
                                  ),
                                ),
                                Visibility(
                                  visible:
                                      controller.panelMaterial.value == 'Wood',
                                  child: const Icon(Icons.circle,
                                      size: 6, color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 43,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Visibility(
                                  visible:
                                      controller.panelMaterial.value == 'Wood',
                                  child: const Icon(Icons.circle,
                                      size: 6, color: Colors.black),
                                ),
                                Visibility(
                                  visible:
                                      controller.panelMaterial.value == 'Wood',
                                  child: const SizedBox(
                                    width: 6,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.changeIconDialog(
                                      screenName: '4S',
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
                                      screenName: '4S',
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
                                  visible:
                                      controller.panelMaterial.value == 'Wood',
                                  child: const SizedBox(
                                    width: 6,
                                  ),
                                ),
                                Visibility(
                                  visible:
                                      controller.panelMaterial.value == 'Wood',
                                  child: const Icon(Icons.circle,
                                      size: 6, color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: Visibility(
                        visible: controller.panelMaterial.value != 'Wood' &&
                                controller.panelMaterial.value != 'Marble' ||
                            controller.isIRViewOn.isTrue,
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
                    ),
                  ],
                ),
              )
            : Stack(
                children: [
                  Visibility(
                    visible: controller.panelMaterial.value != 'Wood' &&
                            controller.panelMaterial.value != 'Marble' ||
                        controller.isIRViewOn.isTrue,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: 12.5,
                        height: 12.5,
                        child: Image.asset(
                          switchIconBlack[123],
                          color: selectedColor,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Visibility(
                                visible:
                                    controller.panelMaterial.value == 'Wood',
                                child: const Icon(Icons.circle,
                                    size: 6, color: Colors.black),
                              ),
                              Visibility(
                                visible:
                                    controller.panelMaterial.value == 'Wood',
                                child: const SizedBox(
                                  height: 6,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  controller.changeIconDialog(
                                    screenName: '4S',
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
                                    screenName: '4S',
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
                                visible:
                                    controller.panelMaterial.value == 'Wood',
                                child: const SizedBox(
                                  height: 6,
                                ),
                              ),
                              Visibility(
                                visible:
                                    controller.panelMaterial.value == 'Wood',
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Visibility(
                                visible:
                                    controller.panelMaterial.value == 'Wood',
                                child: const Icon(Icons.circle,
                                    size: 6, color: Colors.black),
                              ),
                              Visibility(
                                visible:
                                    controller.panelMaterial.value == 'Wood',
                                child: const SizedBox(
                                  height: 6,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  controller.changeIconDialog(
                                    screenName: '4S',
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
                                    screenName: '4S',
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
                                visible:
                                    controller.panelMaterial.value == 'Wood',
                                child: const SizedBox(
                                  height: 6,
                                ),
                              ),
                              Visibility(
                                visible:
                                    controller.panelMaterial.value == 'Wood',
                                child: const Icon(Icons.circle,
                                    size: 6, color: Colors.black),
                              ),
                            ],
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
