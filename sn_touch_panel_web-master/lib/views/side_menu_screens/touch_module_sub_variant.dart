import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/helper/custom_selector_phone.dart';
import 'package:sn_touch_panel_web/views/side_menu_screens/touch_module_variant_phone.dart';

import '../../controllers/module_controller.dart';
import '../../helper/size_config.dart';

class TouchModuleSubVariant extends StatelessWidget {
  final int layoutNumber;

  const TouchModuleSubVariant({Key? key, required this.layoutNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var menuController = Get.put(MenuController());
    SizeConfig().init(context);
    return GetX<ModuleController>(builder: (menuController) {
      if (menuController.variant.value == "2S(Horizontal)") {
        return Visibility(
          visible: menuController.variant.value != "",
          child: Container(
            color: Theme.of(context).colorScheme.background,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                subVariantSelection(menuController, context, "2XXXH", () {
                  menuController.on2XXXHClick(layoutNumber: layoutNumber);
                }, menuController.is2XXXHClick.value),
                VerticalDivider(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1,
                ),
                subVariantSelection(menuController, context, "2XXNX", () {
                  menuController.on2XXNXClick(layoutNumber: layoutNumber);
                }, menuController.is2XXNXClick.value),
                VerticalDivider(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1,
                ),
                subVariantSelection(menuController, context, "1C", () {
                  menuController.on1CClick(layoutNumber: layoutNumber);
                }, menuController.is1CClick.value),
                Visibility(
                  visible: menuController.automation.value != "Wifi & Remote",
                  child: VerticalDivider(
                    color: Theme.of(context).colorScheme.onPrimary,
                    width: 1,
                  ),
                ),
                Visibility(
                  visible: menuController.automation.value != "Wifi & Remote",
                  child: subVariantSelection(menuController, context, "1B", () {
                    menuController.on1BClick(layoutNumber: layoutNumber);
                  }, menuController.is1BClick.value),
                )
              ],
            ),
          ),
        );
      } else if (menuController.variant.value == "2S(Vertical)") {
        return Visibility(
          visible: menuController.variant.value != "",
          child: Container(
            color: Theme.of(context).colorScheme.background,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                subVariantSelection(menuController, context, "2XXXH", () {
                  menuController.on2XXXHVerClick(layoutNumber: layoutNumber);
                }, menuController.is2XXXHVerClick.value),
                VerticalDivider(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1,
                ),
                subVariantSelection(menuController, context, "2XXNX", () {
                  menuController.on2XXNXVerClick(layoutNumber: layoutNumber);
                }, menuController.is2XXNXVerClick.value),
                VerticalDivider(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1,
                ),
                subVariantSelection(menuController, context, "1C", () {
                  menuController.on1CVerClick(layoutNumber: layoutNumber);
                }, menuController.is1CVerClick.value),
              ],
            ),
          ),
        );
      } else if (menuController.variant.value == "2S1R") {
        return Container(
          color: Theme.of(context).colorScheme.background,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              subVariantSelection(menuController, context, "2XDXX", () {
                menuController.on2XDXXClick(layoutNumber: layoutNumber);
              }, menuController.is2XDXXClick.value),
            ],
          ),
        );
      } else if (menuController.variant.value == "4S") {
        return Container(
          color: Theme.of(context).colorScheme.background,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              subVariantSelection(menuController, context, "4XXNX", () {
                menuController.on4XXNXClick(layoutNumber: layoutNumber);
              }, menuController.is4XXNXClick.value),
              VerticalDivider(
                color: Theme.of(context).colorScheme.onPrimary,
                width: 1,
              ),
              subVariantSelection(menuController, context, "S.4", () {
                menuController.onS4Click(layoutNumber: layoutNumber);
              }, menuController.isS4Click.value),
              VerticalDivider(
                color: Theme.of(context).colorScheme.onPrimary,
                width: 1,
              ),
              subVariantSelection(menuController, context, "2C", () {
                menuController.on2cClick(layoutNumber: layoutNumber);
              }, menuController.is2CClick.value),
            ],
          ),
        );
      } else if (menuController.variant.value == "4S1R") {
        return Container(
          color: Theme.of(context).colorScheme.background,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              subVariantSelection(menuController, context, "4XDXX", () {
                menuController.on4XDXXClick(layoutNumber: layoutNumber);
              }, menuController.is4XDXXClick.value),
              VerticalDivider(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              subVariantSelection(menuController, context, "4FDNH", () {
                menuController.on4FDNHClick(layoutNumber: layoutNumber);
              }, menuController.is4FDNHClick.value),
            ],
          ),
        );
      } else if (menuController.variant.value == "8S") {
        return Container(
          color: Theme.of(context).colorScheme.background,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              subVariantSelection(menuController, context, "8XXNH", () {
                menuController.on8XXNHClick(layoutNumber: layoutNumber);
              }, menuController.is8XXNHClick.value),
              VerticalDivider(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              subVariantSelection(menuController, context, "S.8", () {
                menuController.onS8Click(layoutNumber: layoutNumber);
              }, menuController.isS8Click.value),
            ],
          ),
        );
      } else if (menuController.variant.value == "8S1R") {
        return Container(
          color: Theme.of(context).colorScheme.background,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              subVariantSelection(menuController, context, "8FDNH", () {
                menuController.on8FDNHClick(layoutNumber: layoutNumber);
              }, menuController.is8FDNHClick.value),
              VerticalDivider(
                color: Theme.of(context).colorScheme.onPrimary,
                width: 1,
              ),
              subVariantSelection(menuController, context, "8XDNH", () {
                menuController.on8XDNHClick(layoutNumber: layoutNumber);
              }, menuController.is8XDNHClick.value),
              VerticalDivider(
                color: Theme.of(context).colorScheme.onPrimary,
                width: 1,
              ),
              subVariantSelection(menuController, context, "8FXNH", () {
                menuController.on8FXNHClick(layoutNumber: layoutNumber);
              }, menuController.is8FXNHClick.value),
            ],
          ),
        );
      } else if (menuController.variant.value == "10S2R") {
        return Center(
          child: Container(
            color: Theme.of(context).colorScheme.background,
            child: subVariantSelection(menuController, context, "10FXNH", () {
              menuController.on10FXNHClick(layoutNumber: layoutNumber);
            }, menuController.is10FXNHClick.value),
          ),
        );
      } else if (menuController.variant.value == "NA") {
        return Visibility(
          visible: menuController.variant.value != "",
          child: Container(
            color: Theme.of(context).colorScheme.background,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                variantSelectionForTI(menuController, context, "1B", () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value = ".1B(Non-Auto)";
                  menuController.on1BClick(layoutNumber: layoutNumber);
                }, menuController.is1BClick.value),
                VerticalDivider(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1,
                ),
                variantSelectionForTI(menuController, context, "1C", () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value = ".1C(Non-Auto)";
                  menuController.on1CClick(layoutNumber: layoutNumber);
                }, menuController.is1CClick.value),
                VerticalDivider(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1,
                ),
                variantSelectionForTI(menuController, context, "2C", () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value = ".2C(Non-Auto)";
                  menuController.on2cClick(layoutNumber: layoutNumber);
                }, menuController.is2CClick.value),
                VerticalDivider(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1,
                ),
                variantSelectionForTI(menuController, context, "2S(Horizontal)",
                    () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value =
                      ".2S(Horizontal)(Non-Auto)";
                  menuController.on2XXXHClick(layoutNumber: layoutNumber);
                }, menuController.is2XXXHClick.value),
                VerticalDivider(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1,
                ),
                variantSelectionForTI(menuController, context, "2S(Vertical)",
                    () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value = ".2S(Vertical)(Non-Auto)";
                  menuController.on2XXXHVerClick(layoutNumber: layoutNumber);
                }, menuController.is2XXXHVerClick.value),
                VerticalDivider(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1,
                ),
                variantSelectionForTI(menuController, context, "2S1R", () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value = ".2S1R(Non-Auto)";
                  menuController.on2XDXXClick(layoutNumber: layoutNumber);
                }, menuController.is2XDXXClick.value),
                VerticalDivider(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1,
                ),
                variantSelectionForTI(menuController, context, "4S", () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value = ".4S(Non-Auto)";
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
                  variantSelectionForTI(menuController, context, "4S1R", () {
                    menuController.automation.value = "TI";
                    menuController.tiAutomation.value = ".4S1R(Non-Auto)";
                    menuController.on4XDXXClick(layoutNumber: layoutNumber);
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
                  variantSelectionForTI(menuController, context, "8S", () {
                    menuController.automation.value = "TI";
                    menuController.tiAutomation.value = ".8S(Non-Auto)";
                    menuController.onS8Click(layoutNumber: layoutNumber);
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
                  variantSelectionForTI(menuController, context, "8S1R", () {
                    menuController.automation.value = "TI";
                    menuController.tiAutomation.value = ".8S1R(Non-Auto)";
                    menuController.on8FDNHClick(layoutNumber: layoutNumber);
                  }, menuController.is8FDNHClick.value),
                if (menuController.is8ModuleClick.isTrue ||
                    menuController.is16ModuleClick.isTrue)
                  VerticalDivider(
                    color: Theme.of(context).colorScheme.onPrimary,
                    width: 1,
                  ),
                if (menuController.is8ModuleClick.isTrue ||
                    menuController.is16ModuleClick.isTrue)
                  variantSelectionForTI(menuController, context, "10S2R", () {
                    menuController.automation.value = "TI";
                    menuController.tiAutomation.value = ".10S2R(Non-Auto)";
                    menuController.on10FXNHClick(layoutNumber: layoutNumber);
                  }, menuController.is10FXNHClick.value),
              ],
            ),
          ),
        );
      } else if (menuController.variant.value == "AP") {
        return Visibility(
          visible: menuController.variant.value != "",
          child: Container(
            color: Theme.of(context).colorScheme.background,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                variantSelectionForTI(menuController, context, "1C", () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value = ".1C(Auto(Pri))";
                  menuController.on1CClick(layoutNumber: layoutNumber);
                }, menuController.is1CClick.value),
                VerticalDivider(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1,
                ),
                variantSelectionForTI(menuController, context, "2C", () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value = ".2C(Auto(Pri))";
                  menuController.on2cClick(layoutNumber: layoutNumber);
                }, menuController.is2CClick.value),
                VerticalDivider(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1,
                ),
                variantSelectionForTI(menuController, context, "2S(Horizontal)",
                    () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value =
                      ".2S(Horizontal)(Auto(Pri))";
                  menuController.on2XXXHClick(layoutNumber: layoutNumber);
                }, menuController.is2XXXHClick.value),
                VerticalDivider(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1,
                ),
                variantSelectionForTI(menuController, context, "2S(Vertical)",
                    () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value =
                      ".2S(Vertical)(Auto(Pri))";
                  menuController.on2XXXHVerClick(layoutNumber: layoutNumber);
                }, menuController.is2XXXHVerClick.value),
                VerticalDivider(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1,
                ),
                variantSelectionForTI(menuController, context, "2S1R", () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value = ".2S1R(Auto(Pri))";
                  menuController.on2XDXXClick(layoutNumber: layoutNumber);
                }, menuController.is2XDXXClick.value),
                VerticalDivider(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1,
                ),
                variantSelectionForTI(menuController, context, "4S", () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value = ".4S(Auto(Pri))";
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
                  variantSelectionForTI(menuController, context, "4S1R", () {
                    menuController.automation.value = "TI";
                    menuController.tiAutomation.value = ".4S1R(Auto(Pri))";
                    menuController.on4XDXXClick(layoutNumber: layoutNumber);
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
                  variantSelectionForTI(menuController, context, "8S", () {
                    menuController.automation.value = "TI";
                    menuController.tiAutomation.value = ".8S(Auto(Pri))";
                    menuController.onS8Click(layoutNumber: layoutNumber);
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
                  variantSelectionForTI(menuController, context, "8S1R", () {
                    menuController.automation.value = "TI";
                    menuController.tiAutomation.value = ".8S1R(Auto(Pri))";
                    menuController.on8FDNHClick(layoutNumber: layoutNumber);
                  }, menuController.is8FDNHClick.value),
                if (menuController.is8ModuleClick.isTrue ||
                    menuController.is16ModuleClick.isTrue)
                  VerticalDivider(
                    color: Theme.of(context).colorScheme.onPrimary,
                    width: 1,
                  ),
                if (menuController.is8ModuleClick.isTrue ||
                    menuController.is16ModuleClick.isTrue)
                  variantSelectionForTI(menuController, context, "10S2R", () {
                    menuController.automation.value = "TI";
                    menuController.tiAutomation.value = ".10S2R(Auto(Pri))";
                    menuController.on10FXNHClick(layoutNumber: layoutNumber);
                  }, menuController.is10FXNHClick.value),
              ],
            ),
          ),
        );
      } else if (menuController.variant.value == "AS") {
        return Visibility(
          visible: menuController.variant.value != "",
          child: Container(
            color: Theme.of(context).colorScheme.background,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                variantSelectionForTI(menuController, context, "1C", () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value = ".1C(Auto(Sec))";
                  menuController.on1CClick(layoutNumber: layoutNumber);
                }, menuController.is1CClick.value),
                VerticalDivider(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1,
                ),
                variantSelectionForTI(menuController, context, "2C", () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value = ".2C(Auto(Sec))";
                  menuController.on2cClick(layoutNumber: layoutNumber);
                }, menuController.is2CClick.value),
                VerticalDivider(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1,
                ),
                CustomSelectorPhone(
                    title: "2S(Horizontal)",
                    menuController: menuController,
                    onClickedItem: () {
                      menuController.on2XXXHClick(layoutNumber: layoutNumber);
                    },
                    isSelected: menuController.is2XXXHClick.value),
                VerticalDivider(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1,
                ),
                CustomSelectorPhone(
                    title: "2S(Vertical)",
                    menuController: menuController,
                    onClickedItem: () {
                      menuController.on2XXXHVerClick(
                          layoutNumber: layoutNumber);
                    },
                    isSelected: menuController.is2XXXHVerClick.value),
                VerticalDivider(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1,
                ),
                CustomSelectorPhone(
                    title: "2S1R",
                    menuController: menuController,
                    onClickedItem: () {
                      menuController.on2XDXXClick(layoutNumber: layoutNumber);
                    },
                    isSelected: menuController.is2XDXXClick.value),
                VerticalDivider(
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1,
                ),
                CustomSelectorPhone(
                    title: "4S",
                    menuController: menuController,
                    onClickedItem: () {
                      menuController.onS4Click(layoutNumber: layoutNumber);
                    },
                    isSelected: menuController.isS4Click.value),
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
                  CustomSelectorPhone(
                      title: "4S1R",
                      menuController: menuController,
                      onClickedItem: () {
                        menuController.on4XDXXClick(layoutNumber: layoutNumber);
                      },
                      isSelected: menuController.is4XDXXClick.value),
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
                  CustomSelectorPhone(
                      title: "8S",
                      menuController: menuController,
                      onClickedItem: () {
                        menuController.onS8Click(layoutNumber: layoutNumber);
                      },
                      isSelected: menuController.isS8Click.value),
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
                  CustomSelectorPhone(
                      title: "8S1R",
                      menuController: menuController,
                      onClickedItem: () {
                        menuController.on8FDNHClick(layoutNumber: layoutNumber);
                      },
                      isSelected: menuController.is8FDNHClick.value),
                if (menuController.is8ModuleClick.isTrue ||
                    menuController.is16ModuleClick.isTrue)
                  VerticalDivider(
                    color: Theme.of(context).colorScheme.onPrimary,
                    width: 1,
                  ),
                if (menuController.is8ModuleClick.isTrue ||
                    menuController.is16ModuleClick.isTrue)
                  CustomSelectorPhone(
                      title: "8S1R",
                      menuController: menuController,
                      onClickedItem: () {
                        menuController.on10FXNHClick(
                            layoutNumber: layoutNumber);
                      },
                      isSelected: menuController.is10FXNHClick.value),
              ],
            ),
          ),
        );
      } else {
        return const SizedBox();
      }
    });
  }
}

subVariantSelection(
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
