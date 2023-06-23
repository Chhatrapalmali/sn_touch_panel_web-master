import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';
import 'package:sn_touch_panel_web/helper/custom_selector.dart';
import 'package:sn_touch_panel_web/helper/size_config.dart';
import 'package:sn_touch_panel_web/views/home_screen/components/drawer_list_tile.dart';

import '../../helper/marquee_widget.dart';

class TouchModuleMenu extends StatelessWidget {
  const TouchModuleMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var pdfController = Get.put(PdfController());

    SizeConfig().init(context);
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 3,
      child: GetX<ModuleController>(builder: (menuController) {
        return ListView(
          children: [
            moduleExpansion(menuController, context, "Wifi & Remote"),
            moduleExpansion(menuController, context, "Remote"),
            modulesForTi(menuController, context, "Touch Interface"),
            modulesForDummy(menuController, context),
            Visibility(
              visible: menuController.isModularViewOn.isFalse &&
                  menuController.panelMaterial.value != "Glass",
              child: ExpansionTile(
                initiallyExpanded: false,
                title: MarqueeWidget(
                  child: Text(
                    'Accessories',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText2!.color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                children: [
                  Visibility(
                    visible: menuController.panelMaterial.value != "Marble",
                    child: DrawerListTile(
                      title: "Socket 1",
                      subTitle: '',
                      tileColor: menuController.isSocket1Click.value
                          ? Colors.teal.shade200
                          : Colors.transparent,
                      leading: Image.asset(
                        'assets/images/AH1.png',
                        width: 20,
                        height: 20,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                      press: () {
                        menuController.onSocket1Click(layoutNumber: 1);
                      },
                      trailing: const SizedBox(),
                    ),
                  ),
                  DrawerListTile(
                    title: "Socket 2",
                    subTitle: '',
                    tileColor: menuController.isSocket2Click.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                    leading: Image.asset(
                      'assets/images/SKT2.png',
                      width: 20,
                      height: 20,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    press: () {
                      menuController.onSocket2Click(layoutNumber: 1);
                    },
                    trailing: const SizedBox(),
                  ),
                  DrawerListTile(
                    title: "16A Socket",
                    subTitle: '',
                    tileColor: menuController.is16ASocketClick.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                    leading: Container(
                      width: 20,
                      height: 20,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    press: () {
                      menuController.on16ASocketClick(layoutNumber: 1);
                    },
                    trailing: const SizedBox(),
                  ),
                  DrawerListTile(
                    title: "USB Port",
                    subTitle: '',
                    tileColor: menuController.isUsbClick.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                    leading: Image.asset(
                      'assets/images/usb_b.png',
                      width: 20,
                      height: 20,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    press: () {
                      menuController.onUsbClick(layoutNumber: 1);
                    },
                    trailing: const SizedBox(),
                  ),
                  DrawerListTile(
                    title: "RJ-11",
                    subTitle: '',
                    tileColor: menuController.isRj11Click.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                    leading: Image.asset(
                      'assets/images/lan-black.png',
                      width: 20,
                      height: 20,
                      // color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    press: () {
                      menuController.onRj11Click(layoutNumber: 1);
                    },
                    trailing: const SizedBox(),
                  ),
                  DrawerListTile(
                    title: "RJ-45",
                    subTitle: '',
                    tileColor: menuController.isRj45Click.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                    leading: Image.asset(
                      'assets/images/lan-black.png',
                      width: 20,
                      height: 20,
                      // color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    press: () {
                      menuController.onRj45Click(layoutNumber: 1);
                    },
                    trailing: const SizedBox(),
                  ),
                  DrawerListTile(
                    title: "External 1M",
                    subTitle: '',
                    tileColor: menuController.isExternal1MClick.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                    leading: Image.asset(
                      'assets/images/external_1M.png',
                      width: 20,
                      height: 20,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    press: () {
                      menuController.onExternal1MClick(layoutNumber: 1);
                    },
                    trailing: const SizedBox(),
                  ),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}

moduleExpansion(ModuleController menuController, context, String name) {
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
              initiallyExpanded: true,
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
                  subTitle: '',
                  leading: const SizedBox(),
                  tileColor: menuController.is2XXXHClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
                  press: () {
                    menuController.automation.value = name;
                    menuController.on2XXXHClick(layoutNumber: 1);
                  },
                  trailing: const SizedBox(),
                ),
                DrawerListTile(
                  title: "2XXNX",
                  subTitle: '',
                  leading: const SizedBox(),
                  tileColor: menuController.is2XXNXClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
                  press: () {
                    menuController.automation.value = name;
                    menuController.on2XXNXClick(layoutNumber: 1);
                  },
                  trailing: const SizedBox(),
                ),
                DrawerListTile(
                  title: "1C",
                  subTitle: '',
                  leading: const SizedBox(),
                  tileColor: menuController.is1CClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
                  press: () {
                    menuController.automation.value = name;
                    menuController.on1CClick(layoutNumber: 1);
                  },
                  trailing: const SizedBox(),
                ),
                Visibility(
                  visible: name != "Wifi & Remote",
                  child: DrawerListTile(
                    title: "1B",
                    subTitle: '',
                    leading: const SizedBox(),
                    tileColor: menuController.is1BClick.value
                        ? Colors.teal.shade200
                        : Colors.transparent,
                    press: () {
                      menuController.automation.value = name;
                      menuController.on1BClick(layoutNumber: 1);
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
                  subTitle: '',
                  leading: const SizedBox(),
                  tileColor: menuController.is2XXXHVerClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
                  press: () {
                    menuController.automation.value = name;
                    menuController.on2XXXHVerClick(layoutNumber: 1);
                  },
                  trailing: const SizedBox(),
                ),
                DrawerListTile(
                  title: "2XXNX",
                  subTitle: '',
                  leading: const SizedBox(),
                  tileColor: menuController.is2XXNXVerClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
                  press: () {
                    menuController.automation.value = name;
                    menuController.on2XXNXVerClick(layoutNumber: 1);
                  },
                  trailing: const SizedBox(),
                ),
                DrawerListTile(
                  title: "1C",
                  subTitle: '',
                  leading: const SizedBox(),
                  tileColor: menuController.is1CVerClick.value
                      ? Colors.teal.shade200
                      : Colors.transparent,
                  press: () {
                    menuController.automation.value = name;
                    menuController.on1CVerClick(layoutNumber: 1);
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
              tileColor: menuController.is2XDXXClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              press: () {
                menuController.automation.value = name;
                menuController.on2XDXXClick(layoutNumber: 1);
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
              tileColor: menuController.is4XXNXClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = name;
                menuController.on4XXNXClick(layoutNumber: 1);
              },
              trailing: const SizedBox(),
            ),
            DrawerListTile(
              title: "S.4",
              subTitle: '',
              tileColor: menuController.isS4Click.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = name;
                menuController.onS4Click(layoutNumber: 1);
              },
              trailing: const SizedBox(),
            ),
            DrawerListTile(
              title: "2C",
              subTitle: '',
              tileColor: menuController.is2CClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = name;
                menuController.on2cClick(layoutNumber: 1);
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
                tileColor: menuController.is4XDXXClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const SizedBox(),
                press: () {
                  menuController.automation.value = name;
                  menuController.on4XDXXClick(layoutNumber: 1);
                },
                trailing: const SizedBox(),
              ),
              DrawerListTile(
                title: "4FDNH",
                subTitle: '',
                tileColor: menuController.is4FDNHClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const SizedBox(),
                press: () {
                  menuController.automation.value = name;
                  menuController.on4FDNHClick(layoutNumber: 1);
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
                tileColor: menuController.is8XXNHClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const SizedBox(),
                press: () {
                  menuController.automation.value = name;
                  menuController.on8XXNHClick(layoutNumber: 1);
                },
                trailing: const SizedBox(),
              ),
              DrawerListTile(
                title: "S.8",
                subTitle: '',
                tileColor: menuController.isS8Click.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const SizedBox(),
                press: () {
                  menuController.automation.value = name;
                  menuController.onS8Click(layoutNumber: 1);
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
                tileColor: menuController.is8FDNHClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const SizedBox(),
                press: () {
                  menuController.automation.value = name;
                  menuController.on8FDNHClick(layoutNumber: 1);
                },
                trailing: const SizedBox(),
              ),
              DrawerListTile(
                title: "8XDNH",
                subTitle: '',
                tileColor: menuController.is8XDNHClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const SizedBox(),
                press: () {
                  // on8S1RClick(menuController, pdfController);
                  menuController.automation.value = name;
                  menuController.on8XDNHClick(layoutNumber: 1);
                },
                trailing: const SizedBox(),
              ),
              DrawerListTile(
                title: "8FXNH",
                subTitle: '',
                tileColor: menuController.is8FXNHClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const SizedBox(),
                press: () {
                  menuController.automation.value = name;
                  menuController.on8FXNHClick(layoutNumber: 1);
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
                tileColor: menuController.is10FXNHClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const SizedBox(),
                press: () {
                  menuController.automation.value = name;
                  menuController.on10FXNHClick(layoutNumber: 1);
                },
                trailing: const SizedBox(),
              ),
            ],
          )
      ]);
}

modulesForTi(ModuleController menuController, context, String name) {
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
              tileColor: menuController.is1BClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".1B(Non-Auto)";
                menuController.on1BClick(layoutNumber: 1);
              },
              trailing: const SizedBox(),
            ),
            DrawerListTile(
              title: "1C",
              subTitle: '',
              leading: const SizedBox(),
              tileColor: menuController.is1CClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".1C(Non-Auto)";
                menuController.on1CClick(layoutNumber: 1);
              },
              trailing: const SizedBox(),
            ),
            DrawerListTile(
              title: "2C",
              subTitle: '',
              tileColor: menuController.is2CClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".2C(Non-Auto)";
                menuController.on2cClick(layoutNumber: 1);
              },
              trailing: const SizedBox(),
            ),
            DrawerListTile(
              title: "2S(Horizontal)",
              subTitle: '',
              leading: const SizedBox(),
              tileColor: menuController.is2XXXHClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".2S(Horizontal)(Non-Auto)";
                menuController.on2XXXHClick(layoutNumber: 1);
              },
              trailing: const SizedBox(),
            ),
            DrawerListTile(
              title: "2S(Vertical)",
              subTitle: '',
              leading: const SizedBox(),
              tileColor: menuController.is2XXXHVerClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".2S(Vertical)(Non-Auto)";
                menuController.on2XXXHVerClick(layoutNumber: 1);
              },
              trailing: const SizedBox(),
            ),
            // 2S 1R
            DrawerListTile(
              title: "2S 1R",
              subTitle: '',
              leading: const SizedBox(),
              tileColor: menuController.is2XDXXClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".2S1R(Non-Auto)";
                menuController.on2XDXXClick(layoutNumber: 1);
              },
              trailing: const SizedBox(),
            ),
            // 4S
            DrawerListTile(
              title: "4S",
              subTitle: '',
              tileColor: menuController.isS4Click.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".4S(Non-Auto)";
                menuController.onS4Click(layoutNumber: 1);
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
                tileColor: menuController.is4XDXXClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const SizedBox(),
                press: () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value = ".4S1R(Non-Auto)";
                  menuController.on4XDXXClick(layoutNumber: 1);
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
                tileColor: menuController.isS8Click.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const SizedBox(),
                press: () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value = ".8S(Non-Auto)";
                  menuController.onS8Click(layoutNumber: 1);
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
                tileColor: menuController.is8FDNHClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const SizedBox(),
                press: () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value = ".8S1R(Non-Auto)";
                  menuController.on8FDNHClick(layoutNumber: 1);
                },
                trailing: const SizedBox(),
              ),

            if (menuController.is8ModuleClick.isTrue ||
                menuController.is16ModuleClick.isTrue)
              DrawerListTile(
                title: "10S 2R",
                subTitle: '',
                tileColor: menuController.is10FXNHClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const SizedBox(),
                press: () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value = ".10S2R(Non-Auto)";
                  menuController.on10FXNHClick(layoutNumber: 1);
                },
                trailing: const SizedBox(),
              )
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
              tileColor: menuController.is1CClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".1C(Auto(Pri))";
                menuController.on1CClick(layoutNumber: 1);
              },
              trailing: const SizedBox(),
            ),
            DrawerListTile(
              title: "2C",
              subTitle: '',
              tileColor: menuController.is2CClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".2C(Auto(Pri))";
                menuController.on2cClick(layoutNumber: 1);
              },
              trailing: const SizedBox(),
            ),
            DrawerListTile(
              title: "2S(Horizontal)",
              subTitle: '',
              leading: const SizedBox(),
              tileColor: menuController.is2XXXHClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value =
                    ".2S(Horizontal)(Auto(Pri))";
                menuController.on2XXXHClick(layoutNumber: 1);
              },
              trailing: const SizedBox(),
            ),
            DrawerListTile(
              title: "2S(Vertical)",
              subTitle: '',
              leading: const SizedBox(),
              tileColor: menuController.is2XXXHVerClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".2S(Vertical)(Auto(Pri))";
                menuController.on2XXXHVerClick(layoutNumber: 1);
              },
              trailing: const SizedBox(),
            ),

