import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/helper/size_config.dart';
import 'package:sn_touch_panel_web/views/touch_dashboard_screen/eight_module_layout.dart';

import '../../../controllers/module_controller.dart';
import '../../../helper/responsive_layout.dart';
import '../../components/clear_button.dart';
import '../../side_menu_screens/touch_module_menu_phone.dart';
import '../../side_menu_screens/touch_module_sub_variant.dart';
import '../../side_menu_screens/touch_module_variant_phone.dart';
import 'select_module_menu.dart';

class EightModuleSelectionLayout extends StatelessWidget {
  final int layoutNumber;

  const EightModuleSelectionLayout({Key? key, required this.layoutNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var controller = Get.put(ModuleController());
    return ResponsiveLayout.isPhone(context)
        ? SizedBox(
            width: SizeConfig.screenWidth! * 0.90,
            height: SizeConfig.screenHeight! * 0.75,
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    clearButton(layoutNumber, controller, 8),
                    Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          width: 533.33,
                          height: 200,
                          child: EightModuleLayout(layoutNumber: layoutNumber),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Obx(
                        () => Visibility(
                          visible: (controller.automation.value != "Dummy" &&
                              controller.automation.value != ""),
                          child: SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: TouchModuleSubVariant(
                              layoutNumber: layoutNumber,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: TouchModuleVariantPhone(
                          layoutNumber: layoutNumber,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: TouchModuleMenuPhone(),
                      ),
                    ],
                  ),
                ),
              ],
            ))
        : SizedBox(
            width: SizeConfig.screenWidth! * 0.6,
            height: SizeConfig.screenHeight! * 0.6,
            child: Stack(
              children: [
                Row(
                  children: [
                    Flexible(
                        flex: 1,
                        child: SelectModuleMenu(layoutNumber: layoutNumber)),
                    Flexible(
                      flex: 3,
                      child: Center(
                        child: SizedBox(
                          width: 533.33,
                          height: 200,
                          child: EightModuleLayout(layoutNumber: layoutNumber),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    left: SizeConfig.screenWidth! * 0.15,
                    child: clearButton(layoutNumber, controller, 8))
              ],
            ),
          );
  }
}
