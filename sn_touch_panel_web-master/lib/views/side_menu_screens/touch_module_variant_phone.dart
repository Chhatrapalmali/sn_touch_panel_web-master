import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/module_controller.dart';
import '../../helper/size_config.dart';

class TouchModuleVariantPhone extends StatelessWidget {
  final int layoutNumber;

  const TouchModuleVariantPhone({Key? key, required this.layoutNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var menuController = Get.put(MenuController());
    SizeConfig().init(context);
    return GetX<ModuleController>(builder: (menuController) {
      return Visibility(
        visible: menuController.automation.value != "",
        child: Container(
          color: Theme.of(context).colorScheme.background,
          child: menuController.automation.value == "Accessories"
              ? ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Visibility(
                        visible: menuController.panelMaterial.value != "Marble",
                        child: accessoriesSelection(menuController, context,
                            "Socket 1", 'assets/images/AH2.png', () {
                          menuController.onSocket1Click(
                              layoutNumber: layoutNumber);
                        }, menuController.isSocket1Click.value)),
                    Visibility(
                      visible: menuController.panelMaterial.value != "Marble",
                      child: VerticalDivider(
                        color: Theme.of(context).colorScheme.onPrimary,
                        width: 1,
                      ),
                    ),
                    accessoriesSelection(menuController, context, "Socket 2",
                        'assets/images/SKT2.png', () {
                      menuController.onSocket2Click(layoutNumber: layoutNumber);
                    }, menuController.isSocket2Click.value),
                    VerticalDivider(
                      color: Theme.of(context).colorScheme.onPrimary,
                      width: 1,
                    ),
                    accessoriesSelection(
                        menuController, context, "16A Socket", '', () {
                      menuController.on16ASocketClick(
                          layoutNumber: layoutNumber);
                    }, menuController.is16ASocketClick.value),
                    VerticalDivider(
                      color: Theme.of(context).colorScheme.onPrimary,
                      width: 1,
                    ),
                    accessoriesSelection(menuController, context, "USB Port",
                        'assets/images/usb_w.png', () {
                      menuController.onUsbClick(layoutNumber: layoutNumber);
                    }, menuController.isUsbClick.value),
                    VerticalDivider(
                      color: Theme.of(context).colorScheme.onPrimary,
                      width: 1,
                    ),
                    accessoriesSelection(menuController, context, "RJ-11",
                        'assets/images/lan-black.png', () {
                      menuController.onRj11Click(layoutNumber: layoutNumber);
                    }, menuController.isRj11Click.value),
                    VerticalDivider(
                      color: Theme.of(context).colorScheme.onPrimary,
                      width: 1,
                    ),
                    accessoriesSelection(menuController, context, "RJ-45",
                        'assets/images/lan-black.png', () {
                      menuController.onRj45Click(layoutNumber: layoutNumber);
                    }, menuController.isRj45Click.value),
                    VerticalDivider(
                      color: Theme.of(context).colorScheme.onPrimary,
                      width: 1,
                    ),
                    accessoriesSelection(menuController, context, "External 1M",
                        'assets/images/external_1M.png', () {
                      menuController.onExternal1MClick(
                          layoutNumber: layoutNumber);
                    }, menuController.isExternal1MClick.value),
                  ],
                )
              : (menuController.automation.value == "Dummy")
                  ? ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        variantSelectionForTI(menuController, context, "1B",
                            () {
                          menuController.on1BClick(layoutNumber: layoutNumber);
                        }, menuController.is1BClick.value),
                        VerticalDivider(
                          color: Theme.of(context).colorScheme.onPrimary,
                          width: 1,
                        ),
                        variantSelectionForTI(menuController, context, "1C",
                            () {
                          menuController.on1CClick(layoutNumber: layoutNumber);
                        }, menuController.is1CClick.value),
                        VerticalDivider(
                          color: Theme.of(context).colorScheme.onPrimary,
                          width: 1,
                        ),
                        variantSelectionForTI(
                            menuController, context, "2S(Horizontal)", () {
                          menuController.on2XXXHClick(
                              layoutNumber: layoutNumber);
                        }, menuController.is2XXXHClick.value),
                        VerticalDivider(
                          color: Theme.of(context).colorScheme.onPrimary,
                          width: 1,
                        ),
                        variantSelectionForTI(
                            menuController, context, "2S(Vertical)", () {
                          menuController.on2XXXHVerClick(
                              layoutNumber: layoutNumber);
                        }, menuController.is2XXXHVerClick.value),
                        VerticalDivider(
                          color: Theme.of(context).colorScheme.onPrimary,
                          width: 1,
                        ),
                        variantSelectionForTI(menuController, context, "2C",
                            () {
                          menuController.on2cClick(layoutNumber: layoutNumber);
                        }, menuController.is2CClick.value),
                        VerticalDivider(
                          color: Theme.of(context).colorScheme.onPrimary,
                          width: 1,
                        ),
                        variantSelectionForTI(menuController, context, "2S1R",
                            () {
                          menuController.on2XDXXClick(
                              layoutNumber: layoutNumber);
                        }, menuController.is2XDXXClick.value),
                        VerticalDivider(
                          color: Theme.of(context).colorScheme.onPrimary,
                          width: 1,
                        ),
                        variantSelectionForTI(menuController, context, "4S",
                            () {
                          menuController.onS4Click(layoutNumber: layoutNumber);
                        }, menuController.isS4Click.value),
                        if (menuController.is4ModuleClick.isTrue ||
                            menuController.is6ModuleClick.isTrue ||
                            menuController.is8ModuleClick.isTrue ||
                            menuController.is8Module2Click.isTrue ||
                            menuController.is12ModuleClick.isTrue ||
                            menuController.is16ModuleClick.isTrue ||
                            menuController.is18ModuleClick.isTrue)
                          VerticalDivider(
                            color: Theme.of(context).colorScheme.onPrimary,
                            width: 1,
                          ),
                        if (menuController.is4ModuleClick.isTrue ||
                            menuController.is6ModuleClick.isTrue ||
                            menuController.is8ModuleClick.isTrue ||
                            menuController.is8Module2Click.isTrue ||
                            menuController.is12ModuleClick.isTrue ||
                            menuController.is16ModuleClick.isTrue ||
                            menuController.is18ModuleClick.isTrue)
                          variantSelectionForTI(menuController, context, "4S1R",
                              () {
                            menuController.on4XDXXClick(
                                layoutNumber: layoutNumber);
                          }, menuController.is4XDXXClick.value),
                        if (menuController.is6ModuleClick.isTrue ||
                            menuController.is8ModuleClick.isTrue ||
                            menuController.is12ModuleClick.isTrue ||
                            menuController.is16ModuleClick.isTrue ||
                            menuController.is18ModuleClick.isTrue)
                          VerticalDivider(
                            color: Theme.of(context).colorScheme.onPrimary,
                            width: 1,
                          ),
                        if (menuController.is6ModuleClick.isTrue ||
                            menuController.is8ModuleClick.isTrue ||
                            menuController.is12ModuleClick.isTrue ||
                            menuController.is16ModuleClick.isTrue ||
                            menuController.is18ModuleClick.isTrue)
                          variantSelectionForTI(menuController, context, "8S",
                              () {
                            menuController.onS8Click(
                                layoutNumber: layoutNumber);
                          }, menuController.isS8Click.value),
                        if (menuController.is6ModuleClick.isTrue ||
                            menuController.is8ModuleClick.isTrue ||
                            menuController.is12ModuleClick.isTrue ||
                            menuController.is16ModuleClick.isTrue ||
                            menuController.is18ModuleClick.isTrue)
                          VerticalDivider(
                            color: Theme.of(context).colorScheme.onPrimary,
                            width: 1,
                          ),
                        if (menuController.is6ModuleClick.isTrue ||
                            menuController.is8ModuleClick.isTrue ||
                            menuController.is12ModuleClick.isTrue ||
                            menuController.is16ModuleClick.isTrue ||
                            menuController.is18ModuleClick.isTrue)
                          variantSelectionForTI(menuController, context, "8S1R",
                              () {
                            menuController.on8FDNHClick(
                                layoutNumber: layoutNumber);
                          }, menuController.is8FDNHClick.value),
                        if (menuController.is8ModuleClick.isTrue ||
                            menuController.is16ModuleClick.isTrue)
                          VerticalDivider(
                            color: Theme.of(context).colorScheme.onPrimary,
                            width: 1,
                          ),
                        if (menuController.is8ModuleClick.isTrue ||
                            menuController.is16ModuleClick.isTrue)
                          variantSelectionForTI(
                              menuController, context, "10S2R", () {
                            menuController.on10FXNHClick(
                                layoutNumber: layoutNumber);
                          }, menuController.is10FXNHClick.value),
                      ],
                    )
                  : (menuController.automation.value == "Touch Interface")
                      ? ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            variantSelectionForTI(
                                menuController, context, "Non-Automation", () {
                              menuController.variant.value = "NA";
                            }, menuController.variant.value == "NA"),
                            VerticalDivider(
                              color: Theme.of(context).colorScheme.onPrimary,
                              width: 1,
                            ),
                            variantSelectionForTI(menuController, context,
                                "Automation\n(Primary)", () {
                              menuController.variant.value = "AP";
                            }, menuController.variant.value == "AP"),
                            VerticalDivider(
                              color: Theme.of(context).colorScheme.onPrimary,
                              width: 1,
                            ),
                            variantSelectionForTI(menuController, context,
                                "Automation\n(Secondary)", () {
                              menuController.variant.value = "AS";
                            }, menuController.variant.value == "AS"),
                          ],
                        )
                      : ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            variantSelection(
                                menuController, context, "2S(Horizontal)"),
                            VerticalDivider(
                              color: Theme.of(context).colorScheme.onPrimary,
                              width: 1,
                            ),
                            variantSelection(
                                menuController, context, "2S(Vertical)"),
                            VerticalDivider(
                              color: Theme.of(context).colorScheme.onPrimary,
                              width: 1,
                            ),
                            variantSelection(menuController, context, "2S1R"),
                            VerticalDivider(
                              color: Theme.of(context).colorScheme.onPrimary,
                              width: 1,
                            ),
                            variantSelection(menuController, context, "4S"),
                            if (menuController.is4ModuleClick.isTrue ||
                                menuController.is6ModuleClick.isTrue ||
                                menuController.is8ModuleClick.isTrue ||
                                menuController.is8Module2Click.isTrue ||
                                menuController.is12ModuleClick.isTrue ||
                                menuController.is16ModuleClick.isTrue ||
                                menuController.is18ModuleClick.isTrue)
                              VerticalDivider(
                                color: Theme.of(context).colorScheme.onPrimary,
                                width: 1,
                              ),
                            if (menuController.is4ModuleClick.isTrue ||
                                menuController.is6ModuleClick.isTrue ||
                                menuController.is8ModuleClick.isTrue ||
                                menuController.is8Module2Click.isTrue ||
                                menuController.is12ModuleClick.isTrue ||
                                menuController.is16ModuleClick.isTrue ||
                                menuController.is18ModuleClick.isTrue)
                              variantSelection(menuController, context, "4S1R"),
                            if (menuController.is6ModuleClick.isTrue ||
                                menuController.is8ModuleClick.isTrue ||
                                menuController.is12ModuleClick.isTrue ||
                                menuController.is16ModuleClick.isTrue ||
                                menuController.is18ModuleClick.isTrue)
                              VerticalDivider(
                                color: Theme.of(context).colorScheme.onPrimary,
                                width: 1,
                              ),
                            if (menuController.is6ModuleClick.isTrue ||
                                menuController.is8ModuleClick.isTrue ||
                                menuController.is12ModuleClick.isTrue ||
                                menuController.is16ModuleClick.isTrue ||
                                menuController.is18ModuleClick.isTrue)
                              variantSelection(menuController, context, "8S"),
                            if (menuController.is6ModuleClick.isTrue ||
                                menuController.is8ModuleClick.isTrue ||
                                menuController.is12ModuleClick.isTrue ||
                                menuController.is16ModuleClick.isTrue ||
                                menuController.is18ModuleClick.isTrue)
                              VerticalDivider(
                                color: Theme.of(context).colorScheme.onPrimary,
                                width: 1,
                              ),
                            if (menuController.is6ModuleClick.isTrue ||
                                menuController.is8ModuleClick.isTrue ||
                                menuController.is12ModuleClick.isTrue ||
                                menuController.is16ModuleClick.isTrue ||
                                menuController.is18ModuleClick.isTrue)
                              variantSelection(menuController, context, "8S1R"),
                            if (menuController.is8ModuleClick.isTrue ||
                                menuController.is16ModuleClick.isTrue)
                              VerticalDivider(
                                color: Theme.of(context).colorScheme.onPrimary,
                                width: 1,
                              ),
                            if (menuController.is8ModuleClick.isTrue ||
                                menuController.is16ModuleClick.isTrue)
                              variantSelection(
                                  menuController, context, "10S2R"),
                          ],
                        ),
        ),
      );
    });
  }
}

