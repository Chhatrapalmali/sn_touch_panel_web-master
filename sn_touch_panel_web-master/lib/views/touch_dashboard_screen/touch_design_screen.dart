import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';
import 'package:sn_touch_panel_web/helper/size_config.dart';
import 'package:sn_touch_panel_web/views/touch_dashboard_screen/eight_module_layout.dart';
import 'package:sn_touch_panel_web/views/touch_dashboard_screen/eight_module_vertical_layout.dart';
import 'package:sn_touch_panel_web/views/touch_dashboard_screen/four_module_layout.dart';
import 'package:sn_touch_panel_web/views/touch_dashboard_screen/six_module_layout.dart';
import 'package:sn_touch_panel_web/views/touch_dashboard_screen/sixteen_module_layout.dart';
import 'package:sn_touch_panel_web/views/touch_dashboard_screen/twelve_module_layout.dart';
import 'package:sn_touch_panel_web/views/touch_dashboard_screen/two_module_layout.dart';

import 'eighteen_module_layout.dart';
import 'three_module_layout.dart';

class TouchDesignScreen extends StatelessWidget {
  final String whichLayout;

  const TouchDesignScreen({
    Key? key,
    required this.whichLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: Colors.transparent,
      alignment: Alignment.center,
      child: GetX<ModuleController>(builder: (controller) {
        if (controller.is2ModuleClick.isTrue) {
          // 2 module
          return RepaintBoundary(
              key: controller.twoModuleKey, child: const TwoModuleLayout());
        } else if (controller.is3ModuleClick.isTrue) {
          // 3 module
          return RepaintBoundary(
              key: controller.threeModuleKey, child: const ThreeModuleLayout());
        } else if (controller.is4ModuleClick.isTrue) {
          // 4 module
          return RepaintBoundary(
              key: controller.fourModuleKey,
              child: const FourModuleLayout(layoutNumber: 1));
        } else if (controller.is6ModuleClick.isTrue) {
          // 6 module
          return RepaintBoundary(
              key: controller.sixModuleKey,
              child: const SixModuleLayout(layoutNumber: 1));
        } else if (controller.is8ModuleClick.isTrue) {
          // 8 module
          return RepaintBoundary(
              key: controller.eightModuleKey,
              child: const EightModuleLayout(layoutNumber: 1));
        } else if (controller.is8Module2Click.isTrue) {
          // 8 module (4+4)
          return RepaintBoundary(
              key: controller.eightVerticleModuleKey,
              child: const EightModuleVerticalLayout());
        } else if (controller.is12ModuleClick.isTrue) {
          // 12 module
          return RepaintBoundary(
              key: controller.twelveModuleKey,
              child: const TwelveModuleLayout());
        } else if (controller.is16ModuleClick.isTrue) {
          // 16 module
          return RepaintBoundary(
              key: controller.sixteenModuleKey,
              child: const SixteenModuleLayout());
        } else if (controller.is18ModuleClick.isTrue) {
          // 18 module
          return RepaintBoundary(
              key: controller.eighteenModuleKey,
              child: const EighteenModuleLayout());
        } else {
          return const SizedBox();
        }
      }),
    );
  }
}
