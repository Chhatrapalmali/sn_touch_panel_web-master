import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';
import 'package:sn_touch_panel_web/helper/constants_colors.dart';

import '../../helper/proxy_detector.dart';
import 'components/six_module_selection_layout.dart';

class EighteenModuleLayout extends StatelessWidget {
  const EighteenModuleLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<ModuleController>(builder: (controller) {
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
      List<Color> gradientGlass;
      if (controller.glassColor.value == 'White') {
        gradientGlass = whiteTouchGradient;
      } else {
        gradientGlass = controller.glassColor.value == 'Light Purple'
            ? purpleTouchGradient
            : controller.glassColor.value == 'Baby Pink'
                ? pinkTouchGradient
                : controller.glassColor.value == 'Royal Ivory'
                    ? ivoryTouchGradient
                    : controller.glassColor.value == 'Grey'
                        ? greyTouchGradient
                        : blackTouchGradient;
      }
      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadowColor: Colors.black,
        elevation: 12,
        child: Container(
          width: 500,
          height: 520.83,
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
                                    image: AssetImage('assets/images/gold.jpg'),
                                    fit: BoxFit.fill,
                                  )
                                : null,
            gradient: LinearGradient(colors: gradientGlass),
          ),
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: controller.isModularViewOn.value
                            ? innerFrameColor
                            : Colors.transparent,
                        width: 1.5,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.defaultDialog(
                          title: 'Select Module',
                          titleStyle: TextStyle(
                            color: Theme.of(context).textTheme.bodyText2!.color,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                          titlePadding: const EdgeInsets.all(10),
                          content: const SixModuleSelectionLayout(
                            layoutNumber: 1,
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ReorderableListView(
                              proxyDecorator: proxyDecorator,
                              buildDefaultDragHandles: false,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
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
                                      child: FittedBox(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: IgnorePointer(
                                            child: controller.widgetList[index],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                              ]),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: controller.isModularViewOn.value
                            ? innerFrameColor
                            : Colors.transparent,
                        width: 1.5,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.defaultDialog(
                          title: 'Select Module',
                          titleStyle: TextStyle(
                            color: Theme.of(context).textTheme.bodyText2!.color,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                          titlePadding: const EdgeInsets.all(10),
                          content: const SixModuleSelectionLayout(
                            layoutNumber: 2,
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ReorderableListView(
                              proxyDecorator: proxyDecorator,
                              buildDefaultDragHandles: false,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
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
                                      child: FittedBox(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: IgnorePointer(
                                              child: controller
                                                  .widgetList2[index]),
                                        ),
                                      ),
                                    ),
                                  )
                              ]),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: controller.isModularViewOn.value
                            ? innerFrameColor
                            : Colors.transparent,
                        width: 1.5,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.defaultDialog(
                          title: 'Select Module',
                          titleStyle: TextStyle(
                            color: Theme.of(context).textTheme.bodyText2!.color,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                          titlePadding: const EdgeInsets.all(10),
                          content: const SixModuleSelectionLayout(
                            layoutNumber: 3,
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ReorderableListView(
                              proxyDecorator: proxyDecorator,
                              buildDefaultDragHandles: false,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
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
                                      child: FittedBox(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: IgnorePointer(
                                            child:
                                                controller.widgetList3[index],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                              ]),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/sn_logo.png',
                    width: 18,
                    height: 18,
                    color: controller.panelMaterial.value == 'Wood' ||
                            controller.panelMaterial.value == 'Marble'
                        ? Colors.black
                        : (controller.glassColor.value == 'Black' ||
                                controller.glassColor.value ==
                                    'Sparkling Blue' ||
                                controller.glassColor.value == 'Golden Grey')
                            ? Colors.white
                            : greyIconColor,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
