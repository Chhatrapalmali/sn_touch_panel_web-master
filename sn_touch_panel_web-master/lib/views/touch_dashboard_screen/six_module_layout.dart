import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';
import 'package:sn_touch_panel_web/helper/constants_colors.dart';

import '../../helper/proxy_detector.dart';

class SixModuleLayout extends StatelessWidget {
  final int layoutNumber;

  const SixModuleLayout({
    Key? key,
    required this.layoutNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<ModuleController>(builder: (controller) {
      // debugPrint('layoutNumber: $layoutNumber');
      Color innerFrameColor = controller.glassColor.value == 'White'
          ? greyIconColor
          : controller.glassColor.value == 'Grey'
              ? Colors.white
              : Colors.grey;
      Color outerFrameColor = controller.glassColor.value == 'White'
          ? Colors.white
          : controller.glassColor.value == 'Grey'
              ? greyIconColor
              : Colors.black;
      List<Color> gradientGlass = controller.glassColor.value == 'White'
          ? whiteTouchGradient
          : controller.glassColor.value == 'Light Purple'
              ? purpleTouchGradient
              : controller.glassColor.value == 'Baby Pink'
                  ? pinkTouchGradient
                  : controller.glassColor.value == 'Royal Ivory'
                      ? ivoryTouchGradient
                      : controller.glassColor.value == 'Grey'
                          ? greyTouchGradient
                          : blackTouchGradient;
      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadowColor: Colors.black,
        elevation: 12,
        child: controller.is6ModuleRotate.value &&
                controller.is6ModuleClick.value
            ? Container(
                width: 200,
                height: 504.16,
                decoration: BoxDecoration(
                  // border: Border.all(
                  //   color: outerFrameColor,
                  //   width: 1.5,
                  // ),
                  borderRadius: BorderRadius.circular(8),
                  image: controller.panelMaterial.value == 'Wood'
                      ? const DecorationImage(
                          image: AssetImage('assets/images/wood_bg.png'),
                          fit: BoxFit.fill,
                        )
                      : controller.panelMaterial.value == 'Marble'
                          ? const DecorationImage(
                              image: AssetImage('assets/images/marble.png'),
                              fit: BoxFit.fill,
                            )
                          : controller.glassColor.value == "Sparkling Blue"
                              ? const DecorationImage(
                                  image: AssetImage('assets/images/blue.jpg'),
                                  fit: BoxFit.fill,
                                )
                              : controller.glassColor.value == 'Silver Grey'
                                  ? const DecorationImage(
                                      image: AssetImage('assets/images/SL.jpg'),
                                      fit: BoxFit.fill,
                                    )
                                  : controller.glassColor.value == "Golden Grey"
                                      ? const DecorationImage(
                                          image: AssetImage(
                                              'assets/images/gold.jpg'),
                                          fit: BoxFit.fill,
                                        )
                                      : null,
                  gradient: LinearGradient(
                    colors: gradientGlass,
                  ),
                ),
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 310,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: controller.isModularViewOn.value
                              ? innerFrameColor
                              : Colors.transparent,
                          width: 1.5,
                        ),
                      ),
                      child: controller.widgetList.isEmpty
                          ? const SizedBox()
                          : Center(
                              child: ReorderableListView(
                                  proxyDecorator: proxyDecorator,
                                  buildDefaultDragHandles: false,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  onReorder: (int oldIndex, int newIndex) {
                                    controller.updateWidgetPosition(
                                        newIndex, oldIndex, 1);
                                  },
                                  children: [
                                    for (int index = 0;
                                        index < controller.widgetList.length;
                                        index++)
                                      Container(
                                        key: Key(index.toString()),
                                        color: Colors.transparent,
                                        child: ReorderableDragStartListener(
                                          index: index,
                                          child: Dismissible(
                                            key: UniqueKey(),
                                            direction:
                                                DismissDirection.horizontal,
                                            onDismissed: (direction) {
                                              controller.removeWidgetPosition(
                                                  index, layoutNumber);
                                            },
                                            child: Listener(
                                              behavior: HitTestBehavior.opaque,
                                              onPointerDown: (_) {
                                                controller.currentHoverIndex
                                                    .value = index;
                                              },
                                              child: FittedBox(
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Transform(
                                                    alignment: Alignment.center,
                                                    transform: controller
                                                            .is6ModuleMirror
                                                            .isTrue
                                                        ? Matrix4.rotationX(pi)
                                                        : Matrix4.rotationX(0),
                                                    child:
                                                        controller.widgetNameList[
                                                                    index] ==
                                                                ""
                                                            ? RotatedBox(
                                                                quarterTurns: 1,
                                                                child: controller
                                                                        .widgetList[
                                                                    index],
                                                              )
                                                            : controller
                                                                    .widgetList[
                                                                index],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                  ]),
                            ),
                    ),
                    controller.isWatermarkOn.value
                        ? Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/images/sn_logo.png',
                                width: 18,
                                height: 18,
                                color: controller.panelMaterial.value ==
                                            'Wood' ||
                                        controller.panelMaterial.value ==
                                            'Marble'
                                    ? Colors.black
                                    : (controller.glassColor.value == 'Black' ||
                                            controller.glassColor.value ==
                                                'Sparkling Blue' ||
                                            controller.glassColor.value ==
                                                'Golden Grey')
                                        ? Colors.white
                                        : greyIconColor,
                              ),
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              )
            : Container(
                width: 504.16,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: controller.panelMaterial.value == 'Wood'
                      ? const DecorationImage(
                          image: AssetImage('assets/images/wood_bg.png'),
                          fit: BoxFit.fill,
                        )
                      : controller.panelMaterial.value == 'Marble'
                          ? const DecorationImage(
                              image: AssetImage('assets/images/marble.png'),
                              fit: BoxFit.fill,
                            )
                          : controller.glassColor.value == "Sparkling Blue"
                              ? const DecorationImage(
                                  image: AssetImage('assets/images/blue.jpg'),
                                  fit: BoxFit.fill,
                                )
                              : controller.glassColor.value == 'Silver Grey'
                                  ? const DecorationImage(
                                      image: AssetImage('assets/images/SL.jpg'),
                                      fit: BoxFit.fill,
                                    )
                                  : controller.glassColor.value == "Golden Grey"
                                      ? const DecorationImage(
                                          image: AssetImage(
                                              'assets/images/gold.jpg'),
                                          fit: BoxFit.fill,
                                        )
                                      : null,
                  gradient: LinearGradient(
                    colors: gradientGlass,
                  ),
                ),
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    if (layoutNumber == 1)
                      Container(
                        width: 310,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: controller.isModularViewOn.value
                                ? innerFrameColor
                                : Colors.transparent,
                            width: 1.5,
                          ),
                        ),
                        child: controller.widgetList.isEmpty
                            ? const SizedBox()
                            : Center(
                                child: ReorderableListView(
                                    proxyDecorator: proxyDecorator,
                                    buildDefaultDragHandles: false,
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    onReorder: (int oldIndex, int newIndex) {
                                      controller.updateWidgetPosition(
                                          newIndex, oldIndex, 1);
                                    },
                                    children: [
                                      for (int index = 0;
                                          index < controller.widgetList.length;
                                          index++)
                                        Container(
                                          key: Key(index.toString()),
                                          color: Colors.transparent,
                                          child: ReorderableDragStartListener(
                                            index: index,
                                            child: Dismissible(
                                              key: UniqueKey(),
                                              direction:
                                                  DismissDirection.vertical,
                                              onDismissed: (direction) {
                                                controller.removeWidgetPosition(
                                                    index, layoutNumber);
                                              },
                                              child: Listener(
                                                behavior:
                                                    HitTestBehavior.opaque,
                                                onPointerDown: (_) {
                                                  controller.currentHoverIndex
                                                      .value = index;
                                                },
                                                child: FittedBox(
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: controller
                                                        .widgetList[index],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                    ]),
                              ),
                      )
                    else if (layoutNumber == 2)
                      Container(
                        width: 310,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: controller.isModularViewOn.value
                                ? innerFrameColor
                                : Colors.transparent,
                            width: 1.5,
                          ),
                        ),
                        child: controller.widgetList2.isEmpty
                            ? const SizedBox()
                            : Center(
                                child: ReorderableListView(
                                    proxyDecorator: proxyDecorator,
                                    buildDefaultDragHandles: false,
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    onReorder: (int oldIndex, int newIndex) {
                                      controller.updateWidgetPosition(
                                          newIndex, oldIndex, 2);
                                    },
                                    children: [
                                      for (int index = 0;
                                          index < controller.widgetList2.length;
                                          index++)
                                        Container(
                                          key: Key(index.toString()),
                                          color: Colors.transparent,
                                          child: ReorderableDragStartListener(
                                            index: index,
                                            child: Dismissible(
                                              key: UniqueKey(),
                                              direction:
                                                  DismissDirection.vertical,
                                              onDismissed: (direction) {
                                                controller.removeWidgetPosition(
                                                    index, layoutNumber);
                                              },
                                              child: Listener(
                                                behavior:
                                                    HitTestBehavior.opaque,
                                                onPointerDown: (_) {
                                                  controller.currentHoverIndex
                                                      .value = index;
                                                },
                                                child: FittedBox(
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: controller
                                                        .widgetList2[index],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                    ]),
                              ),
                      )
                    else if (layoutNumber == 3)
                      Container(
                        width: 310,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: controller.isModularViewOn.value
                                ? innerFrameColor
                                : Colors.transparent,
                            width: 1.5,
                          ),
                        ),
                        child: controller.widgetList3.isEmpty
                            ? const SizedBox()
                            : Center(
                                child: ReorderableListView(
                                    proxyDecorator: proxyDecorator,
                                    buildDefaultDragHandles: false,
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    onReorder: (int oldIndex, int newIndex) {
                                      controller.updateWidgetPosition(
                                          newIndex, oldIndex, 3);
                                    },
                                    children: [
                                      for (int index = 0;
                                          index < controller.widgetList3.length;
                                          index++)
                                        Container(
                                          key: Key(index.toString()),
                                          color: Colors.transparent,
                                          child: ReorderableDragStartListener(
                                            index: index,
                                            child: Dismissible(
                                              key: UniqueKey(),
                                              direction:
                                                  DismissDirection.vertical,
                                              onDismissed: (direction) {
                                                controller.removeWidgetPosition(
                                                    index, layoutNumber);
                                              },
                                              child: Listener(
                                                behavior:
                                                    HitTestBehavior.opaque,
                                                onPointerDown: (_) {
                                                  controller.currentHoverIndex
                                                      .value = index;
                                                },
                                                child: FittedBox(
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: controller
                                                        .widgetList3[index],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                    ]),
                              ),
                      ),
                    controller.isWatermarkOn.value
                        ? Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/images/sn_logo.png',
                                width: 18,
                                height: 18,
                                color: controller.panelMaterial.value ==
                                            'Wood' ||
                                        controller.panelMaterial.value ==
                                            'Marble'
                                    ? Colors.black
                                    : (controller.glassColor.value == 'Black' ||
                                            controller.glassColor.value ==
                                                'Sparkling Blue' ||
                                            controller.glassColor.value ==
                                                'Golden Grey')
                                        ? Colors.white
                                        : greyIconColor,
                              ),
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
      );
    });
  }
}
