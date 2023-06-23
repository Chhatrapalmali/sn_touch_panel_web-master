import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';

import '../../controllers/module_controller.dart';
import '../../helper/size_config.dart';

class TouchColorMenuPhone extends StatelessWidget {
  const TouchColorMenuPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var menuController = Get.put(MenuController());
    SizeConfig().init(context);
    return GetX<ModuleController>(builder: (menuController) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 30,
            width: double.infinity,
            child: Center(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  if (menuController.isCustomColor.value == false)
                    colorSelection(
                        menuController, context, "Black", Colors.black, ""),
                  if (menuController.isCustomColor.value == false)
                    colorSelection(
                        menuController, context, "White", Colors.white, ""),
                  if (menuController.isCustomColor.value == true)
                    colorSelection(menuController, context, "Sparkling Blue",
                        "", "assets/images/blue.jpg"),
                  if (menuController.isCustomColor.value == true)
                    colorSelection(menuController, context, "Golden Grey", "",
                        "assets/images/gold.jpg"),
                  if (menuController.isCustomColor.value == true)
                    colorSelection(menuController, context, "Silver Grey", "",
                        "assets/images/SL.jpg"),
                  if (menuController.isCustomColor.value == true)
                    colorSelection(menuController, context, "Baby Pink",
                        const Color(0xFFFF8FD9), ""),
                  if (menuController.isCustomColor.value == true)
                    colorSelection(menuController, context, "Light Purple",
                        const Color(0xFFAE9DD4), ""),
                  if (menuController.isCustomColor.value == true)
                    colorSelection(menuController, context, "Royal Ivory",
                        const Color(0xFFF8DBA3), ""),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => menuController.isCustomColor.value = false,
                  child: Card(
                    elevation:
                        menuController.isCustomColor.value == false ? 1 : 0,
                    color: menuController.isCustomColor.value == false
                        ? Theme.of(context).colorScheme.background
                        : Colors.transparent,
                    child: SizedBox(
                      height: 60,
                      width: SizeConfig.screenWidth! * 0.33,
                      child: Center(
                        child: Text(
                          "Regular",
                          style: TextStyle(
                            color: menuController.isCustomColor.value == false
                                ? Colors.teal.shade200
                                : Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => menuController.isCustomColor.value = true,
                  child: Card(
                    elevation:
                        menuController.isCustomColor.value == true ? 1 : 0,
                    color: menuController.isCustomColor.value == true
                        ? Theme.of(context).colorScheme.background
                        : Colors.transparent,
                    child: SizedBox(
                      height: 60,
                      width: SizeConfig.screenWidth! * 0.33,
                      child: Center(
                        child: Text(
                          "Custom",
                          style: TextStyle(
                            color: menuController.isCustomColor.value == true
                                ? Colors.teal.shade200
                                : Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      );
    });
  }
}

colorSelection(
    ModuleController menuController, context, String name, color, image) {
  return InkWell(
    onTap: () {
      menuController.glassColor.value = name;
      menuController.getBasicPrising();
    },
    child: Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: menuController.glassColor.value == name
                  ? Colors.grey
                  : Theme.of(context).colorScheme.onPrimary,
              width: menuController.glassColor.value == name ? 3 : 0)),
      child: CircleAvatar(
        radius: 18,
        backgroundColor: color == "" ? null : color,
        backgroundImage: image == "" ? null : AssetImage(image),
      ),
    ),
  );
}
