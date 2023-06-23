import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';
import 'package:sn_touch_panel_web/views/home_screen/components/drawer_list_tile.dart';

import '../../../helper/custom_selector.dart';
import '../../../helper/marquee_widget.dart';

class SelectModuleMenu extends StatelessWidget {
  final int layoutNumber;

  const SelectModuleMenu({Key? key, required this.layoutNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<ModuleController>(builder: (menuController) {
      return ListView(
        children: [
          selectModuleExpansion(
              menuController, context, "Wifi & Remote", layoutNumber),
          selectModuleExpansion(
              menuController, context, "Remote", layoutNumber),
          selectModuleForTI(
              menuController, context, "Touch Interface", layoutNumber),
          selectModuleForDummy(menuController, context, "Dummy", layoutNumber),
          Visibility(
            visible: menuController.isModularViewOn.isFalse &&
                menuController.panelMaterial.value != "Glass",
            child: ExpansionTile(
              initiallyExpanded: false,
              title: Text(
                'Accessories',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText2!.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                Visibility(
                  visible: menuController.panelMaterial.value != "Marble",
                  child: DrawerListTile(
                    title: "Socket 1",
                    subTitle: '',
                    tileColor: menuController.setDisableColor(layoutNumber)
                        ? Colors.white54
                        : menuController.isSocket1Click.value
                            ? Colors.teal.shade200
                            : Colors.transparent,
                    leading: Image.asset(
                      'assets/images/AH1.png',
                      width: 20,
                      height: 20,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    press: () {
                      menuController.setDisableColor(layoutNumber)
                          ? null
                          : menuController.onSocket1Click(
                              layoutNumber: layoutNumber);
                    },
                    trailing: const SizedBox(),
                  ),
                ),
                DrawerListTile(
                  title: "Socket 2",
                  subTitle: '',
                  tileColor: menuController.setDisableColor(layoutNumber)
                      ? Colors.white54
                      : menuController.isSocket2Click.value
                          ? Colors.teal.shade200
                          : Colors.transparent,
                  leading: Image.asset(
                    'assets/images/SKT2.png',
                    width: 20,
                    height: 20,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  press: () {
                    menuController.setDisableColor(layoutNumber)
                        ? null
                        : menuController.onSocket2Click(
                            layoutNumber: layoutNumber);
                  },
                  trailing: const SizedBox(),
                ),
                DrawerListTile(
                  title: "16A Socket",
                  subTitle: '',
                  tileColor: menuController.setDisableColor(layoutNumber)
                      ? Colors.white54
                      : menuController.is16ASocketClick.value
                          ? Colors.teal.shade200
                          : Colors.transparent,
                  leading: Container(
                    width: 20,
                    height: 20,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  press: () {
                    menuController.setDisableColor(layoutNumber)
                        ? null
                        : menuController.on16ASocketClick(
                            layoutNumber: layoutNumber);
                  },
                  trailing: const SizedBox(),
                ),
                DrawerListTile(
                  title: "USB Port",
                  subTitle: '',
                  tileColor: menuController.setDisableColor(layoutNumber)
                      ? Colors.white54
                      : menuController.isUsbClick.value
                          ? Colors.teal.shade200
                          : Colors.transparent,
                  leading: Image.asset(
                    'assets/images/usb_b.png',
                    width: 20,
                    height: 20,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  press: () {
                    menuController.setDisableColor(layoutNumber)
                        ? null
                        : menuController.onUsbClick(layoutNumber: layoutNumber);
                  },
                  trailing: const SizedBox(),
                ),
                DrawerListTile(
                  title: "RJ-11",
                  subTitle: '',
                  tileColor: menuController.setDisableColor(layoutNumber)
                      ? Colors.white54
                      : menuController.isRj11Click.value
                          ? Colors.teal.shade200
                          : Colors.transparent,
                  leading: Image.asset(
                    'assets/images/lan-black.png',
                    width: 20,
                    height: 20,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  press: () {
                    menuController.setDisableColor(layoutNumber)
                        ? null
                        : menuController.onRj11Click(
                            layoutNumber: layoutNumber);
                  },
                  trailing: const SizedBox(),
                ),
                DrawerListTile(
                  title: "RJ-45",
                  subTitle: '',
                  tileColor: menuController.setDisableColor(layoutNumber)
                      ? Colors.white54
                      : menuController.isRj45Click.value
                          ? Colors.teal.shade200
                          : Colors.transparent,
                  leading: Image.asset(
                    'assets/images/lan-black.png',
                    width: 20,
                    height: 20,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  press: () {
                    menuController.setDisableColor(layoutNumber)
                        ? null
                        : menuController.onRj45Click(
                            layoutNumber: layoutNumber);
                  },
                  trailing: const SizedBox(),
                ),
                DrawerListTile(
                  title: "External 1M",
                  subTitle: '',
                  tileColor: menuController.setDisableColor(layoutNumber)
                      ? Colors.white54
                      : menuController.isExternal1MClick.value
                          ? Colors.teal.shade200
                          : Colors.transparent,
                  leading: Image.asset(
                    'assets/images/external_1M.png',
                    width: 20,
                    height: 20,
                    color: Colors.black,
                  ),
                  press: () {
                    menuController.setDisableColor(layoutNumber)
                        ? null
                        : menuController.onExternal1MClick(
                            layoutNumber: layoutNumber);
                  },
                  trailing: const SizedBox(),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}

selectModuleExpansion(
    ModuleController menuController, context, String name, layoutNumber) {
  return ExpansionTile(
    initiallyExpanded: false,
    title: MarqueeWidget(
      child: Text(
        name,
        style: TextStyle(
          color: Theme.of(context).textTheme.bodyText2!.color,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    children: [
      // 2S
      ExpansionTile(
        initiallyExpanded: false,
        leading: const Icon(Icons.view_module),
        title: Text(
          '2S',
          style: TextStyle(
            color: Theme.of(context).textTheme.bodyText2!.color,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          ExpansionTile(
            initiallyExpanded: false,
            title: Text(
              'Horizontal',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText2!.color,
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              DrawerListTile(
                title: "2XXXH",
                leading: const SizedBox(),
                tileColor: menuController.setDisableColor(layoutNumber)
                    ? Colors.white54
                    : menuController.is2XXXHClick.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                press: () {
                  menuController.automation.value = name;
                  menuController.setDisableColor(layoutNumber)
                      ? null
                      : menuController.on2XXXHClick(layoutNumber: layoutNumber);
                },
                trailing: const SizedBox(),
                subTitle: '',
              ),
              DrawerListTile(
                title: "2XXNX",
                subTitle: '',
                leading: const SizedBox(),
                tileColor: menuController.setDisableColor(layoutNumber)
                    ? Colors.white54
                    : menuController.is2XXNXClick.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                press: () {
                  menuController.automation.value = name;
                  menuController.setDisableColor(layoutNumber)
                      ? null
                      : menuController.on2XXNXClick(layoutNumber: layoutNumber);
                },
                trailing: const SizedBox(),
              ),
              DrawerListTile(
                title: "1C",
                subTitle: '',
                leading: const SizedBox(),
                tileColor: menuController.setDisableColor(layoutNumber)
                    ? Colors.white54
                    : menuController.is1CClick.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                press: () {
                  menuController.automation.value = name;
                  menuController.setDisableColor(layoutNumber)
                      ? null
                      : menuController.on1CClick(layoutNumber: layoutNumber);
                },
                trailing: const SizedBox(),
              ),
              Visibility(
                visible: name != "Wifi & Remote",
                child: DrawerListTile(
                  title: "1B",
                  subTitle: '',
                  leading: const SizedBox(),
                  tileColor: menuController.setDisableColor(layoutNumber)
                      ? Colors.white54
                      : menuController.is1BClick.value
                          ? Colors.teal.shade200
                          : Colors.transparent,
                  press: () {
                    menuController.automation.value = name;
                    menuController.setDisableColor(layoutNumber)
                        ? null
                        : menuController.on1BClick(layoutNumber: layoutNumber);
                  },
                  trailing: const SizedBox(),
                ),
              ),
            ],
          ),
          ExpansionTile(
            initiallyExpanded: false,
            title: Text(
              'Vertical',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText2!.color,
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              DrawerListTile(
                title: "2XXXH",
                leading: const SizedBox(),
                tileColor: menuController.setDisableColor(layoutNumber)
                    ? Colors.white54
                    : menuController.is2XXXHVerClick.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                press: () {
                  menuController.automation.value = name;
                  menuController.setDisableColor(layoutNumber)
                      ? null
                      : menuController.on2XXXHVerClick(
                          layoutNumber: layoutNumber);
                },
                trailing: const SizedBox(),
                subTitle: '',
              ),
              DrawerListTile(
                title: "2XXNX",
                subTitle: '',
                leading: const SizedBox(),
                tileColor: menuController.setDisableColor(layoutNumber)
                    ? Colors.white54
                    : menuController.is2XXNXVerClick.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                press: () {
                  menuController.automation.value = name;
                  menuController.setDisableColor(layoutNumber)
                      ? null
                      : menuController.on2XXNXVerClick(
                          layoutNumber: layoutNumber);
                },
                trailing: const SizedBox(),
              ),
              DrawerListTile(
                title: "1C",
                subTitle: '',
                leading: const SizedBox(),
                tileColor: menuController.setDisableColor(layoutNumber)
                    ? Colors.white54
                    : menuController.is1CVerClick.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                press: () {
                  menuController.automation.value = name;
                  menuController.setDisableColor(layoutNumber)
                      ? null
                      : menuController.on1CVerClick(layoutNumber: layoutNumber);
                },
                trailing: const SizedBox(),
              ),
            ],
          ),
        ],
      ),
      // 2S 1R
      ExpansionTile(
        initiallyExpanded: false,
        leading: const Icon(Icons.view_module),
        title: Text(
          '2S 1R',
          style: TextStyle(
            color: Theme.of(context).textTheme.bodyText2!.color,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          DrawerListTile(
            title: "2XDXX",
            subTitle: '',
            leading: const SizedBox(),
            tileColor: menuController.setDisableColor(layoutNumber)
                ? Colors.white54
                : menuController.is2XDXXClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
            press: () {
              menuController.automation.value = name;
              menuController.setDisableColor(layoutNumber)
                  ? null
                  : menuController.on2XDXXClick(layoutNumber: layoutNumber);
            },
            trailing: const SizedBox(),
          ),
        ],
      ),
      // 4S
      ExpansionTile(
        initiallyExpanded: false,
        leading: const Icon(Icons.view_module),
        title: Text(
          '4S',
          style: TextStyle(
            color: Theme.of(context).textTheme.bodyText2!.color,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          DrawerListTile(
            title: "4XXNX",
            subTitle: '',
            tileColor: menuController.setDisableColor(layoutNumber)
                ? Colors.white54
                : menuController.is4XXNXClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
            leading: const SizedBox(),
            press: () {
              menuController.automation.value = name;
              menuController.setDisableColor(layoutNumber)
                  ? null
                  : menuController.on4XXNXClick(layoutNumber: layoutNumber);
            },
            trailing: const SizedBox(),
          ),
          DrawerListTile(
            title: "S.4",
            subTitle: '',
            tileColor: menuController.setDisableColor(layoutNumber)
                ? Colors.white54
                : menuController.isS4Click.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
            leading: const SizedBox(),
            press: () {
              menuController.automation.value = name;
              menuController.setDisableColor(layoutNumber)
                  ? null
                  : menuController.onS4Click(layoutNumber: layoutNumber);
            },
            trailing: const SizedBox(),
          ),
          DrawerListTile(
            title: "2C",
            subTitle: '',
            tileColor: menuController.setDisableColor(layoutNumber)
                ? Colors.white54
                : menuController.is2CClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
            leading: const SizedBox(),
            press: () {
              menuController.automation.value = name;
              menuController.setDisableColor(layoutNumber)
                  ? null
                  : menuController.on2cClick(layoutNumber: layoutNumber);
            },
            trailing: const SizedBox(),
          ),
        ],
      ),
      //4S 1R
      if (menuController.is4ModuleClick.isTrue ||
          menuController.is6ModuleClick.isTrue ||
          menuController.is8ModuleClick.isTrue ||
          menuController.is8Module2Click.isTrue ||
          menuController.is12ModuleClick.isTrue ||
          menuController.is16ModuleClick.isTrue ||
          menuController.is18ModuleClick.isTrue)
        ExpansionTile(
          initiallyExpanded: false,
          leading: const Icon(Icons.view_module),
          title: Text(
            '4S 1R',
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText2!.color,
              fontWeight: FontWeight.bold,
            ),
          ),
          children: [
            DrawerListTile(
              title: "4XDXX",
              subTitle: '',
              tileColor: menuController.setDisableColor(layoutNumber)
                  ? Colors.white54
                  : menuController.is4XDXXClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = name;
                menuController.setDisableColor(layoutNumber)
                    ? null
                    : menuController.on4XDXXClick(layoutNumber: layoutNumber);
              },
              trailing: const SizedBox(),
            ),
            DrawerListTile(
              title: "4FDNH",
              subTitle: '',
              tileColor: menuController.setDisableColor(layoutNumber)
                  ? Colors.white54
                  : menuController.is4FDNHClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = name;
                menuController.setDisableColor(layoutNumber)
                    ? null
                    : menuController.on4FDNHClick(layoutNumber: layoutNumber);
              },
              trailing: const SizedBox(),
            ),
          ],
        ),
      if (menuController.is6ModuleClick.isTrue ||
          menuController.is8ModuleClick.isTrue ||
          menuController.is12ModuleClick.isTrue ||
          menuController.is16ModuleClick.isTrue ||
          menuController.is18ModuleClick.isTrue)
        ExpansionTile(
          initiallyExpanded: false,
          leading: const Icon(Icons.view_module),
          title: Text(
            '8S',
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText2!.color,
              fontWeight: FontWeight.bold,
            ),
          ),
          children: [
            DrawerListTile(
              title: "8XXNH",
              subTitle: '',
              tileColor: menuController.setDisableColor(layoutNumber)
                  ? Colors.white54
                  : menuController.is8XXNHClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = name;
                menuController.setDisableColor(layoutNumber)
                    ? null
                    : menuController.on8XXNHClick(layoutNumber: layoutNumber);
              },
              trailing: const SizedBox(),
            ),
            DrawerListTile(
              title: "S.8",
              subTitle: '',
              tileColor: menuController.setDisableColor(layoutNumber)
                  ? Colors.white54
                  : menuController.isS8Click.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = name;
                menuController.setDisableColor(layoutNumber)
                    ? null
                    : menuController.onS8Click(layoutNumber: layoutNumber);
              },
              trailing: const SizedBox(),
            ),
          ],
        ),
      if (menuController.is6ModuleClick.isTrue ||
          menuController.is8ModuleClick.isTrue ||
          menuController.is12ModuleClick.isTrue ||
          menuController.is16ModuleClick.isTrue ||
          menuController.is18ModuleClick.isTrue)
        ExpansionTile(
          initiallyExpanded: false,
          leading: const Icon(Icons.view_module),
          title: Text(
            '8S 1R',
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText2!.color,
              fontWeight: FontWeight.bold,
            ),
          ),
          children: [
            DrawerListTile(
              title: "8FDNH",
              subTitle: '',
              tileColor: menuController.setDisableColor(layoutNumber)
                  ? Colors.white54
                  : menuController.is8FDNHClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = name;
                menuController.setDisableColor(layoutNumber)
                    ? null
                    : menuController.on8FDNHClick(layoutNumber: layoutNumber);
              },
              trailing: const SizedBox(),
            ),
            DrawerListTile(
              title: "8XDNH",
              subTitle: '',
              tileColor: menuController.setDisableColor(layoutNumber)
                  ? Colors.white54
                  : menuController.is8XDNHClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = name;
                menuController.setDisableColor(layoutNumber)
                    ? null
                    : menuController.on8XDNHClick(layoutNumber: layoutNumber);
              },
              trailing: const SizedBox(),
            ),
            DrawerListTile(
              title: "8FXNH",
              subTitle: '',
              tileColor: menuController.setDisableColor(layoutNumber)
                  ? Colors.white54
                  : menuController.is8FXNHClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = name;
                menuController.setDisableColor(layoutNumber)
                    ? null
                    : menuController.on8FXNHClick(layoutNumber: layoutNumber);
              },
              trailing: const SizedBox(),
            ),
          ],
        ),

      if (menuController.is8ModuleClick.isTrue ||
          menuController.is16ModuleClick.isTrue)
        ExpansionTile(
          initiallyExpanded: false,
          leading: const Icon(Icons.view_module),
          title: Text(
            '10S 2R',
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText2!.color,
              fontWeight: FontWeight.bold,
            ),
          ),
          children: [
            DrawerListTile(
              title: "10FXNH",
              subTitle: '',
              tileColor: menuController.setDisableColor(layoutNumber)
                  ? Colors.white54
                  : menuController.is10FXNHClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = name;
                menuController.setDisableColor(layoutNumber)
                    ? null
                    : menuController.on10FXNHClick(layoutNumber: layoutNumber);
              },
              trailing: const SizedBox(),
            ),
          ],
        ),
    ],
  );
}

selectModuleForTI(
    ModuleController menuController, context, String name, layoutNumber) {
  return ExpansionTile(
    initiallyExpanded: false,
    title: MarqueeWidget(
      child: Text(
        name,
        style: TextStyle(
          color: Theme.of(context).textTheme.bodyText2!.color,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    children: [
      ExpansionTile(
        initiallyExpanded: false,
        title: MarqueeWidget(
          child: Text(
            "Non Automation",
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText2!.color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        children: [
          // 2S
          DrawerListTile(
            title: "1B",
            subTitle: '',
            leading: const SizedBox(),
            tileColor: menuController.setDisableColor(layoutNumber)
                ? Colors.white54
                : menuController.is1BClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
            press: () {
              menuController.automation.value = "TI";
              menuController.tiAutomation.value = ".1B(Non-Auto)";
              menuController.setDisableColor(layoutNumber)
                  ? null
                  : menuController.on1BClick(layoutNumber: layoutNumber);
            },
            trailing: const SizedBox(),
          ),
          DrawerListTile(
            title: "1C",
            subTitle: '',
            leading: const SizedBox(),
            tileColor: menuController.setDisableColor(layoutNumber)
                ? Colors.white54
                : menuController.is1CClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
            press: () {
              menuController.automation.value = "TI";
              menuController.tiAutomation.value = ".1C(Non-Auto)";
              menuController.setDisableColor(layoutNumber)
                  ? null
                  : menuController.on1CClick(layoutNumber: layoutNumber);
            },
            trailing: const SizedBox(),
          ),
          DrawerListTile(
            title: "2C",
            subTitle: '',
            tileColor: menuController.setDisableColor(layoutNumber)
                ? Colors.white54
                : menuController.is2CClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
            leading: const SizedBox(),
            press: () {
              menuController.automation.value = "TI";
              menuController.tiAutomation.value = ".2C(Non-Auto)";
              menuController.setDisableColor(layoutNumber)
                  ? null
                  : menuController.on2cClick(layoutNumber: layoutNumber);
            },
            trailing: const SizedBox(),
          ),
          DrawerListTile(
            title: "2S(Horizontal)",
            leading: const SizedBox(),
            tileColor: menuController.setDisableColor(layoutNumber)
                ? Colors.white54
                : menuController.is2XXXHClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
            press: () {
              menuController.automation.value = "TI";
              menuController.tiAutomation.value = ".2S(Horizontal)(Non-Auto)";
              menuController.setDisableColor(layoutNumber)
                  ? null
                  : menuController.on2XXXHClick(layoutNumber: layoutNumber);
            },
            trailing: const SizedBox(),
            subTitle: '',
          ),
          DrawerListTile(
            title: "2S(Vertical)",
            leading: const SizedBox(),
            tileColor: menuController.setDisableColor(layoutNumber)
                ? Colors.white54
                : menuController.is2XXXHVerClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
            press: () {
              menuController.automation.value = "TI";
              menuController.tiAutomation.value = ".2S(Vertical)(Non-Auto)";
              menuController.setDisableColor(layoutNumber)
                  ? null
                  : menuController.on2XXXHVerClick(layoutNumber: layoutNumber);
            },
            trailing: const SizedBox(),
            subTitle: '',
          ),
          // 2S 1R
          DrawerListTile(
            title: "2S 1R",
            subTitle: '',
            leading: const SizedBox(),
            tileColor: menuController.setDisableColor(layoutNumber)
                ? Colors.white54
                : menuController.is2XDXXClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
            press: () {
              menuController.automation.value = "TI";
              menuController.tiAutomation.value = ".2S1R(Non-Auto)";
              menuController.setDisableColor(layoutNumber)
                  ? null
                  : menuController.on2XDXXClick(layoutNumber: layoutNumber);
            },
            trailing: const SizedBox(),
          ),
          // 4S
          DrawerListTile(
            title: "4S",
            subTitle: '',
            tileColor: menuController.setDisableColor(layoutNumber)
                ? Colors.white54
                : menuController.isS4Click.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
            leading: const SizedBox(),
            press: () {
              menuController.automation.value = "TI";
              menuController.tiAutomation.value = ".4S(Non-Auto)";
              menuController.setDisableColor(layoutNumber)
                  ? null
                  : menuController.onS4Click(layoutNumber: layoutNumber);
            },
            trailing: const SizedBox(),
          ),
          //4S 1R
          if (menuController.is4ModuleClick.isTrue ||
              menuController.is6ModuleClick.isTrue ||
              menuController.is8ModuleClick.isTrue ||
              menuController.is8Module2Click.isTrue ||
              menuController.is12ModuleClick.isTrue ||
              menuController.is16ModuleClick.isTrue ||
              menuController.is18ModuleClick.isTrue)
            DrawerListTile(
              title: "4S 1R",
              subTitle: '',
              tileColor: menuController.setDisableColor(layoutNumber)
                  ? Colors.white54
                  : menuController.is4XDXXClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".4S1R(Non-Auto)";
                menuController.setDisableColor(layoutNumber)
                    ? null
                    : menuController.on4XDXXClick(layoutNumber: layoutNumber);
              },
              trailing: const SizedBox(),
            ),
          if (menuController.is6ModuleClick.isTrue ||
              menuController.is8ModuleClick.isTrue ||
              menuController.is12ModuleClick.isTrue ||
              menuController.is16ModuleClick.isTrue ||
              menuController.is18ModuleClick.isTrue)
            DrawerListTile(
              title: "8S",
              subTitle: '',
              tileColor: menuController.setDisableColor(layoutNumber)
                  ? Colors.white54
                  : menuController.isS8Click.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".8S(Non-Auto)";
                menuController.setDisableColor(layoutNumber)
                    ? null
                    : menuController.onS8Click(layoutNumber: layoutNumber);
              },
              trailing: const SizedBox(),
            ),
          if (menuController.is6ModuleClick.isTrue ||
              menuController.is8ModuleClick.isTrue ||
              menuController.is12ModuleClick.isTrue ||
              menuController.is16ModuleClick.isTrue ||
              menuController.is18ModuleClick.isTrue)
            DrawerListTile(
              title: "8S 1R",
              subTitle: '',
              tileColor: menuController.setDisableColor(layoutNumber)
                  ? Colors.white54
                  : menuController.is8FDNHClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".8S1R(Non-Auto)";
                menuController.setDisableColor(layoutNumber)
                    ? null
                    : menuController.on8FDNHClick(layoutNumber: layoutNumber);
              },
              trailing: const SizedBox(),
            ),

          if (menuController.is8ModuleClick.isTrue ||
              menuController.is16ModuleClick.isTrue)
            DrawerListTile(
              title: "10S 2R",
              subTitle: '',
              tileColor: menuController.setDisableColor(layoutNumber)
                  ? Colors.white54
                  : menuController.is10FXNHClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".10S2R(Non-Auto)";
                menuController.setDisableColor(layoutNumber)
                    ? null
                    : menuController.on10FXNHClick(layoutNumber: layoutNumber);
              },
              trailing: const SizedBox(),
            ),
        ],
      ),
      ExpansionTile(
        initiallyExpanded: false,
        title: MarqueeWidget(
          child: Text(
            "Automation(Primary)",
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText2!.color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        children: [
          // 2S
          DrawerListTile(
            title: "1C",
            subTitle: '',
            leading: const SizedBox(),
            tileColor: menuController.setDisableColor(layoutNumber)
                ? Colors.white54
                : menuController.is1CClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
            press: () {
              menuController.automation.value = "TI";
              menuController.tiAutomation.value = ".1C(Auto(Pri))";
              menuController.setDisableColor(layoutNumber)
                  ? null
                  : menuController.on1CClick(layoutNumber: layoutNumber);
            },
            trailing: const SizedBox(),
          ),
          DrawerListTile(
            title: "2C",
            subTitle: '',
            tileColor: menuController.setDisableColor(layoutNumber)
                ? Colors.white54
                : menuController.is2CClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
            leading: const SizedBox(),
            press: () {
              menuController.automation.value = "TI";
              menuController.tiAutomation.value = ".2C(Auto(Pri))";
              menuController.setDisableColor(layoutNumber)
                  ? null
                  : menuController.on2cClick(layoutNumber: layoutNumber);
            },
            trailing: const SizedBox(),
          ),
          DrawerListTile(
            title: "2S(Horizontal)",
            leading: const SizedBox(),
            tileColor: menuController.setDisableColor(layoutNumber)
                ? Colors.white54
                : menuController.is2XXXHClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
            press: () {
              menuController.automation.value = "TI";
              menuController.tiAutomation.value = ".2S(Horizontal)(Auto(Pri))";
              menuController.setDisableColor(layoutNumber)
                  ? null
                  : menuController.on2XXXHClick(layoutNumber: layoutNumber);
            },
            trailing: const SizedBox(),
            subTitle: '',
          ),
          DrawerListTile(
            title: "2S(Vertical)",
            leading: const SizedBox(),
            tileColor: menuController.setDisableColor(layoutNumber)
                ? Colors.white54
                : menuController.is2XXXHVerClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
            press: () {
              menuController.automation.value = "TI";
              menuController.tiAutomation.value = ".2S(Vertical)(Auto(Pri))";
              menuController.setDisableColor(layoutNumber)
                  ? null
                  : menuController.on2XXXHVerClick(layoutNumber: layoutNumber);
            },
            trailing: const SizedBox(),
            subTitle: '',
          ),
          // 2S 1R
          DrawerListTile(
            title: "2S 1R",
            subTitle: '',
            leading: const SizedBox(),
            tileColor: menuController.setDisableColor(layoutNumber)
                ? Colors.white54
                : menuController.is2XDXXClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
            press: () {
              menuController.automation.value = "TI";
              menuController.tiAutomation.value = ".2S1R(Auto(Pri))";
              menuController.setDisableColor(layoutNumber)
                  ? null
                  : menuController.on2XDXXClick(layoutNumber: layoutNumber);
            },
            trailing: const SizedBox(),
          ),
          // 4S
          DrawerListTile(
            title: "4S",
            subTitle: '',
            tileColor: menuController.setDisableColor(layoutNumber)
                ? Colors.white54
                : menuController.isS4Click.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
            leading: const SizedBox(),
            press: () {
              menuController.automation.value = "TI";
              menuController.tiAutomation.value = ".4S(Auto(Pri))";
              menuController.setDisableColor(layoutNumber)
                  ? null
                  : menuController.onS4Click(layoutNumber: layoutNumber);
            },
            trailing: const SizedBox(),
          ),
          //4S 1R
          if (menuController.is4ModuleClick.isTrue ||
              menuController.is6ModuleClick.isTrue ||
              menuController.is8ModuleClick.isTrue ||
              menuController.is8Module2Click.isTrue ||
              menuController.is12ModuleClick.isTrue ||
              menuController.is16ModuleClick.isTrue ||
              menuController.is18ModuleClick.isTrue)
            DrawerListTile(
              title: "4S 1R",
              subTitle: '',
              tileColor: menuController.setDisableColor(layoutNumber)
                  ? Colors.white54
                  : menuController.is4XDXXClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".4S1R(Auto(Pri))";
                menuController.setDisableColor(layoutNumber)
                    ? null
                    : menuController.on4XDXXClick(layoutNumber: layoutNumber);
              },
              trailing: const SizedBox(),
            ),
          if (menuController.is6ModuleClick.isTrue ||
              menuController.is8ModuleClick.isTrue ||
              menuController.is12ModuleClick.isTrue ||
              menuController.is16ModuleClick.isTrue ||
              menuController.is18ModuleClick.isTrue)
            DrawerListTile(
              title: "8S",
              subTitle: '',
              tileColor: menuController.setDisableColor(layoutNumber)
                  ? Colors.white54
                  : menuController.isS8Click.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".8S(Auto(Pri))";
                menuController.setDisableColor(layoutNumber)
                    ? null
                    : menuController.onS8Click(layoutNumber: layoutNumber);
              },
              trailing: const SizedBox(),
            ),
          if (menuController.is6ModuleClick.isTrue ||
              menuController.is8ModuleClick.isTrue ||
              menuController.is12ModuleClick.isTrue ||
              menuController.is16ModuleClick.isTrue ||
              menuController.is18ModuleClick.isTrue)
            DrawerListTile(
              title: "8S 1R",
              subTitle: '',
              tileColor: menuController.setDisableColor(layoutNumber)
                  ? Colors.white54
                  : menuController.is8FDNHClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".8S1R(Auto(Pri))";
                menuController.setDisableColor(layoutNumber)
                    ? null
                    : menuController.on8FDNHClick(layoutNumber: layoutNumber);
              },
              trailing: const SizedBox(),
            ),

          if (menuController.is8ModuleClick.isTrue ||
              menuController.is16ModuleClick.isTrue)
            DrawerListTile(
              title: "10S 2R",
              subTitle: '',
              tileColor: menuController.setDisableColor(layoutNumber)
                  ? Colors.white54
                  : menuController.is10FXNHClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".10S2R(Auto(Pri))";
                menuController.setDisableColor(layoutNumber)
                    ? null
                    : menuController.on10FXNHClick(layoutNumber: layoutNumber);
              },
              trailing: const SizedBox(),
            ),
        ],
      ),
      ExpansionTile(
        initiallyExpanded: false,
        title: MarqueeWidget(
          child: Text(
            "Automation(Secondary)",
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText2!.color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        children: [
          DrawerListTile(
            title: "1C",
            subTitle: '',
            leading: const SizedBox(),
            tileColor: menuController.setDisableColor(layoutNumber)
                ? Colors.white54
                : menuController.is1CClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
            press: () {
              menuController.automation.value = "TI";
              menuController.tiAutomation.value = ".1C(Auto(Sec))";
              menuController.setDisableColor(layoutNumber)
                  ? null
                  : menuController.on1CClick(layoutNumber: layoutNumber);
            },
            trailing: const SizedBox(),
          ),
          DrawerListTile(
            title: "2C",
            subTitle: '',
            tileColor: menuController.setDisableColor(layoutNumber)
                ? Colors.white54
                : menuController.is2CClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
            leading: const SizedBox(),
            press: () {
              menuController.automation.value = "TI";
              menuController.tiAutomation.value = ".2C(Auto(Sec))";
              menuController.setDisableColor(layoutNumber)
                  ? null
                  : menuController.on2cClick(layoutNumber: layoutNumber);
            },
            trailing: const SizedBox(),
          ),
          CustomDropDown(
              tile: "2S(Horizontal)",
              menuController: menuController,
              onClickedItem: () =>
                  menuController.on2XXXHClick(layoutNumber: layoutNumber),
              selected: menuController.is2XXXHClick.value),
          CustomDropDown(
              tile: "2S(Vertical)",
              menuController: menuController,
              onClickedItem: () =>
                  menuController.on2XXXHVerClick(layoutNumber: layoutNumber),
              selected: menuController.is2XXXHVerClick.value),
          CustomDropDown(
              tile: "2S 1R",
              menuController: menuController,
              onClickedItem: () =>
                  menuController.on2XDXXClick(layoutNumber: layoutNumber),
              selected: menuController.is2XDXXClick.value),

          // 4S
          CustomDropDown(
              tile: "4S",
              menuController: menuController,
              onClickedItem: () =>
                  menuController.onS4Click(layoutNumber: layoutNumber),
              selected: menuController.isS4Click.value),
          //4S 1R
          if (menuController.is4ModuleClick.isTrue ||
              menuController.is6ModuleClick.isTrue ||
              menuController.is8ModuleClick.isTrue ||
              menuController.is8Module2Click.isTrue ||
              menuController.is12ModuleClick.isTrue ||
              menuController.is16ModuleClick.isTrue ||
              menuController.is18ModuleClick.isTrue)
            CustomDropDown(
                tile: "4S 1R",
                menuController: menuController,
                onClickedItem: () =>
                    menuController.on4XDXXClick(layoutNumber: layoutNumber),
                selected: menuController.is4XDXXClick.value),
          if (menuController.is6ModuleClick.isTrue ||
              menuController.is8ModuleClick.isTrue ||
              menuController.is12ModuleClick.isTrue ||
              menuController.is16ModuleClick.isTrue ||
              menuController.is18ModuleClick.isTrue)
            CustomDropDown(
                tile: "8S",
                menuController: menuController,
                onClickedItem: () =>
                    menuController.onS8Click(layoutNumber: layoutNumber),
                selected: menuController.isS8Click.value),
          if (menuController.is6ModuleClick.isTrue ||
              menuController.is8ModuleClick.isTrue ||
              menuController.is12ModuleClick.isTrue ||
              menuController.is16ModuleClick.isTrue ||
              menuController.is18ModuleClick.isTrue)
            CustomDropDown(
                tile: "8S 1R",
                menuController: menuController,
                onClickedItem: () =>
                    menuController.on8FDNHClick(layoutNumber: layoutNumber),
                selected: menuController.is8FDNHClick.value),
          if (menuController.is8ModuleClick.isTrue ||
              menuController.is16ModuleClick.isTrue)
            CustomDropDown(
                tile: "10S 2R",
                menuController: menuController,
                onClickedItem: () =>
                    menuController.on10FXNHClick(layoutNumber: layoutNumber),
                selected: menuController.is10FXNHClick.value),
        ],
      ),
    ],
  );
}

selectModuleForDummy(
    ModuleController menuController, context, String name, layoutNumber) {
  return ExpansionTile(
    initiallyExpanded: false,
    onExpansionChanged: (value) {
      if (value == true) {
        menuController.tiAutomation.value = "";
      }
    },
    title: MarqueeWidget(
      child: Text(
        name,
        style: TextStyle(
          color: Theme.of(context).textTheme.bodyText2!.color,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    children: [
      // 2S
      DrawerListTile(
        title: "1B",
        subTitle: '',
        leading: const SizedBox(),
        tileColor: menuController.setDisableColor(layoutNumber)
            ? Colors.white54
            : menuController.is1BClick.value
                ? Colors.teal.shade200
                : Colors.transparent,
        press: () {
          menuController.automation.value = name;
          menuController.setDisableColor(layoutNumber)
              ? null
              : menuController.on1BClick(layoutNumber: layoutNumber);
        },
        trailing: const SizedBox(),
      ),
      DrawerListTile(
        title: "1C",
        subTitle: '',
        leading: const SizedBox(),
        tileColor: menuController.setDisableColor(layoutNumber)
            ? Colors.white54
            : menuController.is1CClick.value
                ? Colors.teal.shade200
                : Colors.transparent,
        press: () {
          menuController.automation.value = name;
          menuController.setDisableColor(layoutNumber)
              ? null
              : menuController.on1CClick(layoutNumber: layoutNumber);
        },
        trailing: const SizedBox(),
      ),
      DrawerListTile(
        title: "2C",
        subTitle: '',
        tileColor: menuController.setDisableColor(layoutNumber)
            ? Colors.white54
            : menuController.is2CClick.value
                ? Colors.teal.shade200
                : Colors.transparent,
        leading: const SizedBox(),
        press: () {
          menuController.automation.value = name;
          menuController.setDisableColor(layoutNumber)
              ? null
              : menuController.on2cClick(layoutNumber: layoutNumber);
        },
        trailing: const SizedBox(),
      ),
      DrawerListTile(
        title: "2S(Horizontal)",
        leading: const SizedBox(),
        tileColor: menuController.setDisableColor(layoutNumber)
            ? Colors.white54
            : menuController.is2XXXHClick.value
                ? Colors.teal.shade200
                : Colors.transparent,
        press: () {
          menuController.automation.value = name;
          menuController.setDisableColor(layoutNumber)
              ? null
              : menuController.on2XXXHClick(layoutNumber: layoutNumber);
        },
        trailing: const SizedBox(),
        subTitle: '',
      ),
      DrawerListTile(
        title: "2S(Vertical)",
        leading: const SizedBox(),
        tileColor: menuController.setDisableColor(layoutNumber)
            ? Colors.white54
            : menuController.is2XXXHVerClick.value
                ? Colors.teal.shade200
                : Colors.transparent,
        press: () {
          menuController.automation.value = name;
          menuController.setDisableColor(layoutNumber)
              ? null
              : menuController.on2XXXHVerClick(layoutNumber: layoutNumber);
        },
        trailing: const SizedBox(),
        subTitle: '',
      ),
      // 2S 1R
      DrawerListTile(
        title: "2S 1R",
        subTitle: '',
        leading: const SizedBox(),
        tileColor: menuController.setDisableColor(layoutNumber)
            ? Colors.white54
            : menuController.is2XDXXClick.value
                ? Colors.teal.shade200
                : Colors.transparent,
        press: () {
          menuController.automation.value = name;
          menuController.setDisableColor(layoutNumber)
              ? null
              : menuController.on2XDXXClick(layoutNumber: layoutNumber);
        },
        trailing: const SizedBox(),
      ),
      // 4S
      DrawerListTile(
        title: "4S",
        subTitle: '',
        tileColor: menuController.setDisableColor(layoutNumber)
            ? Colors.white54
            : menuController.isS4Click.value
                ? Colors.teal.shade200
                : Colors.transparent,
        leading: const SizedBox(),
        press: () {
          menuController.automation.value = name;
          menuController.setDisableColor(layoutNumber)
              ? null
              : menuController.onS4Click(layoutNumber: layoutNumber);
        },
        trailing: const SizedBox(),
      ),
      //4S 1R
      if (menuController.is4ModuleClick.isTrue ||
          menuController.is6ModuleClick.isTrue ||
          menuController.is8ModuleClick.isTrue ||
          menuController.is8Module2Click.isTrue ||
          menuController.is12ModuleClick.isTrue ||
          menuController.is16ModuleClick.isTrue ||
          menuController.is18ModuleClick.isTrue)
        DrawerListTile(
          title: "4S 1R",
          subTitle: '',
          tileColor: menuController.setDisableColor(layoutNumber)
              ? Colors.white54
              : menuController.is4XDXXClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
          leading: const SizedBox(),
          press: () {
            menuController.automation.value = name;
            menuController.setDisableColor(layoutNumber)
                ? null
                : menuController.on4XDXXClick(layoutNumber: layoutNumber);
          },
          trailing: const SizedBox(),
        ),
      if (menuController.is6ModuleClick.isTrue ||
          menuController.is8ModuleClick.isTrue ||
          menuController.is12ModuleClick.isTrue ||
          menuController.is16ModuleClick.isTrue ||
          menuController.is18ModuleClick.isTrue)
        DrawerListTile(
          title: "8S",
          subTitle: '',
          tileColor: menuController.setDisableColor(layoutNumber)
              ? Colors.white54
              : menuController.isS8Click.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
          leading: const SizedBox(),
          press: () {
            menuController.automation.value = name;
            menuController.setDisableColor(layoutNumber)
                ? null
                : menuController.onS8Click(layoutNumber: layoutNumber);
          },
          trailing: const SizedBox(),
        ),
      if (menuController.is6ModuleClick.isTrue ||
          menuController.is8ModuleClick.isTrue ||
          menuController.is12ModuleClick.isTrue ||
          menuController.is16ModuleClick.isTrue ||
          menuController.is18ModuleClick.isTrue)
        DrawerListTile(
          title: "8S 1R",
          subTitle: '',
          tileColor: menuController.setDisableColor(layoutNumber)
              ? Colors.white54
              : menuController.is8FDNHClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
          leading: const SizedBox(),
          press: () {
            menuController.automation.value = name;
            menuController.setDisableColor(layoutNumber)
                ? null
                : menuController.on8FDNHClick(layoutNumber: layoutNumber);
          },
          trailing: const SizedBox(),
        ),

      if (menuController.is8ModuleClick.isTrue ||
          menuController.is16ModuleClick.isTrue)
        DrawerListTile(
          title: "10S 2R",
          subTitle: '',
          tileColor: menuController.setDisableColor(layoutNumber)
              ? Colors.white54
              : menuController.is10FXNHClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
          leading: const SizedBox(),
          press: () {
            menuController.automation.value = name;
            menuController.setDisableColor(layoutNumber)
                ? null
                : menuController.on10FXNHClick(layoutNumber: layoutNumber);
          },
          trailing: const SizedBox(),
        ),
    ],
  );
}
