import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';

clearButton(layoutNumber, ModuleController controller, count) {
  return Obx(
    () => Visibility(
      visible: isVisible(layoutNumber, controller),
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          onPressed: () {
            controller.clearSpecificWidget(count, layoutNumber);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
            child: const Text(
              "Clear",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    ),
  );
}

bool isVisible(layoutNumber, controller) {
  if (layoutNumber == 1) {
    return !controller.widgetNameList.every((element) => element == "");
  } else if (layoutNumber == 2) {
    return !controller.widgetNameList2.every((element) => element == "");
  } else if (layoutNumber == 3) {
    return !controller.widgetNameList3.every((element) => element == "");
  }

  return false;
}
