import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';
import 'package:sn_touch_panel_web/controllers/pdf_controller.dart';
import 'package:sn_touch_panel_web/helper/size_config.dart';
import 'package:sn_touch_panel_web/views/home_screen/touch_information_layout.dart';
import 'package:sn_touch_panel_web/views/side_menu_screens/touch_color_menu_phone.dart';

import '../side_menu_screens/touch_material_menu_phone.dart';
import '../side_menu_screens/touch_module_menu_phone.dart';
import '../side_menu_screens/touch_module_sub_variant.dart';
import '../side_menu_screens/touch_module_variant_phone.dart';
import '../touch_dashboard_screen/touch_design_screen.dart';

class HomeScreenPhone extends StatelessWidget {
  const HomeScreenPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ModuleController());
    PdfController pdfController = Get.put(PdfController());
    final ScrollController scrollController = ScrollController();
    SizeConfig().init(context);
    return GetX<ModuleController>(builder: (controller) {
      return Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 50,
                  width: SizeConfig.screenWidth! * 0.75,
                  child: Center(
                    child: Card(
                      elevation: 1,
                      color: Theme.of(context).colorScheme.background,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          if (!controller.widgetNameList
                              .every((element) => element == ""))
                            IconButton(
                                onPressed: () {
                                  controller.clearModule();
                                },
                                icon: const Icon(Icons.replay_outlined,
                                    color: Colors.teal)),
                          if (!controller.widgetNameList
                              .every((element) => element == ""))
                            VerticalDivider(
                              color: Theme.of(context).colorScheme.onPrimary,
                              width: 1,
                            ),
                          if (controller.isTouchModuleClicked())
                            IconButton(
                                onPressed: () {
                                  pdfController.addWidget();
                                },
                                icon: const Icon(Icons.save_outlined,
                                    color: Colors.teal)),
                          if (controller.is3ModuleClick.value ||
                              controller.is4ModuleClick.value ||
                              controller.is6ModuleClick.value ||
                              controller.is8ModuleClick.value)
                            VerticalDivider(
                              color: Theme.of(context).colorScheme.onPrimary,
                              width: 1,
                            ),
                          if (controller.is3ModuleClick.value ||
                              controller.is4ModuleClick.value ||
                              controller.is6ModuleClick.value ||
                              controller.is8ModuleClick.value)
                            IconButton(
                                onPressed: () {
                                  if (controller.is3ModuleClick.value) {
                                    if (controller.is3ModuleRotate.isTrue &&
                                        controller.is3ModuleMirror.isTrue) {
                                      controller.is3ModuleRotate.value = false;
                                      controller.is3ModuleMirror.value = false;
                                      controller.reverseAllList();
                                    } else if (controller
                                        .is3ModuleRotate.isFalse) {
                                      controller.is3ModuleRotate.value = true;
                                    } else if (controller
                                        .is3ModuleRotate.isTrue) {
                                      controller.is3ModuleMirror.value = true;
                                      controller.reverseAllList();
                                    }
                                  } else if (controller.is4ModuleClick.value) {
                                    if (controller.is4ModuleRotate.isTrue &&
                                        controller.is4ModuleMirror.isTrue) {
                                      controller.is4ModuleRotate.value = false;
                                      controller.is4ModuleMirror.value = false;
                                      controller.reverseAllList();
                                    } else if (controller
                                        .is4ModuleRotate.isTrue) {
                                      controller.is4ModuleMirror.value = true;
                                      controller.reverseAllList();
                                    } else if (controller
                                        .is4ModuleRotate.isFalse) {
                                      controller.is4ModuleRotate.value = true;
                                    }
                                  } else if (controller.is6ModuleClick.value) {
                                    if (controller.is6ModuleRotate.isTrue &&
                                        controller.is6ModuleMirror.isTrue) {
                                      controller.is6ModuleRotate.value = false;
                                      controller.is6ModuleMirror.value = false;
                                      controller.reverseAllList();
                                    } else if (controller
                                        .is6ModuleRotate.isFalse) {
                                      controller.is6ModuleRotate.value = true;
                                    } else if (controller
                                        .is6ModuleRotate.isTrue) {
                                      controller.is6ModuleMirror.value = true;
                                      controller.reverseAllList();
                                    }
                                  } else if (controller.is8ModuleClick.value) {
                                    if (controller.is8ModuleRotate.isTrue &&
                                        controller.is8ModuleMirror.isTrue) {
                                      controller.is8ModuleRotate.value = false;
                                      controller.is8ModuleMirror.value = false;
                                      controller.reverseAllList();
                                    } else if (controller
                                        .is8ModuleRotate.isFalse) {
                                      controller.is8ModuleRotate.value = true;
                                    } else if (controller
                                        .is8ModuleRotate.isTrue) {
                                      controller.is8ModuleMirror.value = true;
                                      controller.reverseAllList();
                                    }
                                  }
                                },
                                icon: const Icon(
                                    Icons.rotate_90_degrees_cw_outlined,
                                    color: Colors.teal)),
                          if (controller.isTouchModuleClicked())
                            VerticalDivider(
                              color: Theme.of(context).colorScheme.onPrimary,
                              width: 1,
                            ),
                          if (controller.isTouchModuleClicked())
                            IconButton(
                                onPressed: () {
                                  Get.defaultDialog(
                                    title: 'Information',
                                    titleStyle: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .color,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1,
                                    ),
                                    titlePadding: const EdgeInsets.all(10),
                                    content: const TouchInformationLayout(),
                                  );
                                },
                                icon: const Icon(Icons.info_outline,
                                    color: Colors.teal)),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      controller.isTouchModuleClicked()
                          ? Center(
                              child: SizedBox(
                                height: SizeConfig.screenHeight,
                                child: const SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: TouchDesignScreen(
                                    whichLayout: 'Size',
                                  ),
                                ),
                              ),
                            )
                          : const SizedBox(),
                      Visibility(
                        visible: controller.colorMenuToggle.isTrue,
                        child: const Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: SizedBox(
                            height: 120,
                            width: double.infinity,
                            child: TouchColorMenuPhone(),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: controller.materialMenuToggle.isTrue,
                        child: const Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: SizedBox(
                            height: 60,
                            width: double.infinity,
                            child: TouchMaterialMenuPhone(),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: controller.moduleMenuToggle.isTrue,
                        child: Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Visibility(
                                visible:
                                    (controller.automation.value != "Dummy" &&
                                        controller.automation.value != ""),
                                child: const SizedBox(
                                  height: 60,
                                  width: double.infinity,
                                  child: TouchModuleSubVariant(
                                    layoutNumber: 1,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 60,
                                width: double.infinity,
                                child: TouchModuleVariantPhone(
                                  layoutNumber: 1,
                                ),
                              ),
                              const SizedBox(
                                height: 60,
                                width: double.infinity,
                                child: TouchModuleMenuPhone(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  height: 60,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      if (controller.isTouchModuleClicked())
                        Expanded(
                          child: InkWell(
                            onTap: () {
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
                            child: Card(
                              elevation:
                                  controller.isMaterialClick.value ? 1 : 0,
                              color: controller.isMaterialClick.value
                                  ? Theme.of(context).colorScheme.background
                                  : Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.rectangle,
                                      color: controller.isMaterialClick.value
                                          ? Colors.teal
                                          : Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                    ),
                                    Text(
                                      "Material",
                                      style: TextStyle(
                                          color:
                                              controller.isMaterialClick.value
                                                  ? Colors.teal
                                                  : Theme.of(context)
                                                      .colorScheme
                                                      .onPrimary),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      if ((controller.panelMaterial.value != 'Wood' &&
                              controller.panelMaterial.value != 'Marble') &&
                          controller.isTouchModuleClicked())
                        Expanded(
                          child: InkWell(
                            onTap: () {
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
                            child: Card(
                              elevation: controller.isColorClick.value ? 1 : 0,
                              color: controller.isColorClick.value
                                  ? Theme.of(context).colorScheme.background
                                  : Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.color_lens,
                                      color: controller.isColorClick.value
                                          ? Colors.teal
                                          : Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                    ),
                                    Text(
                                      "Color",
                                      style: TextStyle(
                                        color: controller.isColorClick.value
                                            ? Colors.teal
                                            : Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      if (controller.isTouchModuleClicked() &&
                          (controller.is12ModuleClick.isFalse &&
                              controller.is18ModuleClick.isFalse &&
                              controller.is16ModuleClick.isFalse &&
                              controller.is8Module2Click.isFalse))
                        Expanded(
                          child: InkWell(
                            onTap: () {
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
                            child: Card(
                              elevation: controller.isModuleClick.value ? 1 : 0,
                              color: controller.isModuleClick.value
                                  ? Theme.of(context).colorScheme.background
                                  : Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.view_module,
                                      color: controller.isModuleClick.value
                                          ? Colors.teal
                                          : Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                    ),
                                    Text(
                                      "Module",
                                      style: TextStyle(
                                        color: controller.isModuleClick.value
                                            ? Colors.teal
                                            : Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              right: 0,
              child: Obx(
                () => Align(
                  alignment: Alignment.centerRight,
                  child: Visibility(
                    visible: controller.isShowClick.value,
                    child: SizedBox(
                      width: SizeConfig.screenWidth! * 0.45,
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
                                      motion: const StretchMotion(),
                                      children: [
                                        SlidableAction(
                                          onPressed: (context) {
                                            controller.isShowClick.value =
                                                false;
                                            if (pdfController
                                                .isForUpdate.isFalse) {
                                              pdfController.removeWidget(index);
                                            }
                                          },
                                          backgroundColor:
                                              const Color(0xFFFE4A49),
                                          foregroundColor: Theme.of(context)
                                              .scaffoldBackgroundColor,
                                          icon: Icons.delete,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(5)),
                                        ),
                                      ],
                                    ),
                                    startActionPane: ActionPane(
                                      motion: const StretchMotion(),
                                      children: [
                                        SlidableAction(
                                          onPressed: (context) {
                                            controller.isShowClick.value =
                                                false;
                                            pdfController.pdfComponentIndex
                                                .value = index;
                                            pdfController.preViewDialog(
                                                context: context);
                                          },
                                          backgroundColor:
                                              const Color(0xFF7BC043),
                                          foregroundColor: Theme.of(context)
                                              .scaffoldBackgroundColor,
                                          icon: Icons.remove_red_eye,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(5)),
                                        ),
                                        SlidableAction(
                                          onPressed: (context) {
                                            controller.isShowClick.value =
                                                false;
                                            pdfController.pdfComponentIndex
                                                .value = index;
                                            pdfController.isForUpdate.value =
                                                true;
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
                                                  "3 Module(Vertical)" ||
                                              pdfController.sizeList[index] ==
                                                  "4 Module(Vertical)" ||
                                              pdfController.sizeList[index] ==
                                                  "6 Module(Vertical)" ||
                                              pdfController.sizeList[index] ==
                                                  "8 Module(Vertical)"
                                          ? SizedBox(
                                              width: double.infinity,
                                              height: SizeConfig.screenHeight! *
                                                  0.30,
                                              child: Image.memory(
                                                pdfController
                                                    .widgetImages[index],
                                              ),
                                            )
                                          : SizedBox(
                                              width: double.infinity,
                                              child: Image.memory(
                                                fit: BoxFit.contain,
                                                pdfController
                                                    .widgetImages[index],
                                              ),
                                            ),
                                    ),
                                  );
                          }),
                    ),
                  ),
                ),
              ),
            ),
            if (pdfController.widgetImages.isNotEmpty &&
                !controller.isTouchModuleClicked())
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: InkWell(
                  onTap: () {
                    controller.isShowClick.value =
                        !controller.isShowClick.value;
                  },
                  child: Card(
                    elevation: controller.isShowClick.value ? 1 : 0,
                    color: controller.isShowClick.value
                        ? Theme.of(context).colorScheme.background
                        : Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.image_outlined,
                            color: controller.isShowClick.value
                                ? Colors.teal
                                : Theme.of(context).colorScheme.onPrimary,
                          ),
                          Text(
                            "Show",
                            style: TextStyle(
                              color: controller.isShowClick.value
                                  ? Colors.teal
                                  : Theme.of(context).colorScheme.onPrimary,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
        /* floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton.small(
          backgroundColor: lightBackgroundColor,
          onPressed: () {
            Get.defaultDialog(
              title: 'Information',
              titleStyle: TextStyle(
                color: Theme.of(context).textTheme.bodyText2!.color,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
              titlePadding: const EdgeInsets.all(10),
              content: const TouchInformationLayout(),
            );
          },
          child: const Icon(Icons.info),
        ),*/
      );
    });
  }
}
