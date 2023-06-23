import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';
import 'package:sn_touch_panel_web/helper/marquee_widget.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.leading,
    required this.press,
    required this.trailing,
    required this.tileColor,
  }) : super(key: key);

  final String title;
  final Widget leading;
  final VoidCallback press;
  final Widget trailing;
  final Color tileColor;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    Get.put(ModuleController());
    return GetX<ModuleController>(builder: (controller) {
      return ListTile(
        tileColor: (controller.is18ModuleClick.value)
            ? (controller.isDisable.value &&
                    controller.isDisable2.value &&
                    controller.isDisable3.value)
                ? Colors.white54
                : tileColor
            : (controller.isDisable.value && controller.isDisable2.value)
                ? Colors.white54
                : (controller.is12ModuleClick.value ||
                        controller.is8Module2Click.value ||
                        controller.is16ModuleClick.value ||
                        controller.is18ModuleClick.value)
                    ? tileColor
                    : controller.isDisable.value
                        ? Colors.white54
                        : tileColor,
        onTap: (controller.is18ModuleClick.value)
            ? (controller.isDisable.value &&
                    controller.isDisable2.value &&
                    controller.isDisable3.value)
                ? () {}
                : press
            : ((controller.isDisable.value && controller.isDisable2.value))
                ? () {}
                : (controller.is12ModuleClick.value ||
                        controller.is8Module2Click.value ||
                        controller.is16ModuleClick.value ||
                        controller.is18ModuleClick.value)
                    ? press
                    : controller.isDisable.value
                        ? () {}
                        : press,
        leading: leading,
        title: MarqueeWidget(
          child: Text(
            title,
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText2!.color,
            ),
          ),
        ),
        subtitle: subTitle.isEmpty
            ? null
            : MarqueeWidget(
                child: Text(
                  subTitle,
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText2!.color,
                  ),
                ),
              ),
        trailing: trailing,
      );
    });
  }
}
