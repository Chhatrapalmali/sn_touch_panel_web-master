import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';
import 'package:sn_touch_panel_web/controllers/pdf_controller.dart';
import 'package:sn_touch_panel_web/helper/constants_colors.dart';
import 'package:sn_touch_panel_web/helper/size_config.dart';
import 'package:sn_touch_panel_web/views/home_screen/components/side_menu.dart';
import 'package:sn_touch_panel_web/views/home_screen/touch_information_layout.dart';
import 'package:sn_touch_panel_web/views/side_menu_screens/touch_color_menu.dart';
import 'package:sn_touch_panel_web/views/side_menu_screens/touch_material_menu.dart';
import 'package:sn_touch_panel_web/views/side_menu_screens/touch_module_menu.dart';
import 'package:sn_touch_panel_web/views/side_menu_screens/touch_size_menu.dart';

import '../touch_dashboard_screen/touch_design_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ModuleController());
    var pdfController = Get.put(PdfController());
    final ScrollController scrollController = ScrollController();
    SizeConfig().init(context);
    return GetX<ModuleController>(builder: (controller) {
      return Scaffold(
        body: Stack(
          children: [
            Row(
              children: [
                SizedBox(
                  width: SizeConfig.screenWidth! * 0.18,
                  child: SideMenu(
                    onSizeClick: () {
                      controller.sizeMenuToggle.toggle();
                      controller.colorMenuToggle.value = false;
                      controller.moduleMenuToggle.value = false;
                      controller.materialMenuToggle.value = false;

                      controller.isSizeClick.toggle();
                      controller.isColorClick.value = false;
                      controller.isModuleClick.value = false;
                      controller.isIconClick.value = false;
                      controller.isMaterialClick.value = false;
                    },
                    onColorClick: () {
                      // controller.sizeMenuToggle.toggle();
                      controller.colorMenuToggle.toggle();
                      controller.sizeMenuToggle.value = false;
                      controller.moduleMenuToggle.value = false;
                      controller.materialMenuToggle.value = false;

                      controller.isSizeClick.value = false;
                      controller.isColorClick.toggle();
                      controller.isModuleClick.value = false;
                      controller.isIconClick.value = false;
                      controller.isMaterialClick.value = false;
                    },
                    onModuleClick: () {
                      controller.moduleMenuToggle.toggle();
                      controller.colorMenuToggle.value = false;
                      controller.sizeMenuToggle.value = false;
                      controller.materialMenuToggle.value = false;

                      controller.isSizeClick.value = false;
                      controller.isColorClick.value = false;
                      controller.isModuleClick.toggle();
                      controller.isIconClick.value = false;
                      controller.isMaterialClick.value = false;
                    },
                    onSwitchValue: (value) {
                      var temp = controller.modulePrising.value;
                      if (value) {
                        controller.modulePrising.value =
                            temp - controller.getBasicPrising();
                      } else {
                        controller.modulePrising.value =
                            temp + controller.getBasicPrising();
                      }
                      controller.isModularViewOn.value = value;
                      if (controller.isModularViewOn.isTrue) {
                        controller.modularMaterial.value = 'Acrylic';
                        controller.panelMaterial.value = '';
                      }
                    },
                    onMaterialClick: () {
                      controller.materialMenuToggle.toggle();
                      controller.sizeMenuToggle.value = false;
                      controller.colorMenuToggle.value = false;
                      controller.moduleMenuToggle.value = false;

                      controller.isSizeClick.value = false;
                      controller.isColorClick.value = false;
                      controller.isModuleClick.value = false;
                      controller.isIconClick.value = false;
                      controller.isMaterialClick.toggle();
                    },
                    onWatermarkSwitchValue: (bool switchValue) {
                      controller.isWatermarkOn.value = switchValue;
                    },
                    onIRSwitchValueChange: (bool value) {
                      controller.isIRViewOn.value = value;
                    },
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Stack(
                    children: [
                      controller.isTouchModuleClicked()
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Expanded(
                                  child: SizedBox(
                                    child: TouchDesignScreen(
                                      whichLayout: 'Size',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.teal,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                        ),
                                        onPressed: () {
                                          pdfController.addWidget();
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 14, horizontal: 10),
                                          child: Text(
                                            pdfController.isForUpdate.value
                                                ? "Update"
                                                : 'Save',
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Visibility(
                                        visible: !controller.widgetNameList
                                            .every((element) => element == ""),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.teal,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                          ),
                                          onPressed: () {
                                            controller.clearModule();
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 14, horizontal: 10),
                                            child: const Text(
                                              "Clear",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Visibility(
                                        visible: (controller
                                                .is3ModuleClick.value ||
                                            controller.is4ModuleClick.value ||
                                            controller.is6ModuleClick.value ||
                                            controller.is8ModuleClick.value),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.teal,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                          ),
                                          onPressed: () {
                                            if (controller
                                                .is3ModuleClick.value) {
                                              if (controller
                                                      .is3ModuleRotate.isTrue &&
                                                  controller
                                                      .is3ModuleMirror.isTrue) {
                                                controller.is3ModuleRotate
                                                    .value = false;
                                                controller.is3ModuleMirror
                                                    .value = false;
                                                controller.reverseAllList();
                                              } else if (controller
                                                  .is3ModuleRotate.isFalse) {
                                                controller.is3ModuleRotate
                                                    .value = true;
                                              } else if (controller
                                                  .is3ModuleRotate.isTrue) {
                                                controller.is3ModuleMirror
                                                    .value = true;
                                                controller.reverseAllList();
                                              }
                                            } else if (controller
                                                .is4ModuleClick.value) {
                                              if (controller
                                                      .is4ModuleRotate.isTrue &&
                                                  controller
                                                      .is4ModuleMirror.isTrue) {
                                                controller.is4ModuleRotate
                                                    .value = false;
                                                controller.is4ModuleMirror
                                                    .value = false;
                                                controller.reverseAllList();
                                              } else if (controller
                                                  .is4ModuleRotate.isTrue) {
                                                controller.is4ModuleMirror
                                                    .value = true;
                                                controller.reverseAllList();
                                              } else if (controller
                                                  .is4ModuleRotate.isFalse) {
                                                controller.is4ModuleRotate
                                                    .value = true;
                                              }
                                            } else if (controller
                                                .is6ModuleClick.value) {
                                              if (controller
                                                      .is6ModuleRotate.isTrue &&
                                                  controller
                                                      .is6ModuleMirror.isTrue) {
                                                controller.is6ModuleRotate
                                                    .value = false;
                                                controller.is6ModuleMirror
                                                    .value = false;
                                                controller.reverseAllList();
                                              } else if (controller
                                                  .is6ModuleRotate.isFalse) {
                                                controller.is6ModuleRotate
                                                    .value = true;
                                              } else if (controller
                                                  .is6ModuleRotate.isTrue) {
                                                controller.is6ModuleMirror
                                                    .value = true;
                                                controller.reverseAllList();
                                              }
                                            } else if (controller
                                                .is8ModuleClick.value) {
                                              if (controller
                                                      .is8ModuleRotate.isTrue &&
                                                  controller
                                                      .is8ModuleMirror.isTrue) {
                                                controller.is8ModuleRotate
                                                    .value = false;
                                                controller.is8ModuleMirror
                                                    .value = false;
                                                controller.reverseAllList();
                                              } else if (controller
                                                  .is8ModuleRotate.isFalse) {
                                                controller.is8ModuleRotate
                                                    .value = true;
                                              } else if (controller
                                                  .is8ModuleRotate.isTrue) {
                                                controller.is8ModuleMirror
                                                    .value = true;
                                                controller.reverseAllList();
                                              }
                                            }
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 14, horizontal: 10),
                                            child: const Text(
                                              "Rotate",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : const SizedBox(),
                      controller.sizeMenuToggle.isTrue
                          ? SizedBox(
                              width: SizeConfig.screenWidth! * 0.18,
                              child: const TouchSizeMenu(),
                            )
                          : const SizedBox(),
                      controller.colorMenuToggle.isTrue
                          ? SizedBox(
                              width: SizeConfig.screenWidth! * 0.18,
                              child: const TouchColorMenu(),
                            )
                          : const SizedBox(),
                      controller.moduleMenuToggle.isTrue
                          ? controller.is12ModuleClick.isTrue ||
                                  controller.is18ModuleClick.isTrue
                              ? const SizedBox()
                              : SizedBox(
                                  width: SizeConfig.screenWidth! * 0.17,
                                  child: const TouchModuleMenu(),
                                )
                          : const SizedBox(),
                      controller.materialMenuToggle.isTrue
                          ? SizedBox(
                              width: SizeConfig.screenWidth! * 0.15,
                              child: const TouchMaterialMenu(),
                            )
                          : const SizedBox()
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              right: 0,
              child: Obx(
                () => SizedBox(
                  width: SizeConfig.screenWidth! * 0.14,
                  height: SizeConfig.screenHeight! * 0.90,
                  child: ListView.builder(
                      controller: scrollController,
                      itemCount: pdfController.widgetImages.length,
                      itemBuilder: (context, index) {
                        return pdfController.widgetImages.isEmpty
                            ? const SizedBox()
                            : Slidable(
                                enabled: !pdfController.isForUpdate.value,
                                endActionPane: ActionPane(
                                  extentRatio: 0.33,
                                  motion: const StretchMotion(),
                                  children: [
                                    SlidableAction(
                                      onPressed: (context) {
                                        if (pdfController.isForUpdate.isFalse) {
                                          pdfController.removeWidget(index);
                                        }
                                      },
                                      backgroundColor: const Color(0xFFFE4A49),
                                      foregroundColor: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                      icon: Icons.delete,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5)),
                                    ),
                                  ],
                                ),
                                startActionPane: ActionPane(
                                  extentRatio: 0.67,
                                  motion: const StretchMotion(),
                                  children: [
                                    SlidableAction(
                                      onPressed: (context) {
                                        pdfController.pdfComponentIndex.value =
                                            index;
                                        pdfController.preViewDialog(
                                            context: context);
                                      },
                                      backgroundColor: const Color(0xFF7BC043),
                                      foregroundColor: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                      icon: Icons.remove_red_eye,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5)),
                                    ),
                                    SlidableAction(
                                      onPressed: (context) {
                                        pdfController.pdfComponentIndex.value =
                                            index;
                                        pdfController.isForUpdate.value = true;
                                        pdfController.updateWidget(index);
                                      },
                                      backgroundColor: Colors.amber,
                                      foregroundColor: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                      icon: Icons.edit,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5)),
                                    ),
                                  ],
                                ),
                                child: Tooltip(
                                  message:
                                      "Swipe Left to Delete and Swipe Right to Edit & Preview",
                                  waitDuration: const Duration(seconds: 1),
                                  padding: const EdgeInsets.all(12),
                                  child: pdfController.sizeList[index] ==
                                              "2 Module" ||
                                          pdfController.sizeList[index] ==
                                              "3 Module" ||
                                          pdfController.sizeList[index] ==
                                              "3 Module(Vertical)" ||
                                          pdfController.sizeList[index] ==
                                              "4 Module(Vertical)" ||
                                          pdfController.sizeList[index] ==
                                              "6 Module(Vertical)" ||
                                          pdfController.sizeList[index] ==
                                              "8 Module(Vertical)"
                                      ? SizedBox(
                                          width: double.infinity,
                                          height:
                                              SizeConfig.screenHeight! * 0.30,
                                          child: Image.memory(
                                            pdfController.widgetImages[index],
                                          ),
                                        )
                                      : SizedBox(
                                          width: SizeConfig.screenWidth! / 5,
                                          child: Image.memory(
                                            fit: BoxFit.contain,
                                            pdfController.widgetImages[index],
                                          ),
                                        ),
                                ),
                              );
                      }),
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: lightBackgroundColor,
          onPressed: () {
            Get.defaultDialog(
              title: 'Information',
              titleStyle: TextStyle(
                color: Theme.of(context).textTheme.bodyMedium!.color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
              titlePadding: const EdgeInsets.all(10),
              content: const TouchInformationLayout(),
            );
          },
          child: const Icon(Icons.info),
        ),
      );
    });
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}
