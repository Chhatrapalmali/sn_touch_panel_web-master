import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';
import 'package:sn_touch_panel_web/helper/marquee_widget.dart';

import 'drawer_list_tile.dart';

class SideMenu extends StatelessWidget {
  final VoidCallback onSizeClick;
  final VoidCallback onModuleClick;
  final VoidCallback onColorClick;

  final VoidCallback onMaterialClick;
  final Function(bool) onSwitchValue;
  final Function(bool) onIRSwitchValueChange;
  final Function(bool) onWatermarkSwitchValue;

  const SideMenu({
    Key? key,
    required this.onSizeClick,
    required this.onModuleClick,
    required this.onColorClick,
    required this.onSwitchValue,
    required this.onMaterialClick,
    required this.onWatermarkSwitchValue,
    required this.onIRSwitchValueChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<ModuleController>(builder: (controller) {
      return Drawer(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 3,
        child: SingleChildScrollView(
          child: Column(
            // itemExtent: 50,
            children: [
              const SizedBox(height: 20),
              DrawerListTile(
                title: "Size",
                subTitle: '',
                tileColor: controller.isSizeClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const Icon(Icons.format_size),
                press: onSizeClick,
                trailing: const Icon(Icons.arrow_right_sharp),
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
                    title: MarqueeWidget(
                      child: Text(
                        'View Modular',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText2!.color,
                        ),
                      ),
                    ),
                  ),
                ),
              if (controller.isTouchModuleClicked()) const SizedBox(height: 10),
              Visibility(
                visible:
                    false /*(controller.panelMaterial.value != 'Wood' &&
                        controller.panelMaterial.value != 'Marble') &&
                    controller.isTouchModuleClicked()*/
                ,
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
              if (controller.isTouchModuleClicked())
                DrawerListTile(
                  title: "Material",
                  subTitle: '',
                  tileColor: controller.isMaterialClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
                  // tileColor: Colors.transparent,
                  leading: const Icon(Icons.rectangle),
                  press: onMaterialClick,
                  trailing: const Icon(Icons.arrow_right_sharp),
                ),
              if (controller.isTouchModuleClicked()) const SizedBox(height: 10),
              if ((controller.panelMaterial.value != 'Wood' &&
                      controller.panelMaterial.value != 'Marble') &&
                  controller.isTouchModuleClicked())
                DrawerListTile(
                  title: "Color",
                  subTitle: '',
                  tileColor: controller.isColorClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
                  leading: const Icon(Icons.color_lens),
                  press: onColorClick,
                  trailing: const Icon(Icons.arrow_right_sharp),
                ),
              if (controller.isTouchModuleClicked()) const SizedBox(height: 10),
              if (controller.isTouchModuleClicked() &&
                  (controller.is12ModuleClick.isFalse &&
                      controller.is18ModuleClick.isFalse &&
                      controller.is16ModuleClick.isFalse &&
                      controller.is8Module2Click.isFalse))
                DrawerListTile(
                  title: "Module",
                  subTitle: '',
                  tileColor: controller.isModuleClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
                  leading: const Icon(Icons.view_module),
                  press: onModuleClick,
                  trailing: const Icon(Icons.arrow_right_sharp),
                ),
              if (controller.isTouchModuleClicked()) const SizedBox(height: 10),
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