variantSelection(ModuleController menuController, context, String name) {
  return InkWell(
    onTap: () {
      if (menuController.variant.value == name) {
        menuController.variant.value = "";
      } else {
        menuController.variant.value = name;
      }
    },
    child: Container(
      color: menuController.variant.value == name
          ? Theme.of(context).colorScheme.background
          : Colors.transparent,
      child: SizedBox(
        height: 60,
        width: SizeConfig.screenWidth! * 0.33,
        child: Center(
          child: Text(
            name,
            style: TextStyle(
                color: menuController.variant.value == name
                    ? Colors.teal
                    : Theme.of(context).colorScheme.onPrimary,
                fontWeight: menuController.variant.value == name
                    ? FontWeight.bold
                    : FontWeight.normal),
          ),
        ),
      ),
    ),
  );
}

accessoriesSelection(ModuleController menuController, context, String name,
    String imageAsset, tap, isSelected) {
  return InkWell(
    onTap: tap,
    child: Container(
      color: isSelected
          ? Theme.of(context).colorScheme.background
          : Colors.transparent,
      child: SizedBox(
        height: 60,
        width: SizeConfig.screenWidth! * 0.40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 1)),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.black,
                backgroundImage:
                    imageAsset == "" ? null : AssetImage(imageAsset),
              ),
            ),
            Text(
              name,
              style: TextStyle(
                  color: isSelected
                      ? Colors.teal
                      : Theme.of(context).colorScheme.onPrimary,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal),
            )
          ],
        ),
      ),
    ),
  );
}

variantSelectionForTI(
    ModuleController menuController, context, String name, tap, isSelected) {
  return InkWell(
    onTap: tap,
    child: Container(
      color: isSelected
          ? Theme.of(context).colorScheme.background
          : Colors.transparent,
      child: SizedBox(
        height: 60,
        width: SizeConfig.screenWidth! * 0.33,
        child: Center(
          child: Text(
            name,
            style: TextStyle(
                color: isSelected
                    ? Colors.teal
                    : Theme.of(context).colorScheme.onPrimary,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal),
          ),
        ),
      ),
    ),
  );
}