            // 2S 1R
            DrawerListTile(
              title: "2S 1R",
              subTitle: '',
              leading: const SizedBox(),
              tileColor: menuController.is2XDXXClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".2S1R(Auto(Pri))";
                menuController.on2XDXXClick(layoutNumber: 1);
              },
              trailing: const SizedBox(),
            ),
            // 4S
            DrawerListTile(
              title: "4S",
              subTitle: '',
              tileColor: menuController.isS4Click.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".4S(Auto(Pri))";
                menuController.onS4Click(layoutNumber: 1);
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
                tileColor: menuController.is4XDXXClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const SizedBox(),
                press: () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value = ".4S1R(Auto(Pri))";
                  menuController.on4XDXXClick(layoutNumber: 1);
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
                tileColor: menuController.isS8Click.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const SizedBox(),
                press: () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value = ".8S(Auto(Pri))";
                  menuController.onS8Click(layoutNumber: 1);
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
                tileColor: menuController.is8FDNHClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const SizedBox(),
                press: () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value = ".8S1R(Auto(Pri))";
                  menuController.on8FDNHClick(layoutNumber: 1);
                },
                trailing: const SizedBox(),
              ),

            if (menuController.is8ModuleClick.isTrue ||
                menuController.is16ModuleClick.isTrue)
              DrawerListTile(
                title: "10S 2R",
                subTitle: '',
                tileColor: menuController.is10FXNHClick.value
                    ? Colors.teal.shade200
                    : Colors.transparent,
                leading: const SizedBox(),
                press: () {
                  menuController.automation.value = "TI";
                  menuController.tiAutomation.value = ".10S2R(Auto(Pri))";
                  menuController.on10FXNHClick(layoutNumber: 1);
                },
                trailing: const SizedBox(),
              )
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
            // 2s
            DrawerListTile(
              title: "1C",
              subTitle: '',
              leading: const SizedBox(),
              tileColor: menuController.is1CClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".1C(Auto(Sec))";
                menuController.on1CClick(layoutNumber: 1);
              },
              trailing: const SizedBox(),
            ),
            DrawerListTile(
              title: "2C",
              subTitle: '',
              tileColor: menuController.is2CClick.value
                  ? Colors.teal.shade200
                  : Colors.transparent,
              leading: const SizedBox(),
              press: () {
                menuController.automation.value = "TI";
                menuController.tiAutomation.value = ".2C(Auto(Sec))";
                menuController.on2cClick(layoutNumber: 1);
              },
              trailing: const SizedBox(),
            ),
            CustomDropDown(
                tile: "2S(Horizontal)",
                menuController: menuController,
                onClickedItem: () =>
                    menuController.on2XXXHClick(layoutNumber: 1),
                selected: menuController.is2XXXHClick.value),
            CustomDropDown(
                tile: "2S(Vertical)",
                menuController: menuController,
                onClickedItem: () =>
                    menuController.on2XXXHVerClick(layoutNumber: 1),
                selected: menuController.is2XXXHVerClick.value),
            CustomDropDown(
                tile: "2S 1R",
                menuController: menuController,
                onClickedItem: () =>
                    menuController.on2XDXXClick(layoutNumber: 1),
                selected: menuController.is2XDXXClick.value),

            // 4S
            CustomDropDown(
                tile: "4S",
                menuController: menuController,
                onClickedItem: () => menuController.onS4Click(layoutNumber: 1),
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
                      menuController.on4XDXXClick(layoutNumber: 1),
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
                      menuController.onS8Click(layoutNumber: 1),
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
                      menuController.on8FDNHClick(layoutNumber: 1),
                  selected: menuController.is8FDNHClick.value),
            if (menuController.is8ModuleClick.isTrue ||
                menuController.is16ModuleClick.isTrue)
              CustomDropDown(
                  tile: "10S 2R",
                  menuController: menuController,
                  onClickedItem: () =>
                      menuController.on10FXNHClick(layoutNumber: 1),
                  selected: menuController.is10FXNHClick.value),
          ],
        ),
      ]);
}

