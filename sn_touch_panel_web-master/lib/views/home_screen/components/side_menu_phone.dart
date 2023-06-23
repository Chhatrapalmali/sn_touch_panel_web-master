import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';

import '../../../helper/marquee_widget.dart';
import 'drawer_list_tile.dart';

class SideMenuPhone extends StatelessWidget {
  final VoidCallback onSizeClick;
  final Function(bool) onSwitchValue;
  final Function(bool) onIRSwitchValueChange;
  final Function(bool) onWatermarkSwitchValue;

  const SideMenuPhone({
    Key? key,
    required this.onSizeClick,
    required this.onSwitchValue,
    required this.onWatermarkSwitchValue,
    required this.onIRSwitchValueChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<ModuleController>(builder: (controller) {
      int count = controller.countModulesInArray('', 0);
      return Drawer(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 3,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              ExpansionTile(
                initiallyExpanded: false,
                title: Text(
                  "Size",
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText2!.color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: const Icon(Icons.format_size),
                trailing: controller.sizeMenuToggle.value
                    ? const Icon(Icons.arrow_drop_down_sharp)
                    : const Icon(Icons.arrow_right_sharp),
                onExpansionChanged: (bool value) {
                  controller.sizeMenuToggle.value =
                      !controller.sizeMenuToggle.value;
                },
                children: [
                  DrawerListTile(
                    title: "2 Module",
                    subTitle: '',
                    leading: const Icon(Icons.view_module),
                    press: () {
                      controller.is2ModuleClick.value = true;
                      controller.is3ModuleClick.value = false;
                      controller.is4ModuleClick.value = false;
                      controller.is6ModuleClick.value = false;
                      controller.is8ModuleClick.value = false;
                      controller.is8Module2Click.value = false;
                      controller.is12ModuleClick.value = false;
                      controller.is16ModuleClick.value = false;
                      controller.is18ModuleClick.value = false;
                      if (count == 0) {
                        controller.setDefault();
                      }
                      controller.isWatermarkOn.value = true;
                      controller.widgetList.value = List.generate(
                          2,
                          (_) => const SizedBox(
                                height: 93,
                                width: 46,
                              ));
                      controller.widgetNameList.value =
                          List.generate(2, (_) => "");
                      controller.automationList.value =
                          List.generate(2, (_) => "");
                      controller.switchIndexList.value =
                          List.generate(2, (_) => []);
                    },
                    trailing: const SizedBox(),
                    tileColor: controller.is2ModuleClick.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                  ),
                  DrawerListTile(
                    title: "3 Module",
                    subTitle: '',
                    leading: const Icon(Icons.view_module),
                    press: () {
                      controller.is2ModuleClick.value = false;
                      controller.is3ModuleClick.value = true;
                      controller.is4ModuleClick.value = false;
                      controller.is6ModuleClick.value = false;
                      controller.is8ModuleClick.value = false;
                      controller.is8Module2Click.value = false;
                      controller.is12ModuleClick.value = false;
                      controller.is16ModuleClick.value = false;
                      controller.is18ModuleClick.value = false;
                      if (count == 0) {
                        controller.setDefault();
                      }
                      controller.isWatermarkOn.value = true;
                      controller.widgetList.value = List.generate(
                          3,
                          (_) => const SizedBox(
                                height: 93,
                                width: 46,
                              ));
                      controller.widgetNameList.value =
                          List.generate(3, (_) => "");
                      controller.switchIndexList.value =
                          List.generate(3, (_) => []);
                      controller.automationList.value =
                          List.generate(3, (_) => "");
                    },
                    trailing: const SizedBox(),
                    tileColor: controller.is3ModuleClick.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                  ),
                  DrawerListTile(
                    title: "4 Module",
                    subTitle: '',
                    leading: const Icon(Icons.view_module),
                    tileColor: controller.is4ModuleClick.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                    press: () {
                      controller.is2ModuleClick.value = false;
                      controller.is3ModuleClick.value = false;
                      controller.is4ModuleClick.value = true;
                      controller.is6ModuleClick.value = false;
                      controller.is8ModuleClick.value = false;
                      controller.is8Module2Click.value = false;
                      controller.is12ModuleClick.value = false;
                      controller.is16ModuleClick.value = false;
                      controller.is18ModuleClick.value = false;
                      if (count == 0) {
                        controller.setDefault();
                      }
                      controller.isWatermarkOn.value = true;
                      controller.widgetList.value = List.generate(
                          4,
                          (_) => const SizedBox(
                                height: 93,
                                width: 46,
                              ));
                      controller.widgetNameList.value =
                          List.generate(4, (_) => "");
                      controller.switchIndexList.value =
                          List.generate(4, (_) => []);
                      controller.automationList.value =
                          List.generate(4, (_) => "");
                    },
                    trailing: const SizedBox(),
                  ),
                  DrawerListTile(
                    title: "6 Module",
                    subTitle: '',
                    leading: const Icon(Icons.view_module),
                    tileColor: controller.is6ModuleClick.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                    press: () {
                      controller.is2ModuleClick.value = false;
                      controller.is3ModuleClick.value = false;
                      controller.is4ModuleClick.value = false;
                      controller.is6ModuleClick.value = true;
                      controller.is8ModuleClick.value = false;
                      controller.is8Module2Click.value = false;
                      controller.is12ModuleClick.value = false;
                      controller.is16ModuleClick.value = false;
                      controller.is18ModuleClick.value = false;
                      if (count == 0) {
                        controller.setDefault();
                      }
                      controller.isWatermarkOn.value = true;
                      controller.widgetList.value = List.generate(
                          6,
                          (_) => const SizedBox(
                                height: 93,
                                width: 46,
                              ));
                      controller.widgetNameList.value =
                          List.generate(6, (_) => "");
                      controller.switchIndexList.value =
                          List.generate(6, (_) => []);
                      controller.automationList.value =
                          List.generate(6, (_) => "");
                    },
                    trailing: const SizedBox(),
                  ),
                  DrawerListTile(
                    title: "8 Module",
                    subTitle: 'Horizontal',
                    leading: const Icon(Icons.view_module),
                    tileColor: controller.is8ModuleClick.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                    press: () {
                      controller.is2ModuleClick.value = false;
                      controller.is3ModuleClick.value = false;
                      controller.is4ModuleClick.value = false;
                      controller.is6ModuleClick.value = false;
                      controller.is8ModuleClick.value = true;
                      controller.is8Module2Click.value = false;
                      controller.is12ModuleClick.value = false;
                      controller.is16ModuleClick.value = false;
                      controller.is18ModuleClick.value = false;
                      if (count == 0) {
                        controller.setDefault();
                      }
                      controller.isWatermarkOn.value = true;
                      controller.widgetList.value = List.generate(
                          8,
                          (_) => const SizedBox(
                                height: 93,
                                width: 46,
                              ));
                      controller.widgetNameList.value =
                          List.generate(8, (_) => "");
                      controller.switchIndexList.value =
                          List.generate(8, (_) => []);
                      controller.automationList.value =
                          List.generate(8, (_) => "");
                    },
                    trailing: const SizedBox(),
                  ),
                  DrawerListTile(
                    title: "8 Module",
                    subTitle: 'Square',
                    leading: const Icon(Icons.view_module),
                    tileColor: controller.is8Module2Click.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                    press: () {
                      controller.is2ModuleClick.value = false;
                      controller.is3ModuleClick.value = false;
                      controller.is4ModuleClick.value = false;
                      controller.is6ModuleClick.value = false;
                      controller.is8ModuleClick.value = false;
                      controller.is8Module2Click.value = true;
                      controller.is12ModuleClick.value = false;
                      controller.is16ModuleClick.value = false;
                      controller.is18ModuleClick.value = false;
                      if (count == 0) {
                        controller.setDefault();
                      }
                      controller.isWatermarkOn.value = false;
                      controller.widgetList.value = List.generate(
                          4,
                          (_) => const SizedBox(
                                height: 93,
                                width: 46,
                              ));
                      controller.widgetList2.value = List.generate(
                          4,
                          (_) => const SizedBox(
                                height: 93,
                                width: 46,
                              ));
                      controller.widgetNameList.value =
                          List.generate(4, (_) => "");
                      controller.switchIndexList.value =
                          List.generate(4, (_) => []);
                      controller.widgetNameList2.value =
                          List.generate(4, (_) => "");
                      controller.switchIndexList2.value =
                          List.generate(4, (_) => []);
                      controller.automationList.value =
                          List.generate(4, (_) => "");
                      controller.automationList2.value =
                          List.generate(4, (_) => "");
                    },
                    trailing: const SizedBox(),
                  ),
                  DrawerListTile(
                    title: "12 Module",
                    subTitle: '',
                    leading: const Icon(Icons.view_module),
                    tileColor: controller.is12ModuleClick.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                    press: () {
                      controller.is2ModuleClick.value = false;
                      controller.is3ModuleClick.value = false;
                      controller.is4ModuleClick.value = false;
                      controller.is6ModuleClick.value = false;
                      controller.is8ModuleClick.value = false;
                      controller.is8Module2Click.value = false;
                      controller.is12ModuleClick.value = true;
                      controller.is16ModuleClick.value = false;
                      controller.is18ModuleClick.value = false;
                      if (count == 0) {
                        controller.setDefault();
                      }
                      controller.isWatermarkOn.value = false;
                      controller.widgetList.value = List.generate(
                          6,
                          (_) => const SizedBox(
                                height: 93,
                                width: 46,
                              ));
                      controller.widgetList2.value = List.generate(
                          6,
                          (_) => const SizedBox(
                                height: 93,
                                width: 46,
                              ));
                      controller.widgetNameList.value =
                          List.generate(6, (_) => "");
                      controller.switchIndexList.value =
                          List.generate(6, (_) => []);
                      controller.widgetNameList2.value =
                          List.generate(6, (_) => "");
                      controller.switchIndexList2.value =
                          List.generate(6, (_) => []);
                      controller.automationList.value =
                          List.generate(6, (_) => "");
                      controller.automationList2.value =
                          List.generate(6, (_) => "");
                    },
                    trailing: const SizedBox(),
                  ),
                  DrawerListTile(
                    title: "16 Module",
                    subTitle: '',
                    leading: const Icon(Icons.view_module),
                    tileColor: controller.is16ModuleClick.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                    press: () {
                      controller.is2ModuleClick.value = false;
                      controller.is3ModuleClick.value = false;
                      controller.is4ModuleClick.value = false;
                      controller.is6ModuleClick.value = false;
                      controller.is8ModuleClick.value = false;
                      controller.is8Module2Click.value = false;
                      controller.is12ModuleClick.value = false;
                      controller.is16ModuleClick.value = true;
                      controller.is18ModuleClick.value = false;
                      if (count == 0) {
                        controller.setDefault();
                      }
                      controller.isWatermarkOn.value = false;
                      controller.widgetList.value = List.generate(
                          8,
                          (_) => const SizedBox(
                                height: 93,
                                width: 46,
                              ));
                      controller.widgetList2.value = List.generate(
                          8,
                          (_) => const SizedBox(
                                height: 93,
                                width: 46,
                              ));
                      controller.widgetNameList.value =
                          List.generate(8, (_) => "");
                      controller.switchIndexList.value =
                          List.generate(8, (_) => []);
                      controller.widgetNameList2.value =
                          List.generate(8, (_) => "");
                      controller.switchIndexList2.value =
                          List.generate(8, (_) => []);
                      controller.automationList.value =
                          List.generate(8, (_) => "");
                      controller.automationList2.value =
                          List.generate(8, (_) => "");
                    },
                    trailing: const SizedBox(),
                  ),
                  DrawerListTile(
                    title: "18 Module",
                    subTitle: '',
                    leading: const Icon(Icons.view_module),
                    tileColor: controller.is18ModuleClick.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                    press: () {
                      controller.is2ModuleClick.value = false;
                      controller.is3ModuleClick.value = false;
                      controller.is4ModuleClick.value = false;
                      controller.is6ModuleClick.value = false;
                      controller.is8ModuleClick.value = false;
                      controller.is8Module2Click.value = false;
                      controller.is12ModuleClick.value = false;
                      controller.is16ModuleClick.value = false;
                      controller.is18ModuleClick.value = true;
                      if (count == 0) {
                        controller.setDefault();
                      }
                      controller.isWatermarkOn.value = false;
                      controller.widgetList.value = List.generate(
                          6,
                          (_) => const SizedBox(
                                height: 93,
                                width: 46,
                              ));
                      controller.widgetList2.value = List.generate(
                          6,
                          (_) => const SizedBox(
                                height: 93,
                                width: 46,
                              ));
                      controller.widgetList3.value = List.generate(
                          6,
                          (_) => const SizedBox(
                                height: 93,
                                width: 46,
                              ));
                      controller.widgetNameList.value =
                          List.generate(6, (_) => "");
                      controller.switchIndexList.value =
                          List.generate(6, (_) => []);
                      controller.widgetNameList2.value =
                          List.generate(6, (_) => "");
                      controller.switchIndexList2.value =
                          List.generate(6, (_) => []);
                      controller.widgetNameList3.value =
                          List.generate(6, (_) => "");
                      controller.switchIndexList3.value =
                          List.generate(6, (_) => []);
                      controller.automationList.value =
                          List.generate(6, (_) => "");
                      controller.automationList2.value =
                          List.generate(6, (_) => "");
                      controller.automationList3.value =
                          List.generate(3, (_) => "");
                    },
                    trailing: const SizedBox(),
                  ),
                ],
              ),
              if (controller.isTouchModuleClicked()) const SizedBox(height: 10),
              if (controller.isTouchModuleClicked() &&
                  controller.isAccessorieresAdd())
                Visibility(
                  visible: controller.modularMaterial.value == 'Acrylic' ||
                      controller.panelMaterial.value == 'Acrylic',
                  child: SwitchListTile(
                    value: controller.isModularViewOn.value,
                    onChanged: onSwitchValue,
                    activeColor: Colors.teal,
                    activeTrackColor: Colors.teal,
                    title: Text(
                      'View Modular',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText2!.color,
                      ),
                    ),
                  ),
                ),
              if (controller.isTouchModuleClicked()) const SizedBox(height: 10),
              Visibility(
                visible: false,
                child: SwitchListTile(
                  value: controller.isIRViewOn.value,
                  onChanged: onIRSwitchValueChange,
                  activeColor: Colors.teal,
                  activeTrackColor: Colors.teal,
                  title: MarqueeWidget(
                    child: Text(
                      'Show IR',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText2!.color,
                      ),
                    ),
                  ),
                ),
              ),
              if (false) const SizedBox(height: 10),
              if (controller.isModularViewOn.value)
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Select Panel Type',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              if (controller.isModularViewOn.value) const SizedBox(height: 10),
              if (controller.isModularViewOn.value)
                Center(
                  child: DropdownButton<String>(
                    alignment: Alignment.center,
                    elevation: 10,
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText2!.color,
                      fontWeight: FontWeight.bold,
                    ),
                    value: controller.companyName.value,
                    items: controller.dropDownMenuItem,
                    onChanged: (value) {
                      controller.companyName.value = value!;
                    },
                  ),
                ),
              const SizedBox(height: 10),
              /*   if (controller.isTouchModuleClicked())
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: TextFormField(
                    keyboardType:TextInputType.number,
                    controller: controller.serialNumberController,
                    cursorColor: Theme.of(context).textTheme.bodyText2!.color,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      labelText: 'Serial Number',
                      counterText: '',
                      contentPadding: const EdgeInsets.all(22),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      floatingLabelStyle: TextStyle(
                        color: Theme.of(context).textTheme.bodyText2!.color,
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      // suffixIcon: const CustomSuffixIcon(iconData: Icons.phone_android),
                    ),
                  ),
                ),
              const SizedBox(height: 10),*/
              if (controller.isTouchModuleClicked())
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: TextFormField(
                    controller: controller.quantityController,
                    cursorColor: Theme.of(context).textTheme.bodyText2!.color,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      labelText: 'Quantity',
                      counterText: '',
                      contentPadding: const EdgeInsets.all(22),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      floatingLabelStyle: TextStyle(
                        color: Theme.of(context).textTheme.bodyText2!.color,
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                    ),
                  ),
                ),
              const SizedBox(height: 10),
              if (controller.isTouchModuleClicked())
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: TextFormField(
                    controller: controller.commentController,
                    cursorColor: Theme.of(context).textTheme.bodyText2!.color,
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    decoration: InputDecoration(
                      labelText: 'Comments',
                      counterText: '',
                      contentPadding: const EdgeInsets.all(22),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      floatingLabelStyle: TextStyle(
                        color: Theme.of(context).textTheme.bodyText2!.color,
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                    ),
                  ),
                ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      );
    });
  }
}