modulesForDummy(ModuleController menuController, context) {
  return ExpansionTile(
      initiallyExpanded: false,
      onExpansionChanged: (value) {
        if (value == true) {
          menuController.tiAutomation.value = "";
        }
      },
      title: MarqueeWidget(
        child: Text(
          "Dummy",
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
          tileColor: menuController.is1BClick.value
              ? Colors.teal.shade200
              : Colors.transparent,
          press: () {
            menuController.automation.value = "Dummy";
            menuController.on1BClick(layoutNumber: 1);
          },
          trailing: const SizedBox(),
        ),
        DrawerListTile(
          title: "1C",
          subTitle: '',
          leading: const SizedBox(),
          tileColor: menuController.is1CClick.value
              ? Colors.teal.shade200
              : Colors.transparent,
          press: () {
            menuController.automation.value = "Dummy";
            menuController.on1CClick(layoutNumber: 1);
          },
          trailing: const SizedBox(),
        ),
        DrawerListTile(
          title: "2C",
          subTitle: '',
          tileColor: menuController.is2CClick.value
              ? Colors.teal.shade200
              : Colors.transparent,
          leading: const SizedBox(),
          press: () {
            menuController.automation.value = "Dummy";
            menuController.on2cClick(layoutNumber: 1);
          },
          trailing: const SizedBox(),
        ),
        DrawerListTile(
          title: "2S(Horizontal)",
          subTitle: '',
          leading: const SizedBox(),
          tileColor: menuController.is2XXXHClick.value
              ? Colors.teal.shade200
              : Colors.transparent,
          press: () {
            menuController.automation.value = "Dummy";
            menuController.on2XXXHClick(layoutNumber: 1);
          },
          trailing: const SizedBox(),
        ),
        DrawerListTile(
          title: "2S(Vertical)",
          subTitle: '',
          leading: const SizedBox(),
          tileColor: menuController.is2XXXHVerClick.value
              ? Colors.teal.shade200
              : Colors.transparent,
          press: () {
            menuController.automation.value = "Dummy";
            menuController.on2XXXHVerClick(layoutNumber: 1);
          },
          trailing: const SizedBox(),
        ),
        // 2S 1R
        DrawerListTile(
          title: "2S 1R",
          subTitle: '',
          leading: const SizedBox(),
          tileColor: menuController.is2XDXXClick.value
              ? Colors.teal.shade200
              : Colors.transparent,
          press: () {
            menuController.automation.value = "Dummy";
            menuController.on2XDXXClick(layoutNumber: 1);
          },
          trailing: const SizedBox(),
        ),
        // 4S
        DrawerListTile(
          title: "4S",
          subTitle: '',
          tileColor: menuController.isS4Click.value
              ? Colors.teal.shade200
              : Colors.transparent,
          leading: const SizedBox(),
          press: () {
            menuController.automation.value = "Dummy";
            menuController.onS4Click(layoutNumber: 1);
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
            tileColor: menuController.is4XDXXClick.value
                ? Colors.teal.shade200
                : Colors.transparent,
            leading: const SizedBox(),
            press: () {
              menuController.automation.value = "Dummy";
              menuController.on4XDXXClick(layoutNumber: 1);
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
            tileColor: menuController.isS8Click.value
                ? Colors.teal.shade200
                : Colors.transparent,
            leading: const SizedBox(),
            press: () {
              menuController.automation.value = "Dummy";
              menuController.onS8Click(layoutNumber: 1);
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
            tileColor: menuController.is8FDNHClick.value
                ? Colors.teal.shade200
                : Colors.transparent,
            leading: const SizedBox(),
            press: () {
              menuController.automation.value = "Dummy";
              menuController.on8FDNHClick(layoutNumber: 1);
            },
            trailing: const SizedBox(),
          ),

        if (menuController.is8ModuleClick.isTrue ||
            menuController.is16ModuleClick.isTrue)
          DrawerListTile(
            title: "10S 2R",
            subTitle: '',
            tileColor: menuController.is10FXNHClick.value
                ? Colors.teal.shade200
                : Colors.transparent,
            leading: const SizedBox(),
            press: () {
              menuController.automation.value = "Dummy";
              menuController.on10FXNHClick(layoutNumber: 1);
            },
            trailing: const SizedBox(),
          )
      ]);
}
