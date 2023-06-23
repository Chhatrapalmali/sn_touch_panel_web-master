import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/pdf_controller.dart';
import 'package:sn_touch_panel_web/views/icons_layout.dart';
import 'package:sn_touch_panel_web/views/modular_variant_screens/eight_switch_layout.dart';
import 'package:sn_touch_panel_web/views/modular_variant_screens/eight_switch_one_regulator_layout.dart';
import 'package:sn_touch_panel_web/views/modular_variant_screens/four_switch_layout.dart';
import 'package:sn_touch_panel_web/views/modular_variant_screens/four_switch_one_regulator_layout.dart';
import 'package:sn_touch_panel_web/views/modular_variant_screens/one_module_socket_layout.dart';
import 'package:sn_touch_panel_web/views/modular_variant_screens/socket_layout.dart';
import 'package:sn_touch_panel_web/views/modular_variant_screens/ten_switch_two_regulator_layout.dart';
import 'package:sn_touch_panel_web/views/modular_variant_screens/two_switch_layout.dart';
import 'package:sn_touch_panel_web/views/modular_variant_screens/two_switch_one_regulator_layout.dart';

import '../helper/size_config.dart';
import '../views/modular_variant_screens/16A_socket.dart';
import '../views/modular_variant_screens/one_bell_layout.dart';
import '../views/modular_variant_screens/two_switch_vertical_layout.dart';

class ModuleController extends GetxController {
  TextEditingController quantityController = TextEditingController();
  TextEditingController commentController = TextEditingController();

  GlobalKey twoModuleKey = GlobalKey();
  GlobalKey threeModuleKey = GlobalKey();
  GlobalKey fourModuleKey = GlobalKey();
  GlobalKey sixModuleKey = GlobalKey();
  GlobalKey eightModuleKey = GlobalKey();
  GlobalKey eightVerticleModuleKey = GlobalKey();
  GlobalKey twelveModuleKey = GlobalKey();
  GlobalKey sixteenModuleKey = GlobalKey();
  GlobalKey eighteenModuleKey = GlobalKey();
  final draggableKey = GlobalKey<SliverReorderableListState>();

  RxBool isSizeClick = false.obs;
  RxBool isMenuClick = false.obs;
  RxBool isShowClick = false.obs;
  RxBool isModuleClick = false.obs;
  RxBool isColorClick = false.obs;
  RxBool isIconClick = false.obs;
  RxBool isModularViewOn = false.obs;
  RxBool isIRViewOn = false.obs;
  RxBool isMaterialClick = false.obs;
  RxBool isWatermarkOn = false.obs;
  RxBool isLayoutNumber1 = false.obs;
  RxBool isLayoutNumber2 = false.obs;
  RxBool isLayoutNumber3 = false.obs;

  RxBool is3ModuleRotate = false.obs;
  RxBool is4ModuleRotate = false.obs;
  RxBool is6ModuleRotate = false.obs;
  RxBool is8ModuleRotate = false.obs;
  RxBool is3ModuleMirror = false.obs;
  RxBool is4ModuleMirror = false.obs;
  RxBool is6ModuleMirror = false.obs;
  RxBool is8ModuleMirror = false.obs;

  // sub menu toggle
  RxBool sizeMenuToggle = false.obs;
  RxBool moduleMenuToggle = false.obs;
  RxBool colorMenuToggle = false.obs;
  RxBool iconMenuToggle = false.obs;
  RxBool materialMenuToggle = false.obs;

  RxBool is2ModuleClick = false.obs;
  RxBool is3ModuleClick = false.obs;
  RxBool is4ModuleClick = false.obs;
  RxBool is6ModuleClick = false.obs;
  RxBool is8ModuleClick = false.obs;
  RxBool is8Module2Click = false.obs;
  RxBool is12ModuleClick = false.obs;
  RxBool is16ModuleClick = false.obs;
  RxBool is18ModuleClick = false.obs;

  RxBool isDisable = false.obs;
  RxBool isDisable2 = false.obs;
  RxBool isDisable3 = false.obs;

  RxBool isCustomColor = false.obs;

  var glassColor = 'Black'.obs;
  var frameColor = ''.obs;
  var innerFrameColor = 'Acrylic'.obs;
  var panelMaterial = 'Acrylic'.obs;
  var modularMaterial = ''.obs;
  var tiAutomation = ''.obs;
  var modulePrising = 0.0.obs;

  // 2s
  RxBool is2XXNXClick = false.obs;
  RxBool is2XXXHClick = false.obs;
  RxBool is1CClick = false.obs;
  RxBool is2XXNXVerClick = false.obs;
  RxBool is2XXXHVerClick = false.obs;
  RxBool is1CVerClick = false.obs;
  RxBool is1BClick = false.obs;

  // 2s1r
  RxBool is2XDXXClick = false.obs;

  // 4s
  RxBool is4XXNXClick = false.obs;
  RxBool isS4Click = false.obs;
  RxBool is2CClick = false.obs;

  //4s1r
  RxBool is4FDNHClick = false.obs;
  RxBool is4XDXXClick = false.obs;

  // 8s
  RxBool is8XXNHClick = false.obs;
  RxBool isS8Click = false.obs;

  // 8s1r
  RxBool is8FDNHClick = false.obs;
  RxBool is8XDNHClick = false.obs;
  RxBool is8FXNHClick = false.obs;

  // RxBool is8S1RClick = false.obs;

  // 10s 2r
  RxBool is10FXNHClick = false.obs;

  // SKT
  RxBool isSocket1Click = false.obs;
  RxBool isSocket2Click = false.obs;
  RxBool isSocket3Click = false.obs;
  RxBool is16ASocketClick = false.obs;
  RxBool isUsbClick = false.obs;
  RxBool isRj11Click = false.obs;
  RxBool isRj45Click = false.obs;
  RxBool isExternal1MClick = false.obs;

  RxList<Widget> widgetList = <Widget>[].obs;
  RxList<String> widgetNameList =
      <String>[].obs; // use this array to check layout is added or not

  // create list for multiple module layout
  RxList<Widget> widgetList2 = <Widget>[].obs;
  RxList<String> widgetNameList2 = <String>[].obs;
  RxList<Widget> widgetList3 = <Widget>[].obs;
  RxList<String> widgetNameList3 = <String>[].obs;

  RxList<String> automationList = <String>[].obs;
  RxList<String> automationList2 = <String>[].obs;
  RxList<String> automationList3 = <String>[].obs;

  RxList<List<int>> switchIndexList = <List<int>>[].obs;
  RxList<List<int>> switchIndexList2 = <List<int>>[].obs;
  RxList<List<int>> switchIndexList3 = <List<int>>[].obs;
  var selectedIcon = 0.obs;
  final currentHoverWidgetName = ''.obs;
  var currentHoverIndex = 0.obs;
  var iconData = <String, dynamic>{}.obs;

  var companyName = ''.obs;
  RxString automation = ''.obs;
  var variant = ''.obs;
  late List<DropdownMenuItem<String>> dropDownMenuItem;
  late List<DropdownMenuItem<String>> dropDownAutomationMenuItem;
  final List<String> _dropdownItems = [
    'Norisys',
    'Legrand',
    'GM',
    'Gold Medal',
    'L&T Englaze',
    'Hager',
    'Schneider Unica',
    'Vihan',
  ];
  final List<String> automationNode = [
    "2 Node",
    "4 Node(4D,4N)",
    "4 Node(4FDNH)",
    "10,8,6 Node"
  ];

  @override
  void onInit() {
    super.onInit();

    dropDownMenuItem = buildDropDownMenuItems(_dropdownItems);
    if (dropDownMenuItem.isNotEmpty) {
      companyName.value = dropDownMenuItem[0].value!;
    }

    // automation
    /* dropDownAutomationMenuItem =
        buildDropDownAutomationMenuItems(automationItems);
    if (dropDownAutomationMenuItem.isNotEmpty) {
      automation.value = dropDownAutomationMenuItem[0].value!;
    }*/
  }

  List<DropdownMenuItem<String>> buildDropDownAutomationMenuItems(
      List<String> dropDownMenuItem) {
    List<DropdownMenuItem<String>> items = [];
    for (String listItem in dropDownMenuItem) {
      items.add(
        DropdownMenuItem(
          value: listItem,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(listItem),
          ),
        ),
      );
    }
    return items;
  }

  List<DropdownMenuItem<String>> buildDropDownMenuItems(
      List<String> dropDownMenuItem) {
    List<DropdownMenuItem<String>> items = [];
    for (String listItem in dropDownMenuItem) {
      items.add(
        DropdownMenuItem(
          value: listItem,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(listItem),
          ),
        ),
      );
    }
    return items;
  }

  bool isFirstTime() {
    if (isSizeClick.isFalse && isModuleClick.isFalse && isColorClick.isFalse) {
      return true;
    } else {
      return false;
    }
  }

  bool isTouchModuleClicked() {
    if (is2ModuleClick.isFalse &&
        is3ModuleClick.isFalse &&
        is4ModuleClick.isFalse &&
        is6ModuleClick.isFalse &&
        is8ModuleClick.isFalse &&
        is8Module2Click.isFalse &&
        is12ModuleClick.isFalse &&
        is16ModuleClick.isFalse &&
        is18ModuleClick.isFalse) {
      return false;
    } else {
      return true;
    }
  }

  bool isModuleMirrorOn() {
    if (is3ModuleMirror.isTrue ||
        is4ModuleMirror.isTrue ||
        is6ModuleMirror.isTrue ||
        is8ModuleMirror.isTrue) {
      return true;
    } else {
      return false;
    }
  }

  bool isAccessorieresAdd() {
    if (is8Module2Click.isTrue ||
        is12ModuleClick.isTrue ||
        is16ModuleClick.isTrue) {
      if ((!widgetNameList.contains('SKT1') &&
              !widgetNameList.contains('SKT2') &&
              !widgetNameList.contains('SKT3') &&
              !widgetNameList.contains('16ASKT') &&
              !widgetNameList.contains('USB') &&
              !widgetNameList.contains('RJ-11') &&
              !widgetNameList.contains('RJ-45') &&
              !widgetNameList.contains('External1M')) &&
          (!widgetNameList2.contains('SKT1') &&
              !widgetNameList2.contains('SKT2') &&
              !widgetNameList2.contains('SKT3') &&
              !widgetNameList2.contains('16ASKT') &&
              !widgetNameList2.contains('USB') &&
              !widgetNameList2.contains('RJ-11') &&
              !widgetNameList2.contains('RJ-45') &&
              !widgetNameList2.contains('External1M'))) {
        return true;
      }
    } else if (is18ModuleClick.isTrue) {
      if ((!widgetNameList.contains('SKT1') &&
              !widgetNameList.contains('SKT2') &&
              !widgetNameList.contains('SKT3') &&
              !widgetNameList.contains('16ASKT') &&
              !widgetNameList.contains('USB') &&
              !widgetNameList.contains('RJ-11') &&
              !widgetNameList.contains('RJ-45') &&
              !widgetNameList.contains('External1M')) &&
          (!widgetNameList2.contains('SKT1') &&
              !widgetNameList2.contains('SKT2') &&
              !widgetNameList2.contains('SKT3') &&
              !widgetNameList2.contains('16ASKT') &&
              !widgetNameList2.contains('USB') &&
              !widgetNameList2.contains('RJ-11') &&
              !widgetNameList2.contains('RJ-45') &&
              !widgetNameList2.contains('External1M')) &&
          (!widgetNameList3.contains('SKT1') &&
              !widgetNameList3.contains('SKT2') &&
              !widgetNameList3.contains('SKT3') &&
              !widgetNameList3.contains('16ASKT') &&
              !widgetNameList3.contains('USB') &&
              !widgetNameList3.contains('RJ-11') &&
              !widgetNameList3.contains('RJ-45') &&
              !widgetNameList3.contains('External1M'))) {
        return true;
      }
    } else {
      if ((!widgetNameList.contains('SKT1') &&
          !widgetNameList.contains('SKT2') &&
          !widgetNameList.contains('SKT3') &&
          !widgetNameList.contains('16ASKT') &&
          !widgetNameList.contains('USB') &&
          !widgetNameList.contains('RJ-11') &&
          !widgetNameList.contains('RJ-45') &&
          !widgetNameList.contains('External1M'))) {
        return true;
      } else {
        return false;
      }
    }
    return false;
  }

  void reverseAllList() {
    automationList.value = automationList.reversed.toList();
    widgetNameList.value = widgetNameList.reversed.toList();
    widgetList.value = widgetList.reversed.toList();
    switchIndexList.value = switchIndexList.reversed.toList();
  }

  void changeIconDialog({
    required String screenName,
    required int switchIcon,
    required BuildContext context,
    required int layoutNumber,
  }) {
    Get.defaultDialog(
      title: 'Select Icon',
      titleStyle: TextStyle(
        color: Theme.of(context).textTheme.bodyText2!.color,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        letterSpacing: 1,
      ),
      titlePadding: const EdgeInsets.all(10),
      content: IconsLayout(
        screenName: screenName,
        switchIndex: switchIcon,
        layoutNumber: layoutNumber,
      ),
    );
  }

  String getSelectedSize() {
    String moduleName = '-';
    if (isTouchModuleClicked()) {
      if (is2ModuleClick.isTrue) {
        moduleName = '2 Module';
      } else if (is3ModuleClick.isTrue) {
        if (is3ModuleRotate.isTrue) {
          moduleName = '3 Module(Vertical)';
        } else {
          moduleName = '3 Module';
        }
      } else if (is4ModuleClick.isTrue) {
        if (is4ModuleRotate.isTrue) {
          moduleName = '4 Module(Vertical)';
        } else {
          moduleName = '4 Module';
        }
      } else if (is6ModuleClick.isTrue) {
        if (is6ModuleRotate.isTrue) {
          moduleName = '6 Module(Vertical)';
        } else {
          moduleName = '6 Module';
        }
      } else if (is8ModuleClick.isTrue) {
        if (is8ModuleRotate.isTrue) {
          moduleName = '8 Module(Vertical)';
        } else {
          moduleName = '8 Module (Horizontal)';
        }
      } else if (is8Module2Click.isTrue) {
        moduleName = '8M(Square)';
      } else if (is12ModuleClick.isTrue) {
        moduleName = '12 Module';
      } else if (is16ModuleClick.isTrue) {
        moduleName = '16 Module';
      } else if (is18ModuleClick.isTrue) {
        moduleName = '18 Module';
      }
    }
    return moduleName;
  }

  setSelectedSize(String sizeName) {
    if (sizeName == '2 Module') {
      is2ModuleClick.value = true;
      widgetList.value = List.generate(
          2,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(2, (_) => "");
      automationList.value = List.generate(2, (_) => "");
      switchIndexList.value = List.generate(2, (_) => []);
    } else if (sizeName == '3 Module') {
      is3ModuleClick.value = true;
      widgetList.value = List.generate(
          3,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(3, (_) => "");
      switchIndexList.value = List.generate(3, (_) => []);
      automationList.value = List.generate(3, (_) => "");
    } else if (sizeName == '3 Module(Vertical)') {
      is3ModuleClick.value = true;
      is3ModuleRotate.value = true;
      widgetList.value = List.generate(
          3,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(3, (_) => "");
      switchIndexList.value = List.generate(3, (_) => []);
      automationList.value = List.generate(3, (_) => "");
    } else if (sizeName == '4 Module') {
      is4ModuleClick.value = true;
      widgetList.value = List.generate(
          4,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(4, (_) => "");
      switchIndexList.value = List.generate(4, (_) => []);
      automationList.value = List.generate(4, (_) => "");
    } else if (sizeName == '6 Module') {
      is6ModuleClick.value = true;
      widgetList.value = List.generate(
          6,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(6, (_) => "");
      switchIndexList.value = List.generate(6, (_) => []);
      automationList.value = List.generate(6, (_) => "");
    } else if (sizeName == '4 Module(Vertical)') {
      is4ModuleClick.value = true;
      is4ModuleRotate.value = true;
      widgetList.value = List.generate(
          4,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(4, (_) => "");
      switchIndexList.value = List.generate(4, (_) => []);
      automationList.value = List.generate(4, (_) => "");
    } else if (sizeName == '6 Module(Vertical)') {
      is6ModuleClick.value = true;
      is6ModuleRotate.value = true;
      widgetList.value = List.generate(
          6,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(6, (_) => "");
      switchIndexList.value = List.generate(6, (_) => []);
      automationList.value = List.generate(6, (_) => "");
    } else if (sizeName == '8 Module (Horizontal)') {
      is8ModuleClick.value = true;
      widgetList.value = List.generate(
          8,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(8, (_) => "");
      switchIndexList.value = List.generate(8, (_) => []);
      automationList.value = List.generate(8, (_) => "");
    } else if (sizeName == '8 Module(Vertical)') {
      is8ModuleClick.value = true;
      is8ModuleRotate.value = true;
      widgetList.value = List.generate(
          8,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(8, (_) => "");
      switchIndexList.value = List.generate(8, (_) => []);
      automationList.value = List.generate(8, (_) => "");
    } else if (sizeName == '8M(Square)') {
      is8Module2Click.value = true;
      widgetList.value = List.generate(
          4,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetList2.value = List.generate(
          4,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(4, (_) => "");
      switchIndexList.value = List.generate(4, (_) => []);
      automationList.value = List.generate(4, (_) => "");
      widgetNameList2.value = List.generate(4, (_) => "");
      switchIndexList2.value = List.generate(4, (_) => []);
      automationList2.value = List.generate(4, (_) => "");
    } else if (sizeName == '12 Module') {
      is12ModuleClick.value = true;
      widgetList.value = List.generate(
          6,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetList2.value = List.generate(
          6,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(6, (_) => "");
      automationList.value = List.generate(6, (_) => "");
      automationList2.value = List.generate(6, (_) => "");
      switchIndexList.value = List.generate(6, (_) => []);
      widgetNameList2.value = List.generate(6, (_) => "");
      switchIndexList2.value = List.generate(6, (_) => []);
    } else if (sizeName == '16 Module') {
      is16ModuleClick.value = true;
      widgetList.value = List.generate(
          8,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(8, (_) => "");
      switchIndexList.value = List.generate(8, (_) => []);
      automationList.value = List.generate(8, (_) => "");
      automationList2.value = List.generate(8, (_) => "");
      widgetNameList2.value = List.generate(8, (_) => "");
      switchIndexList2.value = List.generate(8, (_) => []);
      widgetList2.value = List.generate(
          8,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
    } else if (sizeName == '18 Module') {
      is18ModuleClick.value = true;
      widgetList.value = List.generate(
          6,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetList2.value = List.generate(
          6,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetList3.value = List.generate(
          6,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(6, (_) => "");
      switchIndexList.value = List.generate(6, (_) => []);
      widgetNameList2.value = List.generate(6, (_) => "");
      switchIndexList2.value = List.generate(6, (_) => []);
      widgetNameList3.value = List.generate(6, (_) => "");
      switchIndexList3.value = List.generate(6, (_) => []);
      automationList.value = List.generate(6, (_) => "");
      automationList2.value = List.generate(6, (_) => "");
      automationList3.value = List.generate(6, (_) => "");
    }
  }

  setTIType(String name) {
    automation.value = name;
  }

  getBasicPrising() {
    if (panelMaterial.value == "Acrylic" ||
        modularMaterial.value == "Acrylic") {
      if (glassColor.value == "Black") {
        if (is2ModuleClick.isTrue) {
          modulePrising.value = ((60 + 176) / 0.8);
        } else if (is3ModuleClick.isTrue) {
          modulePrising.value = 0;
        } else if (is4ModuleClick.isTrue) {
          modulePrising.value = ((65 + 208) / 0.8);
        } else if (is6ModuleClick.isTrue) {
          modulePrising.value = ((100 + 376) / 0.8);
        } else if (is8ModuleClick.isTrue) {
          modulePrising.value = ((110 + 420) / 0.8);
        } else if (is8Module2Click.isTrue) {
          modulePrising.value = ((110 + 420) / 0.8);
        } else if (is12ModuleClick.isTrue) {
          modulePrising.value = ((200 + 644) / 0.8);
        } else if (is16ModuleClick.isTrue) {
          modulePrising.value = ((250 + 772) / 0.8);
        } else if (is18ModuleClick.isTrue) {
          modulePrising.value = ((300 + 854) / 0.8);
        }
      } else if (glassColor.value == "White") {
        if (is2ModuleClick.isTrue) {
          modulePrising.value = ((75 + 176) / 0.8);
        } else if (is3ModuleClick.isTrue) {
          modulePrising.value = 0;
        } else if (is4ModuleClick.isTrue) {
          modulePrising.value = ((90 + 208) / 0.8);
        } else if (is6ModuleClick.isTrue) {
          modulePrising.value = ((110 + 376) / 0.8);
        } else if (is8ModuleClick.isTrue) {
          modulePrising.value = ((120 + 420) / 0.8);
        } else if (is8Module2Click.isTrue) {
          modulePrising.value = ((120 + 420) / 0.8);
        } else if (is12ModuleClick.isTrue) {
          modulePrising.value = ((230 + 644) / 0.8);
        } else if (is16ModuleClick.isTrue) {
          modulePrising.value = ((330 + 772) / 0.8);
        } else if (is18ModuleClick.isTrue) {
          modulePrising.value = ((430 + 854) / 0.8);
        }
      } else {
        if (is2ModuleClick.isTrue) {
          modulePrising.value = ((295 + 176) / 0.8);
        } else if (is3ModuleClick.isTrue) {
          modulePrising.value = 0;
        } else if (is4ModuleClick.isTrue) {
          modulePrising.value = ((280 + 208) / 0.8);
        } else if (is6ModuleClick.isTrue) {
          modulePrising.value = ((310 + 376) / 0.8);
        } else if (is8ModuleClick.isTrue) {
          modulePrising.value = ((320 + 420) / 0.8);
        } else if (is8Module2Click.isTrue) {
          modulePrising.value = ((320 + 420) / 0.8);
        } else if (is12ModuleClick.isTrue) {
          modulePrising.value = ((430 + 644) / 0.8);
        } else if (is16ModuleClick.isTrue) {
          modulePrising.value = ((530 + 772) / 0.8);
        } else if (is18ModuleClick.isTrue) {
          modulePrising.value = ((630 + 854) / 0.8);
        }
      }
    } else if (panelMaterial.value == "Glass") {
      if (glassColor.value == "Black") {
        if (is2ModuleClick.isTrue) {
          modulePrising.value = ((296 + 176) / 0.8);
        } else if (is3ModuleClick.isTrue) {
          modulePrising.value = 0;
        } else if (is4ModuleClick.isTrue) {
          modulePrising.value = ((500 + 208) / 0.8);
        } else if (is6ModuleClick.isTrue) {
          modulePrising.value = ((568 + 376) / 0.8);
        } else if (is8ModuleClick.isTrue) {
          modulePrising.value = ((625 + 420) / 0.8);
        } else if (is8Module2Click.isTrue) {
          modulePrising.value = ((625 + 420) / 0.8);
        } else if (is12ModuleClick.isTrue) {
          modulePrising.value = ((690 + 644) / 0.8);
        } else if (is16ModuleClick.isTrue) {
          modulePrising.value = ((758 + 772) / 0.8);
        } else if (is18ModuleClick.isTrue) {
          modulePrising.value = ((820 + 854) / 0.8);
        }
      } else if (glassColor.value == "White") {
        if (is2ModuleClick.isTrue) {
          modulePrising.value = ((296 + 176) / 0.8);
        } else if (is3ModuleClick.isTrue) {
          modulePrising.value = 0;
        } else if (is4ModuleClick.isTrue) {
          modulePrising.value = ((500 + 208) / 0.8);
        } else if (is6ModuleClick.isTrue) {
          modulePrising.value = ((568 + 376) / 0.8);
        } else if (is8ModuleClick.isTrue) {
          modulePrising.value = ((625 + 420) / 0.8);
        } else if (is8Module2Click.isTrue) {
          modulePrising.value = ((625 + 420) / 0.8);
        } else if (is12ModuleClick.isTrue) {
          modulePrising.value = ((690 + 644) / 0.8);
        } else if (is16ModuleClick.isTrue) {
          modulePrising.value = ((750 + 772) / 0.8);
        } else if (is18ModuleClick.isTrue) {
          modulePrising.value = ((870 + 854) / 0.8);
        }
      } else {
        if (is2ModuleClick.isTrue) {
          modulePrising.value = ((475 + 176) / 0.8);
        } else if (is3ModuleClick.isTrue) {
          modulePrising.value = 0;
        } else if (is4ModuleClick.isTrue) {
          modulePrising.value = ((575 + 208) / 0.8);
        } else if (is6ModuleClick.isTrue) {
          modulePrising.value = ((648 + 376) / 0.8);
        } else if (is8ModuleClick.isTrue) {
          modulePrising.value = ((775 + 420) / 0.8);
        } else if (is8Module2Click.isTrue) {
          modulePrising.value = ((775 + 420) / 0.8);
        } else if (is12ModuleClick.isTrue) {
          modulePrising.value = ((875 + 644) / 0.8);
        } else if (is16ModuleClick.isTrue) {
          modulePrising.value = ((975 + 772) / 0.8);
        } else if (is18ModuleClick.isTrue) {
          modulePrising.value = ((1075 + 854) / 0.8);
        }
      }
    } else if (panelMaterial.value == "Wood") {
      if (is2ModuleClick.isTrue) {
        modulePrising.value = ((495 + 176) / 0.8);
      } else if (is3ModuleClick.isTrue) {
        modulePrising.value = 0;
      } else if (is4ModuleClick.isTrue) {
        modulePrising.value = ((595 + 208) / 0.8);
      } else if (is6ModuleClick.isTrue) {
        modulePrising.value = ((695 + 376) / 0.8);
      } else if (is8ModuleClick.isTrue) {
        modulePrising.value = ((795 + 420) / 0.8);
      } else if (is8Module2Click.isTrue) {
        modulePrising.value = ((795 + 420) / 0.8);
      } else if (is12ModuleClick.isTrue) {
        modulePrising.value = ((895 + 644) / 0.8);
      } else if (is16ModuleClick.isTrue) {
        modulePrising.value = ((995 + 772) / 0.8);
      } else if (is18ModuleClick.isTrue) {
        modulePrising.value = ((1095 + 854) / 0.8);
      }
    } else if (panelMaterial.value == "Marble") {
      if (is2ModuleClick.isTrue) {
        modulePrising.value = ((800 + 176) / 0.8);
      } else if (is3ModuleClick.isTrue) {
        modulePrising.value = ((900 + 854) / 0.8);
      } else if (is4ModuleClick.isTrue) {
        modulePrising.value = ((1000 + 208) / 0.8);
      } else if (is6ModuleClick.isTrue) {
        modulePrising.value = ((1300 + 376) / 0.8);
      } else if (is8ModuleClick.isTrue) {
        modulePrising.value = ((1500 + 420) / 0.8);
      } else if (is8Module2Click.isTrue) {
        modulePrising.value = ((1500 + 420) / 0.8);
      } else if (is12ModuleClick.isTrue) {
        modulePrising.value = ((2000 + 644) / 0.8);
      } else if (is16ModuleClick.isTrue) {
        modulePrising.value = 0;
      } else if (is18ModuleClick.isTrue) {
        modulePrising.value = 0;
      }
    }
    return modulePrising.value;
  }

  setDisableColor(layoutNumber) {
    if (layoutNumber == 1) {
      if (isDisable.value) {
        return true;
      } else {
        return false;
      }
    } else if (layoutNumber == 2) {
      if (isDisable2.value) {
        return true;
      } else {
        return false;
      }
    } else if (layoutNumber == 3) {
      if (isDisable3.value) {
        return true;
      } else {
        return false;
      }
    }
  }

  clearSpecificWidget(count, layoutNumber) {
    getBasicPrising();
    if (layoutNumber == 1) {
      widgetList.value = List.generate(
          count,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(count, (_) => "");
      switchIndexList.value = List.generate(count, (_) => []);
      automationList.value = List.generate(count, (_) => "");
      isDisable.value = false;
    } else if (layoutNumber == 2) {
      widgetList2.value = List.generate(
          count,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList2.value = List.generate(count, (_) => "");
      switchIndexList2.value = List.generate(count, (_) => []);
      automationList2.value = List.generate(count, (_) => "");
      isDisable2.value = false;
    } else if (layoutNumber == 3) {
      widgetList3.value = List.generate(
          count,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList3.value = List.generate(count, (_) => "");
      switchIndexList3.value = List.generate(count, (_) => []);
      automationList3.value = List.generate(count, (_) => "");
      isDisable3.value = false;
    }
    automation.value = 'Wifi & Remote';
    variant.value = '';
  }

  setSelectedText(quantity, comments) {
    quantityController.text = quantity;
    commentController.text = comments;
  }

  setSelectedMaterial(String name, bool modular) {
    isModularViewOn.value = modular;
    if (modular == true) {
      modularMaterial.value = name;
    } else {
      panelMaterial.value = name;
    }
  }

  setModules(widgets1, widgets2, widgets3) {
    var pdfController = Get.put(PdfController());
    if (widgets1.contains("")) {
      widgetNameList.value = widgets1;
      switchIndexList.value =
          pdfController.moduleIconList1[pdfController.pdfComponentIndex.value];
      widgetList.value = pdfController
          .moduleWidgetList1[pdfController.pdfComponentIndex.value];
    } else {
      for (int i = 0; i < widgets1.length; i++) {
        if (widgets1[i] == "2XXNX") {
          on2XXNXClick(layoutNumber: 1);
        } else if (widgets1[i] == "2XXXH") {
          on2XXXHClick(layoutNumber: 1);
        } else if (widgets1[i] == "1C") {
          on1CClick(layoutNumber: 1);
        } else if (widgets1[i] == "2S(Horizontal)") {
          automation.value = pdfController
              .pdfAutomationList1[pdfController.pdfComponentIndex.value][i];
          on2XXXHClick(layoutNumber: 1);
        } else if (widgets1[i] == "2S(Vertical)") {
          automation.value = pdfController
              .pdfAutomationList1[pdfController.pdfComponentIndex.value][i];
          on2XXXHVerClick(layoutNumber: 1);
        } else if (widgets1[i] == "4S") {
          automation.value = pdfController
              .pdfAutomationList1[pdfController.pdfComponentIndex.value][i];
          onS4Click(layoutNumber: 1);
        } else if (widgets1[i] == "2S1R") {
          automation.value = pdfController
              .pdfAutomationList1[pdfController.pdfComponentIndex.value][i];
          on2XDXXClick(layoutNumber: 1);
        } else if (widgets1[i] == "4S1R") {
          automation.value = pdfController
              .pdfAutomationList1[pdfController.pdfComponentIndex.value][i];
          on4XDXXClick(layoutNumber: 1);
        } else if (widgets1[i] == "8S") {
          automation.value = pdfController
              .pdfAutomationList1[pdfController.pdfComponentIndex.value][i];
          onS8Click(layoutNumber: 1);
        } else if (widgets1[i] == "8S1R") {
          automation.value = pdfController
              .pdfAutomationList1[pdfController.pdfComponentIndex.value][i];
          on8FDNHClick(layoutNumber: 1);
        } else if (widgets1[i] == "10S2R") {
          automation.value = pdfController
              .pdfAutomationList1[pdfController.pdfComponentIndex.value][i];
          on10FXNHClick(layoutNumber: 1);
        } else if (widgets1[i] == "2XXNX(Vertical)") {
          on2XXNXVerClick(layoutNumber: 1);
        } else if (widgets1[i] == "2XXXH(Vertical)") {
          on2XXXHVerClick(layoutNumber: 1);
        } else if (widgets1[i] == "1C(Vertical)") {
          on1CVerClick(layoutNumber: 1);
        } else if (widgets1[i] == "1B") {
          on1BClick(layoutNumber: 1);
        } else if (widgets1[i] == "2XDXX") {
          on2XDXXClick(layoutNumber: 1);
        } else if (widgets1[i] == "4XXNX") {
          on4XXNXClick(layoutNumber: 1);
        } else if (widgets1[i] == "S.4") {
          onS4Click(layoutNumber: 1);
        } else if (widgets1[i] == "2C") {
          on2cClick(layoutNumber: 1);
        } else if (widgets1[i] == "4FDNH") {
          on4FDNHClick(layoutNumber: 1);
        } else if (widgets1[i] == "4XDXX") {
          on4XDXXClick(layoutNumber: 1);
        } else if (widgets1[i] == "8XXNH") {
          on8XXNHClick(layoutNumber: 1);
        } else if (widgets1[i] == "S.8") {
          onS8Click(layoutNumber: 1);
        } else if (widgets1[i] == "8FDNH") {
          on8FDNHClick(layoutNumber: 1);
        } else if (widgets1[i] == "8XDNH") {
          on8XDNHClick(layoutNumber: 1);
        } else if (widgets1[i] == "8FXNH") {
          on8FXNHClick(layoutNumber: 1);
        } else if (widgets1[i] == "10FXNH") {
          on10FXNHClick(layoutNumber: 1);
        } else if (widgets1[i] == "SKT1") {
          onSocket1Click(layoutNumber: 1);
        } else if (widgets1[i] == "SKT2") {
          onSocket2Click(layoutNumber: 1);
        } else if (widgets1[i] == "SKT3") {
        } else if (widgets1[i] == "USB") {
          onUsbClick(layoutNumber: 1);
        } else if (widgets1[i] == "RJ-11") {
          onRj11Click(layoutNumber: 1);
        } else if (widgets1[i] == "RJ-45") {
          onRj45Click(layoutNumber: 1);
        } else if (widgets1[i] == "External1M") {
          onExternal1MClick(layoutNumber: 1);
        } else if (widgets1[i] == "16ASKT") {
          on16ASocketClick(layoutNumber: 1);
        }
      }
    }
    if (widgets2.contains("")) {
      widgetNameList2.value = widgets2;
      switchIndexList2.value =
          pdfController.moduleIconList2[pdfController.pdfComponentIndex.value];
      widgetList2.value = pdfController
          .moduleWidgetList2[pdfController.pdfComponentIndex.value];
    } else {
      for (int i = 0; i < widgets2.length; i++) {
        if (widgets2[i] == "2XXNX") {
          on2XXNXClick(layoutNumber: 2);
        } else if (widgets2[i] == "2XXXH") {
          on2XXXHClick(layoutNumber: 2);
        } else if (widgets2[i] == "1C") {
          on1CClick(layoutNumber: 2);
        } else if (widgets2[i] == "2S(Horizontal)") {
          automation.value = pdfController
              .pdfAutomationList2[pdfController.pdfComponentIndex.value][i];
          on2XXXHClick(layoutNumber: 2);
        } else if (widgets2[i] == "2S(Vertical)") {
          automation.value = pdfController
              .pdfAutomationList2[pdfController.pdfComponentIndex.value][i];
          on2XXXHVerClick(layoutNumber: 2);
        } else if (widgets2[i] == "4S") {
          automation.value = pdfController
              .pdfAutomationList2[pdfController.pdfComponentIndex.value][i];
          onS4Click(layoutNumber: 2);
        } else if (widgets2[i] == "2S1R") {
          automation.value = pdfController
              .pdfAutomationList2[pdfController.pdfComponentIndex.value][i];
          on2XDXXClick(layoutNumber: 2);
        } else if (widgets2[i] == "4S1R") {
          automation.value = pdfController
              .pdfAutomationList2[pdfController.pdfComponentIndex.value][i];
          on4XDXXClick(layoutNumber: 2);
        } else if (widgets2[i] == "8S") {
          automation.value = pdfController
              .pdfAutomationList2[pdfController.pdfComponentIndex.value][i];
          onS8Click(layoutNumber: 2);
        } else if (widgets2[i] == "8S1R") {
          automation.value = pdfController
              .pdfAutomationList2[pdfController.pdfComponentIndex.value][i];
          on8FDNHClick(layoutNumber: 2);
        } else if (widgets2[i] == "10S2R") {
          automation.value = pdfController
              .pdfAutomationList2[pdfController.pdfComponentIndex.value][i];
          on10FXNHClick(layoutNumber: 2);
        } else if (widgets2[i] == "2XXNX(Vertical)") {
          on2XXNXVerClick(layoutNumber: 2);
        } else if (widgets2[i] == "2XXXH(Vertical)") {
          on2XXXHVerClick(layoutNumber: 2);
        } else if (widgets2[i] == "1C(Vertical)") {
          on1CVerClick(layoutNumber: 2);
        } else if (widgets2[i] == "1B") {
          on1BClick(layoutNumber: 2);
        } else if (widgets2[i] == "2XDXX") {
          on2XDXXClick(layoutNumber: 2);
        } else if (widgets2[i] == "4XXNX") {
          on4XXNXClick(layoutNumber: 2);
        } else if (widgets2[i] == "S.4") {
          onS4Click(layoutNumber: 2);
        } else if (widgets2[i] == "2C") {
          on2cClick(layoutNumber: 2);
        } else if (widgets2[i] == "4FDNH") {
          on4FDNHClick(layoutNumber: 2);
        } else if (widgets2[i] == "4XDXX") {
          on4XDXXClick(layoutNumber: 2);
        } else if (widgets2[i] == "8XXNH") {
          on8XXNHClick(layoutNumber: 2);
        } else if (widgets2[i] == "S.8") {
          onS8Click(layoutNumber: 2);
        } else if (widgets2[i] == "8FDNH") {
          on8FDNHClick(layoutNumber: 2);
        } else if (widgets2[i] == "8XDNH") {
          on8XDNHClick(layoutNumber: 2);
        } else if (widgets2[i] == "8FXNH") {
          on8FXNHClick(layoutNumber: 2);
        } else if (widgets2[i] == "10FXNH") {
          on10FXNHClick(layoutNumber: 2);
        } else if (widgets2[i] == "SKT1") {
          onSocket1Click(layoutNumber: 2);
        } else if (widgets2[i] == "SKT2") {
          onSocket2Click(layoutNumber: 2);
        } else if (widgets2[i] == "SKT3") {
        } else if (widgets2[i] == "USB") {
          onUsbClick(layoutNumber: 2);
        } else if (widgets2[i] == "RJ-11") {
          onRj11Click(layoutNumber: 2);
        } else if (widgets2[i] == "RJ-45") {
          onRj45Click(layoutNumber: 2);
        } else if (widgets2[i] == "External1M") {
          onExternal1MClick(layoutNumber: 2);
        } else if (widgets2[i] == "16ASKT") {
          on16ASocketClick(layoutNumber: 2);
        }
      }
    }
    if (widgets3.contains("")) {
      widgetNameList3.value = widgets3;
      switchIndexList3.value =
          pdfController.moduleIconList3[pdfController.pdfComponentIndex.value];
      widgetList3.value = pdfController
          .moduleWidgetList3[pdfController.pdfComponentIndex.value];
    } else {
      for (int i = 0; i < widgets3.length; i++) {
        if (widgets3[i] == "2XXNX") {
          on2XXNXClick(layoutNumber: 3);
        } else if (widgets3[i] == "2XXXH") {
          on2XXXHClick(layoutNumber: 3);
        } else if (widgets3[i] == "1C") {
          on1CClick(layoutNumber: 3);
        } else if (widgets3[i] == "2S(Horizontal)") {
          automation.value = pdfController
              .pdfAutomationList3[pdfController.pdfComponentIndex.value][i];
          on2XXXHClick(layoutNumber: 3);
        } else if (widgets3[i] == "2S(Vertical)") {
          automation.value = pdfController
              .pdfAutomationList3[pdfController.pdfComponentIndex.value][i];
          on2XXXHVerClick(layoutNumber: 3);
        } else if (widgets3[i] == "4S") {
          automation.value = pdfController
              .pdfAutomationList3[pdfController.pdfComponentIndex.value][i];
          onS4Click(layoutNumber: 3);
        } else if (widgets3[i] == "2S1R") {
          automation.value = pdfController
              .pdfAutomationList3[pdfController.pdfComponentIndex.value][i];
          on2XDXXClick(layoutNumber: 3);
        } else if (widgets3[i] == "4S1R") {
          automation.value = pdfController
              .pdfAutomationList3[pdfController.pdfComponentIndex.value][i];
          on4XDXXClick(layoutNumber: 3);
        } else if (widgets3[i] == "8S") {
          automation.value = pdfController
              .pdfAutomationList3[pdfController.pdfComponentIndex.value][i];
          onS8Click(layoutNumber: 3);
        } else if (widgets3[i] == "8S1R") {
          automation.value = pdfController
              .pdfAutomationList3[pdfController.pdfComponentIndex.value][i];
          on8FDNHClick(layoutNumber: 3);
        } else if (widgets3[i] == "10S2R") {
          automation.value = pdfController
              .pdfAutomationList3[pdfController.pdfComponentIndex.value][i];
          on10FXNHClick(layoutNumber: 3);
        } else if (widgets3[i] == "1B") {
          on1BClick(layoutNumber: 3);
        } else if (widgets3[i] == "2XXNX(Vertical)") {
          on2XXNXVerClick(layoutNumber: 3);
        } else if (widgets3[i] == "2XXXH(Vertical)") {
          on2XXXHVerClick(layoutNumber: 3);
        } else if (widgets3[i] == "1C(Vertical)") {
          on1CVerClick(layoutNumber: 3);
        } else if (widgets3[i] == "2XDXX") {
          on2XDXXClick(layoutNumber: 3);
        } else if (widgets3[i] == "4XXNX") {
          on4XXNXClick(layoutNumber: 3);
        } else if (widgets3[i] == "S.4") {
          onS4Click(layoutNumber: 3);
        } else if (widgets3[i] == "2C") {
          on2cClick(layoutNumber: 3);
        } else if (widgets3[i] == "4FDNH") {
          on4FDNHClick(layoutNumber: 3);
        } else if (widgets3[i] == "4XDXX") {
          on4XDXXClick(layoutNumber: 3);
        } else if (widgets3[i] == "8XXNH") {
          on8XXNHClick(layoutNumber: 3);
        } else if (widgets3[i] == "S.8") {
          onS8Click(layoutNumber: 3);
        } else if (widgets3[i] == "8FDNH") {
          on8FDNHClick(layoutNumber: 3);
        } else if (widgets3[i] == "8XDNH") {
          on8XDNHClick(layoutNumber: 3);
        } else if (widgets3[i] == "8FXNH") {
          on8FXNHClick(layoutNumber: 3);
        } else if (widgets3[i] == "10FXNH") {
          on10FXNHClick(layoutNumber: 3);
        } else if (widgets3[i] == "SKT1") {
          onSocket1Click(layoutNumber: 3);
        } else if (widgets3[i] == "SKT2") {
          onSocket2Click(layoutNumber: 3);
        } else if (widgets3[i] == "SKT3") {
        } else if (widgets3[i] == "USB") {
          onUsbClick(layoutNumber: 3);
        } else if (widgets3[i] == "RJ-11") {
          onRj11Click(layoutNumber: 3);
        } else if (widgets3[i] == "RJ-45") {
          onRj45Click(layoutNumber: 3);
        } else if (widgets3[i] == "External1M") {
          onExternal1MClick(layoutNumber: 3);
        } else if (widgets3[i] == "16ASKT") {
          on16ASocketClick(layoutNumber: 3);
        }
      }
    }
  }

  setWidget(w1, w2, w3) {
    var pdfController = Get.put(PdfController());
    for (int i = 0; i < w1.length; i++) {
      if (w1[i] != []) {
        if (!pdfController
            .moduleIconList1[pdfController.pdfComponentIndex.value][i]
            .every((element) => element.isEqual(1))) {
          widgetList[i] = w1[i];
          switchIndexList[i] = pdfController
              .moduleIconList1[pdfController.pdfComponentIndex.value][i];
        }
      }
    }
    for (int i = 0; i < w2.length; i++) {
      if (w2[i] != []) {
        if (!pdfController
            .moduleIconList2[pdfController.pdfComponentIndex.value][i]
            .every((element) => element.isEqual(1))) {
          widgetList2[i] = w2[i];
          switchIndexList2[i] = pdfController
              .moduleIconList2[pdfController.pdfComponentIndex.value][i];
        }
      }
    }
    for (int i = 0; i < w3.length; i++) {
      if (w3[i] != []) {
        if (!pdfController
            .moduleIconList3[pdfController.pdfComponentIndex.value][i]
            .every((element) => element.isEqual(1))) {
          widgetList3[i] = w3[i];
          switchIndexList3[i] = pdfController
              .moduleIconList3[pdfController.pdfComponentIndex.value][i];
        }
      }
    }
  }

  updateWidgetPosition(newIndex, oldIndex, layoutNumber) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    if (layoutNumber == 1) {
      final Widget widget = widgetList.removeAt(oldIndex);
      widgetList.insert(newIndex, widget);
      final String widgetName = widgetNameList.removeAt(oldIndex);
      widgetNameList.insert(newIndex, widgetName);
      final List<int> switchIcons = switchIndexList.removeAt(oldIndex);
      switchIndexList.insert(newIndex, switchIcons);
      final String automation = automationList.removeAt(oldIndex);
      automationList.insert(newIndex, automation);
    } else if (layoutNumber == 2) {
      final Widget widget = widgetList2.removeAt(oldIndex);
      widgetList2.insert(newIndex, widget);
      final String widgetName = widgetNameList2.removeAt(oldIndex);
      widgetNameList2.insert(newIndex, widgetName);
      final List<int> switchIcons = switchIndexList2.removeAt(oldIndex);
      switchIndexList2.insert(newIndex, switchIcons);
      final String automation = automationList2.removeAt(oldIndex);
      automationList2.insert(newIndex, automation);
    } else if (layoutNumber == 3) {
      final Widget widget = widgetList3.removeAt(oldIndex);
      widgetList3.insert(newIndex, widget);
      final String widgetName = widgetNameList3.removeAt(oldIndex);
      widgetNameList3.insert(newIndex, widgetName);
      final List<int> switchIcons = switchIndexList3.removeAt(oldIndex);
      switchIndexList3.insert(newIndex, switchIcons);
      final String automation = automationList3.removeAt(oldIndex);
      automationList3.insert(newIndex, automation);
    }
  }

  removeWidgetPosition(index, layoutNumber) {
    if (layoutNumber == 1) {
      if (widgetNameList[index] != "") {
        isDisable.value = false;
        widgetList.removeAt(index);
        automationList.removeAt(index);
        switchIndexList.removeAt(index);
      }
      if (widgetNameList[index] == "10FXNH" ||
          widgetNameList[index] == "10S2R") {
        widgetList.addAll(List.generate(
            8,
            (_) => const SizedBox(
                  height: 93,
                  width: 46,
                )));
        widgetNameList.removeAt(index);
        widgetNameList.addAll(List.generate(8, (_) => ""));
        automationList.addAll(List.generate(8, (_) => ""));
        switchIndexList.addAll(List.generate(8, (_) => []));
      } else if (widgetNameList[index] == "4S1R" ||
          widgetNameList[index] == "4XDXX" ||
          widgetNameList[index] == "4FDNH") {
        widgetList.addAll(List.generate(
            4,
            (_) => const SizedBox(
                  height: 93,
                  width: 46,
                )));
        widgetNameList.removeAt(index);
        widgetNameList.addAll(List.generate(4, (_) => ""));
        automationList.addAll(List.generate(4, (_) => ""));
        switchIndexList.addAll(List.generate(4, (_) => []));
      } else if (widgetNameList[index] == "USB" ||
          widgetNameList[index] == "RJ-11" ||
          widgetNameList[index] == "RJ-45" ||
          widgetNameList[index] == "External1M") {
        widgetList.add(const SizedBox(
          height: 93,
          width: 46,
        ));
        widgetNameList.removeAt(index);
        widgetNameList.add("");
        automationList.add("");
        switchIndexList.add([]);
      } else if (widgetNameList[index] == "8S1R" ||
          widgetNameList[index] == "8S" ||
          widgetNameList[index] == "8XXNH" ||
          widgetNameList[index] == "8FDNH" ||
          widgetNameList[index] == "8XDNH" ||
          widgetNameList[index] == "8FXNH" ||
          widgetNameList[index] == "S.8") {
        widgetList.addAll(List.generate(
            6,
            (_) => const SizedBox(
                  height: 93,
                  width: 46,
                )));
        widgetNameList.removeAt(index);
        widgetNameList.addAll(List.generate(6, (_) => ""));
        automationList.addAll(List.generate(6, (_) => ""));
        switchIndexList.addAll(List.generate(6, (_) => []));
      } else {
        widgetList.addAll(List.generate(
            2,
            (_) => const SizedBox(
                  height: 93,
                  width: 46,
                )));
        widgetNameList.removeAt(index);
        widgetNameList.addAll(List.generate(2, (_) => ""));
        automationList.addAll(List.generate(2, (_) => ""));
        switchIndexList.addAll(List.generate(2, (_) => []));
      }
    } else if (layoutNumber == 2) {
      if (widgetNameList2[index] != "") {
        isDisable2.value = false;
        widgetList2.removeAt(index);
        automationList2.removeAt(index);
        switchIndexList2.removeAt(index);
      }
      if (widgetNameList2[index] == "10FXNH" ||
          widgetNameList2[index] == "10S2R") {
        widgetList2.addAll(List.generate(
            8,
            (_) => const SizedBox(
                  height: 93,
                  width: 46,
                )));
        widgetNameList2.removeAt(index);
        widgetNameList2.addAll(List.generate(8, (_) => ""));
        automationList2.addAll(List.generate(8, (_) => ""));
        switchIndexList2.addAll(List.generate(8, (_) => []));
      } else if (widgetNameList2[index] == "4S1R" ||
          widgetNameList2[index] == "4XDXX" ||
          widgetNameList2[index] == "4FDNH") {
        widgetList2.addAll(List.generate(
            4,
            (_) => const SizedBox(
                  height: 93,
                  width: 46,
                )));
        widgetNameList2.removeAt(index);
        widgetNameList2.addAll(List.generate(4, (_) => ""));
        automationList2.addAll(List.generate(4, (_) => ""));
        switchIndexList2.addAll(List.generate(4, (_) => []));
      } else if (widgetNameList2[index] == "USB" ||
          widgetNameList2[index] == "RJ-11" ||
          widgetNameList2[index] == "RJ-45" ||
          widgetNameList2[index] == "External1M") {
        widgetList2.add(const SizedBox(
          height: 93,
          width: 46,
        ));
        widgetNameList2.removeAt(index);
        widgetNameList2.add("");
        automationList2.add("");
        switchIndexList2.add([]);
      } else if (widgetNameList2[index] == "8S1R" ||
          widgetNameList2[index] == "8S" ||
          widgetNameList2[index] == "8XXNH" ||
          widgetNameList2[index] == "8FDNH" ||
          widgetNameList2[index] == "8XDNH" ||
          widgetNameList2[index] == "8FXNH" ||
          widgetNameList2[index] == "S.8") {
        widgetList2.addAll(List.generate(
            6,
            (_) => const SizedBox(
                  height: 93,
                  width: 46,
                )));
        widgetNameList2.removeAt(index);
        widgetNameList2.addAll(List.generate(6, (_) => ""));
        automationList2.addAll(List.generate(6, (_) => ""));
        switchIndexList2.addAll(List.generate(6, (_) => []));
      } else {
        widgetList2.addAll(List.generate(
            2,
            (_) => const SizedBox(
                  height: 93,
                  width: 46,
                )));
        widgetNameList2.removeAt(index);
        widgetNameList2.addAll(List.generate(2, (_) => ""));
        automationList2.addAll(List.generate(2, (_) => ""));
        switchIndexList2.addAll(List.generate(2, (_) => []));
      }
    } else if (layoutNumber == 3) {
      if (widgetNameList3[index] != "") {
        isDisable3.value = false;
        widgetList3.removeAt(index);
        automationList3.removeAt(index);
        switchIndexList3.removeAt(index);
      }
      if (widgetNameList3[index] == "10FXNH" ||
          widgetNameList3[index] == "10S2R") {
        widgetList3.addAll(List.generate(
            8,
            (_) => const SizedBox(
                  height: 93,
                  width: 46,
                )));
        widgetNameList3.removeAt(index);
        widgetNameList3.addAll(List.generate(8, (_) => ""));
        automationList3.addAll(List.generate(8, (_) => ""));
        switchIndexList3.addAll(List.generate(8, (_) => []));
      } else if (widgetNameList3[index] == "4S1R" ||
          widgetNameList3[index] == "4XDXX" ||
          widgetNameList3[index] == "4FDNH") {
        widgetList3.addAll(List.generate(
            4,
            (_) => const SizedBox(
                  height: 93,
                  width: 46,
                )));
        widgetNameList3.removeAt(index);
        widgetNameList3.addAll(List.generate(4, (_) => ""));
        automationList3.addAll(List.generate(4, (_) => ""));
        switchIndexList3.addAll(List.generate(4, (_) => []));
      } else if (widgetNameList3[index] == "USB" ||
          widgetNameList3[index] == "RJ-11" ||
          widgetNameList3[index] == "RJ-45" ||
          widgetNameList3[index] == "External1M") {
        widgetList3.add(const SizedBox(
          height: 93,
          width: 46,
        ));
        widgetNameList3.removeAt(index);
        widgetNameList3.add("");
        automationList3.add("");
        switchIndexList3.add([]);
      } else if (widgetNameList3[index] == "8S1R" ||
          widgetNameList3[index] == "8S" ||
          widgetNameList3[index] == "8XXNH" ||
          widgetNameList3[index] == "8FDNH" ||
          widgetNameList3[index] == "8XDNH" ||
          widgetNameList3[index] == "8FXNH" ||
          widgetNameList3[index] == "S.8") {
        widgetList3.addAll(List.generate(
            6,
            (_) => const SizedBox(
                  height: 93,
                  width: 46,
                )));
        widgetNameList3.removeAt(index);
        widgetNameList3.addAll(List.generate(6, (_) => ""));
        automationList3.addAll(List.generate(6, (_) => ""));
        switchIndexList3.addAll(List.generate(6, (_) => []));
      } else {
        widgetList3.addAll(List.generate(
            2,
            (_) => const SizedBox(
                  height: 93,
                  width: 46,
                )));
        widgetNameList3.removeAt(index);
        widgetNameList3.addAll(List.generate(2, (_) => ""));
        automationList3.addAll(List.generate(2, (_) => ""));
        switchIndexList3.addAll(List.generate(2, (_) => []));
      }
    }
  }

  calculateSpace(int size, layoutNumber) {
    if (layoutNumber == 1) {
      if (widgetNameList.where((e) => e == "").length < size) {
        if (widgetNameList.where((e) => e == "").isEmpty) {
          isDisable.value = true;
          Get.rawSnackbar(
            message: "Module is Full",
            maxWidth: SizeConfig.screenWidth! * 0.50,
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.teal,
            borderRadius: 15.0,
          );
        } else {
          Get.rawSnackbar(
            message:
                "Select Another Element or Clear You can't enter this element",
            maxWidth: SizeConfig.screenWidth! * 0.50,
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.teal,
            borderRadius: 15.0,
          );
        }
      } else {
        for (int i = 0; i < widgetList.length; i++) {
          if (size >= widgetList.length || size + i > widgetList.length) {
            return 0;
          } else if (widgetList.getRange(i, size + i).every((e) =>
              e.toString() ==
              const SizedBox(
                height: 93,
                width: 46,
              ).toString())) {
            return i;
          }
        }
      }
    } else if (layoutNumber == 2) {
      if (widgetNameList2.where((e) => e == "").length < size) {
        if (widgetNameList2.where((e) => e == "").isEmpty) {
          isDisable2.value = true;
          Get.rawSnackbar(
            message: "Module is Full",
            maxWidth: SizeConfig.screenWidth! * 0.50,
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.teal,
            borderRadius: 15.0,
          );
        } else {
          Get.rawSnackbar(
            message:
                "Select Another Element or Clear You can't enter this element",
            maxWidth: SizeConfig.screenWidth! * 0.50,
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.teal,
            borderRadius: 15.0,
          );
        }
      } else {
        for (int i = 0; i < widgetList2.length; i++) {
          if (size >= widgetList2.length || size + i > widgetList2.length) {
            return 0;
          } else if (widgetList2.getRange(i, size + i).every((e) =>
              e.toString() ==
              const SizedBox(
                height: 93,
                width: 46,
              ).toString())) {
            return i;
          }
        }
      }
    } else if (layoutNumber == 3) {
      if (widgetNameList3.where((e) => e == "").length < size) {
        if (widgetNameList3.where((e) => e == "").isEmpty) {
          isDisable3.value = true;
          Get.rawSnackbar(
            message: "Module is Full",
            maxWidth: SizeConfig.screenWidth! * 0.50,
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.teal,
            borderRadius: 15.0,
          );
        } else {
          Get.rawSnackbar(
            message:
                "Select Another Element or Clear You can't enter this element",
            maxWidth: SizeConfig.screenWidth! * 0.50,
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.teal,
            borderRadius: 15.0,
          );
        }
      } else {
        for (int i = 0; i < widgetList3.length; i++) {
          if (size >= widgetList3.length || size + i > widgetList3.length) {
            return 0;
          } else if (widgetList3.getRange(i, size + i).every((e) =>
              e.toString() ==
              const SizedBox(
                height: 93,
                width: 46,
              ).toString())) {
            return i;
          }
        }
      }
    }
    return 100;
  }

  setColor(color) {
    glassColor.value = color;
  }

  setPrising(prise) {
    modulePrising.value = prise;
  }

  setAutomationValue(list1, list2, list3) {
    automationList.value = list1;
    automationList2.value = list2;
    automationList3.value = list3;
  }

  String getSelectedMaterial() {
    String material = '-';
    if (isTouchModuleClicked()) {
      if (panelMaterial.value.isNotEmpty) {
        material = panelMaterial.value;
      } else if (modularMaterial.value.isNotEmpty) {
        material = modularMaterial.value;
      }
    }

    return material;
  }

  String getSelectedColor() {
    String colorName = '-';

    if (glassColor.value.isNotEmpty && isTouchModuleClicked()) {
      colorName = glassColor.value;
    }
    return colorName;
  }

  int getSelectedMirrorModule() {
    if (is3ModuleMirror.isTrue) {
      return 3;
    } else if (is4ModuleMirror.isTrue) {
      return 4;
    } else if (is6ModuleMirror.isTrue) {
      return 6;
    } else if (is8ModuleMirror.isTrue) {
      return 8;
    }
    return 0;
  }

  setSelectedMirrorModule(int size) {
    if (size == 3) {
      is3ModuleMirror.value = true;
    } else if (size == 4) {
      is4ModuleMirror.value = true;
    } else if (size == 6) {
      is6ModuleMirror.value = true;
    } else if (size == 8) {
      is8ModuleMirror.value = true;
    }
  }

  String getSelectedTouchModule() {
    String moduleName = '-';
    if (widgetNameList.isNotEmpty) {
      for (int i = 0; i < widgetNameList.length; i++) {
        if (widgetNameList[i] != "") {
          {
            String modelName;
            if (isModularViewOn.value) {
              if (automationList[i].contains('Wifi & Remote')) {
                modelName = 'TSRW';
              } else if (automationList[i].contains('Remote')) {
                modelName = 'TSR';
              } else if (automationList[i].contains('Dummy')) {
                modelName = 'DM';
              } else {
                modelName = "";
              }
            } else {
              if (automationList[i].contains('Wifi & Remote')) {
                modelName = 'TPRW';
              } else if (automationList[i].contains('Remote')) {
                modelName = 'TPR';
              } else if (automationList[i].contains('Dummy')) {
                modelName = 'DM';
              } else {
                modelName = "";
              }
            }

            if (moduleName == '-') {
              if (widgetNameList[i] == 'SKT1' ||
                  widgetNameList[i] == 'SKT2' ||
                  widgetNameList[i] == 'SKT3' ||
                  widgetNameList[i] == '16ASKT' ||
                  widgetNameList[i] == 'USB' ||
                  widgetNameList[i] == 'RJ-11' ||
                  widgetNameList[i] == 'RJ-45' ||
                  widgetNameList[i] == 'External1M') {
                moduleName = widgetNameList[i];
              } else {
                if (widgetNameList[i].startsWith('S.')) {
                  // scene controller
                  moduleName = 'TP${widgetNameList[i]}';
                } else if (automationList[i].startsWith('TI')) {
                  moduleName = automationList[i];
                } else {
                  moduleName = '$modelName.${widgetNameList[i]}';
                }
              }
            } else {
              if (widgetNameList[i] == 'SKT1' ||
                  widgetNameList[i] == 'SKT2' ||
                  widgetNameList[i] == '16ASKT' ||
                  widgetNameList[i] == 'SKT3' ||
                  widgetNameList[i] == 'USB' ||
                  widgetNameList[i] == 'RJ-11' ||
                  widgetNameList[i] == 'RJ-45' ||
                  widgetNameList[i] == 'External1M') {
                moduleName = '$moduleName + ${widgetNameList[i]}';
              } else {
                if (widgetNameList[i].startsWith('S.')) {
                  moduleName = '$moduleName + TP${widgetNameList[i]}';
                } else if (automationList[i].startsWith('TI')) {
                  moduleName = "$moduleName +${automationList[i]}";
                } else {
                  moduleName = '$moduleName + $modelName.${widgetNameList[i]}';
                }
              }
            }
          }
        }
      }
    }

    if (widgetNameList2.isNotEmpty) {
      for (int i = 0; i < widgetNameList2.length; i++) {
        if (widgetNameList2[i] != "") {
          {
            String modelName;
            if (isModularViewOn.value) {
              if (automationList2[i].contains('Wifi & Remote')) {
                modelName = 'TSRW';
              } else if (automationList2[i].contains('Remote')) {
                modelName = 'TSR';
              } else if (automationList2[i].contains('Dummy')) {
                modelName = 'DM';
              } else {
                modelName = "";
              }
            } else {
              if (automationList2[i].contains('Wifi & Remote')) {
                modelName = 'TPRW';
              } else if (automationList2[i].contains('Remote')) {
                modelName = 'TPR';
              } else if (automationList2[i].contains('Dummy')) {
                modelName = 'DM';
              } else {
                modelName = "";
              }
            }

            if (moduleName == '-') {
              if (widgetNameList2[i] == 'SKT1' ||
                  widgetNameList2[i] == 'SKT2' ||
                  widgetNameList2[i] == '16ASKT' ||
                  widgetNameList2[i] == 'SKT3' ||
                  widgetNameList2[i] == 'USB' ||
                  widgetNameList2[i] == 'RJ-11' ||
                  widgetNameList2[i] == 'RJ-45' ||
                  widgetNameList2[i] == 'External1M') {
                moduleName = widgetNameList2[i];
              } else {
                if (widgetNameList2[i].startsWith('S.')) {
                  moduleName = 'TP${widgetNameList2[i]}';
                } else if (automationList2[i].startsWith('TI')) {
                  moduleName = automationList2[i];
                } else {
                  moduleName = '$modelName.${widgetNameList2[i]}';
                }
              }
            } else {
              if (widgetNameList2[i] == 'SKT1' ||
                  widgetNameList2[i] == 'SKT2' ||
                  widgetNameList2[i] == '16ASKT' ||
                  widgetNameList2[i] == 'SKT3' ||
                  widgetNameList2[i] == 'USB' ||
                  widgetNameList2[i] == 'RJ-11' ||
                  widgetNameList2[i] == 'RJ-45' ||
                  widgetNameList2[i] == 'External1M') {
                moduleName = '$moduleName + ${widgetNameList2[i]}';
              } else {
                if (widgetNameList2[i].startsWith('S.')) {
                  moduleName = '$moduleName + TP${widgetNameList2[i]}';
                } else if (automationList2[i].startsWith('TI')) {
                  moduleName = "$moduleName +${automationList2[i]}";
                } else {
                  moduleName = '$moduleName + $modelName.${widgetNameList2[i]}';
                }
              }
            }
          }
        }
      }
    }

    if (widgetNameList3.isNotEmpty) {
      for (int i = 0; i < widgetNameList3.length; i++) {
        if (widgetNameList3[i] != "") {
          {
            String modelName;
            if (isModularViewOn.value) {
              if (automationList3[i].contains('Wifi & Remote')) {
                modelName = 'TSRW';
              } else if (automationList3[i].contains('Remote')) {
                modelName = 'TSR';
              } else if (automationList3[i].contains('Dummy')) {
                modelName = 'DM';
              } else {
                modelName = "";
              }
            } else {
              if (automationList3[i].contains('Wifi & Remote')) {
                modelName = 'TPRW';
              } else if (automationList3[i].contains('Remote')) {
                modelName = 'TPR';
              } else if (automationList3[i].contains('Dummy')) {
                modelName = 'DM';
              } else {
                modelName = "";
              }
            }

            if (moduleName == '-') {
              if (widgetNameList3[i] == 'SKT1' ||
                  widgetNameList3[i] == 'SKT2' ||
                  widgetNameList3[i] == '16ASKT' ||
                  widgetNameList3[i] == 'SKT3' ||
                  widgetNameList3[i] == 'USB' ||
                  widgetNameList3[i] == 'RJ-11' ||
                  widgetNameList3[i] == 'RJ-45' ||
                  widgetNameList3[i] == 'External1M') {
                moduleName = widgetNameList3[i];
              } else {
                if (widgetNameList3[i].startsWith('S.')) {
                  moduleName = 'TP${widgetNameList3[i]}';
                } else if (automationList3[i].startsWith('TI')) {
                  moduleName = automationList3[i];
                } else {
                  moduleName = '$modelName.${widgetNameList3[i]}';
                }
              }
            } else {
              if (widgetNameList3[i] == 'SKT1' ||
                  widgetNameList3[i] == 'SKT2' ||
                  widgetNameList3[i] == '16ASKT' ||
                  widgetNameList3[i] == 'SKT3' ||
                  widgetNameList3[i] == 'USB' ||
                  widgetNameList3[i] == 'RJ-11' ||
                  widgetNameList3[i] == 'RJ-45' ||
                  widgetNameList3[i] == 'External1M') {
                moduleName = '$moduleName + ${widgetNameList3[i]}';
              } else {
                if (widgetNameList3[i].startsWith('S.')) {
                  moduleName = '$moduleName + TP${widgetNameList3[i]}';
                } else if (automationList3[i].startsWith('TI')) {
                  moduleName = "$moduleName +${automationList3[i]}";
                } else {
                  moduleName = '$moduleName + $modelName.${widgetNameList3[i]}';
                }
              }
            }
          }
        }
      }
    }
    return moduleName;
  }

  void setDefault() {
    getBasicPrising();
    automation.value = 'Wifi & Remote';
    variant.value = '';
    isShowClick.value = false;
    widgetList.clear();
    widgetList2.clear();
    widgetList3.clear();
    widgetNameList.clear();
    widgetNameList2.clear();
    widgetNameList3.clear();
    switchIndexList.clear();
    switchIndexList2.clear();
    switchIndexList3.clear();
    // cancel selection

    is3ModuleRotate.value = false;
    is4ModuleRotate.value = false;
    is6ModuleRotate.value = false;
    is8ModuleRotate.value = false;

    is3ModuleMirror.value = false;
    is4ModuleMirror.value = false;
    is6ModuleMirror.value = false;
    is8ModuleMirror.value = false;
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 4s1r
    is4XDXXClick.value = false;
    is4FDNHClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    // sockets
    isSocket1Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;

    isDisable.value = false;
    isDisable2.value = false;
    isDisable3.value = false;
  }

  void clearModule() {
    getBasicPrising();
    if (is2ModuleClick.value) {
      widgetList.value = List.generate(
          2,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(2, (_) => "");
      automationList.value = List.generate(2, (_) => "");
      switchIndexList.value = List.generate(2, (_) => []);
    } else if (is3ModuleClick.value) {
      widgetList.value = List.generate(
          3,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(3, (_) => "");
      automationList.value = List.generate(3, (_) => "");
      switchIndexList.value = List.generate(3, (_) => []);
    } else if (is4ModuleClick.value) {
      widgetList.value = List.generate(
          4,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(4, (_) => "");
      automationList.value = List.generate(4, (_) => "");
      switchIndexList.value = List.generate(4, (_) => []);
    } else if (is6ModuleClick.value) {
      widgetList.value = List.generate(
          6,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(6, (_) => "");
      automationList.value = List.generate(6, (_) => "");
      switchIndexList.value = List.generate(6, (_) => []);
    } else if (is8ModuleClick.value) {
      widgetList.value = List.generate(
          8,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(8, (_) => "");
      automationList.value = List.generate(8, (_) => "");
      switchIndexList.value = List.generate(8, (_) => []);
    } else if (is8Module2Click.isTrue) {
      widgetList.value = List.generate(
          4,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(4, (_) => "");
      automationList.value = List.generate(4, (_) => "");
      switchIndexList.value = List.generate(4, (_) => []);
      widgetList2.value = List.generate(
          4,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList2.value = List.generate(4, (_) => "");
      automationList2.value = List.generate(4, (_) => "");
      switchIndexList2.value = List.generate(4, (_) => []);
    } else if (is12ModuleClick.isTrue) {
      widgetList.value = List.generate(
          6,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(6, (_) => "");
      automationList.value = List.generate(6, (_) => "");
      switchIndexList.value = List.generate(6, (_) => []);

      widgetList2.value = List.generate(
          6,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList2.value = List.generate(6, (_) => "");
      automationList2.value = List.generate(6, (_) => "");
      switchIndexList2.value = List.generate(6, (_) => []);
    } else if (is16ModuleClick.isTrue) {
      widgetList.value = List.generate(
          4,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(4, (_) => "");
      automationList.value = List.generate(4, (_) => "");
      switchIndexList.value = List.generate(4, (_) => []);

      widgetList2.value = List.generate(
          4,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList2.value = List.generate(4, (_) => "");
      automationList2.value = List.generate(4, (_) => "");
      switchIndexList2.value = List.generate(4, (_) => []);
    } else if (is18ModuleClick.isTrue) {
      widgetList.value = List.generate(
          6,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList.value = List.generate(6, (_) => "");
      automationList.value = List.generate(6, (_) => "");
      switchIndexList.value = List.generate(6, (_) => []);
      widgetList2.value = List.generate(
          6,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList2.value = List.generate(6, (_) => "");
      automationList2.value = List.generate(6, (_) => "");
      switchIndexList2.value = List.generate(6, (_) => []);
      widgetList3.value = List.generate(
          6,
          (_) => const SizedBox(
                height: 93,
                width: 46,
              ));
      widgetNameList3.value = List.generate(6, (_) => "");
      automationList3.value = List.generate(6, (_) => "");
      switchIndexList3.value = List.generate(6, (_) => []);
    }
    automation.value = 'Wifi & Remote';
    variant.value = '';
    isShowClick.value = false;
    // cancel selection
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 4s1r
    is4XDXXClick.value = false;
    is4FDNHClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    // sockets
    isSocket1Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;

    isDisable.value = false;
    isDisable2.value = false;
    isDisable3.value = false;
  }

  void setAllDefault() {
    modulePrising.value = 0;
    is3ModuleRotate.value = false;
    is4ModuleRotate.value = false;
    is6ModuleRotate.value = false;
    is8ModuleRotate.value = false;
    is3ModuleMirror.value = false;
    is4ModuleMirror.value = false;
    is6ModuleMirror.value = false;
    is8ModuleMirror.value = false;
    automation.value = 'Wifi & Remote';
    variant.value = '';
    isShowClick.value = false;
    widgetList.clear();
    widgetList2.clear();
    widgetList3.clear();
    widgetNameList.clear();
    widgetNameList2.clear();
    widgetNameList3.clear();
    switchIndexList.clear();
    switchIndexList2.clear();
    switchIndexList3.clear();
    is2ModuleClick.value = false;
    is3ModuleClick.value = false;
    is4ModuleClick.value = false;
    is6ModuleClick.value = false;
    is8ModuleClick.value = false;
    is8Module2Click.value = false;
    is12ModuleClick.value = false;
    is16ModuleClick.value = false;
    is18ModuleClick.value = false;
    quantityController.clear();
    commentController.clear();
    //serialNumberController.clear();
    moduleMenuToggle.value = false;
    colorMenuToggle.value = false;
    materialMenuToggle.value = false;
    isModularViewOn.value = false;

    // cancel selection
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 4s1r
    is4XDXXClick.value = false;
    is4FDNHClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    // sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;

    isDisable.value = false;
    isDisable2.value = false;
    isDisable3.value = false;
  }

  int countModulesInArray(String touchName, int layoutNumber) {
    int count = 0;
    if (touchName.isNotEmpty) {
      if (layoutNumber == 1) {
        for (var i in widgetNameList) {
          if (i == touchName) {
            count += 1;
          }
        }
      } else if (layoutNumber == 2) {
        for (var i in widgetNameList2) {
          if (i == touchName) {
            count += 1;
          }
        }
      } else if (layoutNumber == 3) {
        for (var i in widgetNameList3) {
          if (i == touchName) {
            count += 1;
          }
        }
      }
    }
    return count;
  }

  void on2XXXHClick({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = true;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    //sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(2, layoutNumber);
    if (automation.value == "Wifi & Remote") {
      modulePrising.value = modulePrising.value + (9504);
    } else if (automation.value == "Remote") {
      modulePrising.value = modulePrising.value + (3781);
    } else if (automation.value == "Touch Interface") {
      modulePrising.value = modulePrising.value + (1534);
    }
    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList.removeRange(startIndex, startIndex + 2);
        widgetList.insert(
            startIndex,
            TwoSwitchLayout(
                icon1Index: 1, icon2Index: 1, layoutNumber: layoutNumber));
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          widgetNameList
              .replaceRange(startIndex, startIndex + 2, ['2S(Horizontal)']);
        } else {
          widgetNameList.replaceRange(startIndex, startIndex + 2, ['2XXXH']);
        }
        automationList.replaceRange(startIndex, startIndex + 2,
            [automation.value + tiAutomation.value]);
      } else if (layoutNumber == 2) {
        switchIndexList2.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList2.removeRange(startIndex, startIndex + 2);
        widgetList2.insert(
            startIndex,
            TwoSwitchLayout(
                icon1Index: 1, icon2Index: 1, layoutNumber: layoutNumber));
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          widgetNameList2
              .replaceRange(startIndex, startIndex + 2, ['2S(Horizontal)']);
        } else {
          widgetNameList2.replaceRange(startIndex, startIndex + 2, ['2XXXH']);
        }
        automationList2.replaceRange(startIndex, startIndex + 2,
            [automation.value + tiAutomation.value]);
      } else if (layoutNumber == 3) {
        switchIndexList3.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList3.removeRange(startIndex, startIndex + 2);
        widgetList3.insert(
            startIndex,
            TwoSwitchLayout(
                icon1Index: 1, icon2Index: 1, layoutNumber: layoutNumber));
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          widgetNameList3
              .replaceRange(startIndex, startIndex + 2, ['2S(Horizontal)']);
        } else {
          widgetNameList3.replaceRange(startIndex, startIndex + 2, ['2XXXH']);
        }
        automationList3.replaceRange(startIndex, startIndex + 2,
            [automation.value + tiAutomation.value]);
      }

      // 4s1r
      is4XDXXClick.value = false;
      is4FDNHClick.value = false;
    }
  }

  void on2XXNXClick({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = true;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    //sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(2, layoutNumber);
    if (automation.value == "Wifi & Remote") {
      modulePrising.value = modulePrising.value + ((8909));
    } else if (automation.value == "Remote") {
      modulePrising.value = modulePrising.value + ((3513));
    } else if (automation.value == "Touch Interface") {
      modulePrising.value = modulePrising.value + (1534);
    }
    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList.removeRange(startIndex, startIndex + 2);
        widgetList.insert(
            startIndex,
            TwoSwitchLayout(
                icon1Index: 1, icon2Index: 1, layoutNumber: layoutNumber));
        widgetNameList.replaceRange(startIndex, startIndex + 2, ['2XXNX']);
        automationList
            .replaceRange(startIndex, startIndex + 2, [automation.value]);
      } else if (layoutNumber == 2) {
        switchIndexList2.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList2.removeRange(startIndex, startIndex + 2);
        widgetList2.insert(
            startIndex,
            TwoSwitchLayout(
                icon1Index: 1, icon2Index: 1, layoutNumber: layoutNumber));
        widgetNameList2.replaceRange(startIndex, startIndex + 2, ['2XXNX']);
        automationList2
            .replaceRange(startIndex, startIndex + 2, [automation.value]);
      } else if (layoutNumber == 3) {
        switchIndexList3.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList3.removeRange(startIndex, startIndex + 2);
        widgetList3.insert(
            startIndex,
            TwoSwitchLayout(
                icon1Index: 1, icon2Index: 1, layoutNumber: layoutNumber));
        widgetNameList3.replaceRange(startIndex, startIndex + 2, ['2XXNX']);
        automationList3
            .replaceRange(startIndex, startIndex + 2, [automation.value]);
      }

      // 4s1r
      is4XDXXClick.value = false;
      is4FDNHClick.value = false;
    }
  }

  void on1CClick({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = true;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    //sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(2, layoutNumber);
    if (automation.value == "Wifi & Remote") {
      modulePrising.value = modulePrising.value + (8909);
    } else if (automation.value == "Remote") {
      modulePrising.value = 0;
    } else if (automation.value == "Touch Interface") {
      modulePrising.value = modulePrising.value + (1534);
    }
    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList.replaceRange(startIndex, startIndex + 2, [
          [86, 87]
        ]);
        widgetList.removeRange(startIndex, startIndex + 2);
        widgetList.insert(
            startIndex,
            TwoSwitchLayout(
                icon1Index: 86, icon2Index: 87, layoutNumber: layoutNumber));
        widgetNameList.replaceRange(startIndex, startIndex + 2, ['1C']);
        automationList.replaceRange(startIndex, startIndex + 2,
            [automation.value + tiAutomation.value]);
      } else if (layoutNumber == 2) {
        switchIndexList2.replaceRange(startIndex, startIndex + 2, [
          [86, 87]
        ]);
        widgetList2.removeRange(startIndex, startIndex + 2);
        widgetList2.insert(
            startIndex,
            TwoSwitchLayout(
                icon1Index: 86, icon2Index: 87, layoutNumber: layoutNumber));
        widgetNameList2.replaceRange(startIndex, startIndex + 2, ['1C']);
        automationList2.replaceRange(startIndex, startIndex + 2,
            [automation.value + tiAutomation.value]);
      } else if (layoutNumber == 3) {
        switchIndexList3.replaceRange(startIndex, startIndex + 2, [
          [86, 87]
        ]);
        widgetList3.removeRange(startIndex, startIndex + 2);
        widgetList3.insert(
            startIndex,
            TwoSwitchLayout(
                icon1Index: 86, icon2Index: 87, layoutNumber: layoutNumber));
        widgetNameList3.replaceRange(startIndex, startIndex + 2, ['1C']);
        automationList3.replaceRange(startIndex, startIndex + 2,
            [automation.value + tiAutomation.value]);
      }

      // 4s1r
      is4XDXXClick.value = false;
      is4FDNHClick.value = false;
    }
  }

  void on2XXXHVerClick({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = true;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    //sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(2, layoutNumber);
    if (automation.value == "Wifi & Remote") {
      modulePrising.value = modulePrising.value + (9504);
    } else if (automation.value == "Remote") {
      modulePrising.value = modulePrising.value + (3781);
    } else if (automation.value == "Touch Interface") {
      modulePrising.value = modulePrising.value + (1534);
    }

    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList.removeRange(startIndex, startIndex + 2);
        widgetList.insert(
            startIndex,
            TwoSwitchVerticalLayout(
                icon1Index: 1, icon2Index: 1, layoutNumber: layoutNumber));
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          widgetNameList
              .replaceRange(startIndex, startIndex + 2, ['2S(Vertical)']);
        } else {
          widgetNameList
              .replaceRange(startIndex, startIndex + 2, ['2XXXH(Vertical)']);
        }
        automationList.replaceRange(startIndex, startIndex + 2,
            [automation.value + tiAutomation.value]);
      } else if (layoutNumber == 2) {
        switchIndexList2.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList2.removeRange(startIndex, startIndex + 2);
        widgetList2.insert(
            startIndex,
            TwoSwitchVerticalLayout(
                icon1Index: 1, icon2Index: 1, layoutNumber: layoutNumber));
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          widgetNameList2
              .replaceRange(startIndex, startIndex + 2, ['2S(Vertical)']);
        } else {
          widgetNameList2
              .replaceRange(startIndex, startIndex + 2, ['2XXXH(Vertical)']);
        }
        automationList2.replaceRange(startIndex, startIndex + 2,
            [automation.value + tiAutomation.value]);
      } else if (layoutNumber == 3) {
        switchIndexList3.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList3.removeRange(startIndex, startIndex + 2);
        widgetList3.insert(
            startIndex,
            TwoSwitchVerticalLayout(
                icon1Index: 1, icon2Index: 1, layoutNumber: layoutNumber));
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          widgetNameList3
              .replaceRange(startIndex, startIndex + 2, ['2S(Vertical)']);
        } else {
          widgetNameList3
              .replaceRange(startIndex, startIndex + 2, ['2XXXH(Vertical)']);
        }
        automationList3.replaceRange(startIndex, startIndex + 2,
            [automation.value + tiAutomation.value]);
      }

      // 4s1r
      is4XDXXClick.value = false;
      is4FDNHClick.value = false;
    }
  }

  void on2XXNXVerClick({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = true;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    //sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(2, layoutNumber);
    if (automation.value == "Wifi & Remote") {
      modulePrising.value = modulePrising.value + (8909);
    } else if (automation.value == "Remote") {
      modulePrising.value = modulePrising.value + (3513);
    } else if (automation.value == "Touch Interface") {
      modulePrising.value = modulePrising.value + (1534);
    }
    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList.removeRange(startIndex, startIndex + 2);
        widgetList.insert(
            startIndex,
            TwoSwitchVerticalLayout(
                icon1Index: 1, icon2Index: 1, layoutNumber: layoutNumber));
        widgetNameList
            .replaceRange(startIndex, startIndex + 2, ['2XXNX(Vertical)']);
        automationList
            .replaceRange(startIndex, startIndex + 2, [automation.value]);
      } else if (layoutNumber == 2) {
        switchIndexList2.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList2.removeRange(startIndex, startIndex + 2);
        widgetList2.insert(
            startIndex,
            TwoSwitchVerticalLayout(
                icon1Index: 1, icon2Index: 1, layoutNumber: layoutNumber));
        widgetNameList2
            .replaceRange(startIndex, startIndex + 2, ['2XXNX(Vertical)']);
        automationList2
            .replaceRange(startIndex, startIndex + 2, [automation.value]);
      } else if (layoutNumber == 3) {
        switchIndexList3.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList3.removeRange(startIndex, startIndex + 2);
        widgetList3.insert(
            startIndex,
            TwoSwitchVerticalLayout(
                icon1Index: 1, icon2Index: 1, layoutNumber: layoutNumber));
        widgetNameList3
            .replaceRange(startIndex, startIndex + 2, ['2XXNX(Vertical)']);
        automationList3
            .replaceRange(startIndex, startIndex + 2, [automation.value]);
      }

      // 4s1r
      is4XDXXClick.value = false;
      is4FDNHClick.value = false;
    }
  }

  void on1CVerClick({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = true;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    //sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(2, layoutNumber);
    if (automation.value == "Wifi & Remote") {
      modulePrising.value = 8909;
    } else if (automation.value == "Remote") {
      modulePrising.value = 0;
    } else if (automation.value == "Touch Interface") {
      modulePrising.value = modulePrising.value + (1534);
    }
    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList.replaceRange(startIndex, startIndex + 2, [
          [86, 87]
        ]);
        widgetList.removeRange(startIndex, startIndex + 2);
        widgetList.insert(
            startIndex,
            TwoSwitchVerticalLayout(
                icon1Index: 86, icon2Index: 87, layoutNumber: layoutNumber));
        widgetNameList
            .replaceRange(startIndex, startIndex + 2, ['1C(Vertical)']);
        automationList
            .replaceRange(startIndex, startIndex + 2, [automation.value]);
      } else if (layoutNumber == 2) {
        switchIndexList2.replaceRange(startIndex, startIndex + 2, [
          [86, 87]
        ]);
        widgetList2.removeRange(startIndex, startIndex + 2);
        widgetList2.insert(
            startIndex,
            TwoSwitchVerticalLayout(
                icon1Index: 86, icon2Index: 87, layoutNumber: layoutNumber));
        widgetNameList2
            .replaceRange(startIndex, startIndex + 2, ['1C(Vertical)']);
        automationList2
            .replaceRange(startIndex, startIndex + 2, [automation.value]);
      } else if (layoutNumber == 3) {
        switchIndexList3.replaceRange(startIndex, startIndex + 2, [
          [86, 87]
        ]);
        widgetList3.removeRange(startIndex, startIndex + 2);
        widgetList3.insert(
            startIndex,
            TwoSwitchVerticalLayout(
                icon1Index: 86, icon2Index: 87, layoutNumber: layoutNumber));
        widgetNameList3
            .replaceRange(startIndex, startIndex + 2, ['1C(Vertical)']);
        automationList3
            .replaceRange(startIndex, startIndex + 2, [automation.value]);
      }

      // 4s1r
      is4XDXXClick.value = false;
      is4FDNHClick.value = false;
    }
  }

  void on1BClick({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = true;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    //sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(2, layoutNumber);
    if (automation.value == "Wifi & Remote") {
      modulePrising.value = modulePrising.value + 0;
    } else if (automation.value == "Remote") {
      modulePrising.value = modulePrising.value + 0;
    } else if (automation.value == "Touch Interface") {}
    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList.removeRange(startIndex, startIndex + 2);
        widgetList.insert(startIndex, const OneBellLayout());
        widgetNameList.replaceRange(startIndex, startIndex + 2, ['1B']);
        automationList.replaceRange(startIndex, startIndex + 2,
            [automation.value + tiAutomation.value]);
      } else if (layoutNumber == 2) {
        switchIndexList2.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList2.removeRange(startIndex, startIndex + 2);
        widgetList2.insert(startIndex, const OneBellLayout());
        widgetNameList2.replaceRange(startIndex, startIndex + 2, ['1B']);
        automationList2.replaceRange(startIndex, startIndex + 2,
            [automation.value + tiAutomation.value]);
      } else if (layoutNumber == 3) {
        switchIndexList3.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList3.removeRange(startIndex, startIndex + 2);
        widgetList3.insert(startIndex, const OneBellLayout());
        widgetNameList3.replaceRange(startIndex, startIndex + 2, ['1B']);
        automationList3.replaceRange(startIndex, startIndex + 2,
            [automation.value + tiAutomation.value]);
      }

      // 4s1r
      is4XDXXClick.value = false;
      is4FDNHClick.value = false;
    }
  }

  void on2XDXXClick({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = true;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    //sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(2, layoutNumber);
    if (automation.value == "Wifi & Remote") {
      modulePrising.value = modulePrising.value + (8909);
    } else if (automation.value == "Remote") {
      modulePrising.value = modulePrising.value + (4693);
    } else if (automation.value == "Touch Interface") {
      modulePrising.value = modulePrising.value + (1800);
    }
    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList.removeRange(startIndex, startIndex + 2);
        widgetList.insert(
          startIndex,
          TwoSwitchOneRegulatorLayout(
            icon1Index: 1,
            icon2Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          widgetNameList.replaceRange(startIndex, startIndex + 2, ['2S1R']);
        } else {
          widgetNameList.replaceRange(startIndex, startIndex + 2, ['2XDXX']);
        }
        automationList.replaceRange(startIndex, startIndex + 2,
            [automation.value + tiAutomation.value]);
      } else if (layoutNumber == 2) {
        switchIndexList2.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList2.removeRange(startIndex, startIndex + 2);
        widgetList2.insert(
          startIndex,
          TwoSwitchOneRegulatorLayout(
            icon1Index: 1,
            icon2Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          widgetNameList2.replaceRange(startIndex, startIndex + 2, ['2S1R']);
        } else {
          widgetNameList2.replaceRange(startIndex, startIndex + 2, ['2XDXX']);
        }
        automationList2.replaceRange(startIndex, startIndex + 2,
            [automation.value + tiAutomation.value]);
      } else if (layoutNumber == 3) {
        switchIndexList3.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList3.removeRange(startIndex, startIndex + 2);
        widgetList3.insert(
          startIndex,
          TwoSwitchOneRegulatorLayout(
            icon1Index: 1,
            icon2Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          widgetNameList3.replaceRange(startIndex, startIndex + 2, ['2S1R']);
        } else {
          widgetNameList3.replaceRange(startIndex, startIndex + 2, ['2XDXX']);
        }
        automationList3.replaceRange(startIndex, startIndex + 2,
            [automation.value + tiAutomation.value]);
      }

      // 4s1r
      is4XDXXClick.value = false;
      is4FDNHClick.value = false;
    }
  }

  void on4XXNXClick({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = true;
    isS4Click.value = false;
    is2CClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    //sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(2, layoutNumber);
    if (automation.value == "Wifi & Remote") {
      modulePrising.value = modulePrising.value + (10907);
    } else if (automation.value == "Remote") {
      modulePrising.value = modulePrising.value + (5326);
    } else if (automation.value == "Touch Interface") {
      modulePrising.value = modulePrising.value + (1800);
    }
    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList.replaceRange(startIndex, startIndex + 2, [
          [1, 1, 1, 1]
        ]);
        widgetList.removeRange(startIndex, startIndex + 2);
        widgetList.insert(
          startIndex,
          FourSwitchLayout(
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        widgetNameList.replaceRange(startIndex, startIndex + 2, ['4XXNX']);
        automationList
            .replaceRange(startIndex, startIndex + 2, [automation.value]);
      } else if (layoutNumber == 2) {
        switchIndexList2.replaceRange(startIndex, startIndex + 2, [
          [1, 1, 1, 1]
        ]);
        widgetList2.removeRange(startIndex, startIndex + 2);
        widgetList2.insert(
          startIndex,
          FourSwitchLayout(
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        widgetNameList2.replaceRange(startIndex, startIndex + 2, ['4XXNX']);
        automationList2
            .replaceRange(startIndex, startIndex + 2, [automation.value]);
      } else if (layoutNumber == 3) {
        switchIndexList3.replaceRange(startIndex, startIndex + 2, [
          [1, 1, 1, 1]
        ]);
        widgetList3.removeRange(startIndex, startIndex + 2);
        widgetList3.insert(
          startIndex,
          FourSwitchLayout(
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        widgetNameList3.replaceRange(startIndex, startIndex + 2, ['4XXNX']);
        automationList3
            .replaceRange(startIndex, startIndex + 2, [automation.value]);
      }

      // 4s1r
      is4XDXXClick.value = false;
      is4FDNHClick.value = false;
    }
  }

  void onS4Click({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = true;
    is2CClick.value = false;

    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    //sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(2, layoutNumber);
    if (automation.value == "Wifi & Remote") {
      modulePrising.value = modulePrising.value + 0;
    } else if (automation.value == "Remote") {
      modulePrising.value = modulePrising.value + 0;
    } else if (automation.value == "Touch Interface") {
      modulePrising.value = modulePrising.value + (1800);
    }
    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList.replaceRange(startIndex, startIndex + 2, [
          [1, 1, 1, 1]
        ]);
        widgetList.removeRange(startIndex, startIndex + 2);
        widgetList.insert(
          startIndex,
          FourSwitchLayout(
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          widgetNameList.replaceRange(startIndex, startIndex + 2, ['4S']);
        } else {
          widgetNameList.replaceRange(startIndex, startIndex + 2, ['S.4']);
        }
        automationList.replaceRange(startIndex, startIndex + 2,
            [automation.value + tiAutomation.value]);
      } else if (layoutNumber == 2) {
        switchIndexList2.replaceRange(startIndex, startIndex + 2, [
          [1, 1, 1, 1]
        ]);
        widgetList2.removeRange(startIndex, startIndex + 2);
        widgetList2.insert(
          startIndex,
          FourSwitchLayout(
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          widgetNameList2.replaceRange(startIndex, startIndex + 2, ['4S']);
        } else {
          widgetNameList2.replaceRange(startIndex, startIndex + 2, ['S.4']);
        }
        automationList2.replaceRange(startIndex, startIndex + 2,
            [automation.value + tiAutomation.value]);
      } else if (layoutNumber == 3) {
        switchIndexList3.replaceRange(startIndex, startIndex + 2, [
          [1, 1, 1, 1]
        ]);
        widgetList3.removeRange(startIndex, startIndex + 2);
        widgetList3.insert(
          startIndex,
          FourSwitchLayout(
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          widgetNameList3.replaceRange(startIndex, startIndex + 2, ['4S']);
        } else {
          widgetNameList3.replaceRange(startIndex, startIndex + 2, ['S.4']);
        }
        automationList3.replaceRange(startIndex, startIndex + 2,
            [automation.value + tiAutomation.value]);
      }

      // 4s1r
      is4XDXXClick.value = false;
      is4FDNHClick.value = false;
    }
  }

  void on2cClick({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;

    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = true;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    //sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(2, layoutNumber);
    if (automation.value == "Wifi & Remote") {
      modulePrising.value = modulePrising.value + (10907);
    } else if (automation.value == "Remote") {
    } else if (automation.value == "Touch Interface") {
      modulePrising.value = modulePrising.value + (1800);
    }
    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList.replaceRange(startIndex, startIndex + 2, [
          [86, 87, 86, 87]
        ]);
        widgetList.removeRange(startIndex, startIndex + 2);
        widgetList.insert(
          startIndex,
          FourSwitchLayout(
            icon4Index: 87,
            icon3Index: 86,
            icon2Index: 87,
            icon1Index: 86,
            layoutNumber: layoutNumber,
          ),
        );
        widgetNameList.replaceRange(startIndex, startIndex + 2, ['2C']);
        automationList.replaceRange(startIndex, startIndex + 2,
            [automation.value + tiAutomation.value]);
      } else if (layoutNumber == 2) {
        switchIndexList2.replaceRange(startIndex, startIndex + 2, [
          [86, 87, 86, 87]
        ]);
        widgetList2.removeRange(startIndex, startIndex + 2);
        widgetList2.insert(
          startIndex,
          FourSwitchLayout(
            icon4Index: 87,
            icon3Index: 86,
            icon2Index: 87,
            icon1Index: 86,
            layoutNumber: layoutNumber,
          ),
        );
        widgetNameList2.replaceRange(startIndex, startIndex + 2, ['2C']);
        automationList2.replaceRange(startIndex, startIndex + 2,
            [automation.value + tiAutomation.value]);
      } else if (layoutNumber == 3) {
        switchIndexList3.replaceRange(startIndex, startIndex + 2, [
          [86, 87, 86, 87]
        ]);
        widgetList3.removeRange(startIndex, startIndex + 2);
        widgetList3.insert(
          startIndex,
          FourSwitchLayout(
            icon4Index: 87,
            icon3Index: 86,
            icon2Index: 87,
            icon1Index: 86,
            layoutNumber: layoutNumber,
          ),
        );
        widgetNameList3.replaceRange(startIndex, startIndex + 2, ['2C']);
        automationList3.replaceRange(startIndex, startIndex + 2,
            [automation.value + tiAutomation.value]);
      }
      // 4s1r
      is4XDXXClick.value = false;
      is4FDNHClick.value = false;
    }
  }

  void on4XDXXClick({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 4s1r
    is4XDXXClick.value = true;
    is4FDNHClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    //sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(4, layoutNumber);
    if (automation.value == "Wifi & Remote") {
      modulePrising.value = modulePrising.value + (11358);
    } else if (automation.value == "Remote") {
      modulePrising.value = modulePrising.value + (6025);
    } else if (automation.value == "Touch Interface") {
      modulePrising.value = modulePrising.value + (1880);
    }
    if (startIndex != 100) {
      if (layoutNumber == 1) {
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          widgetNameList.replaceRange(startIndex, startIndex + 4, ['4S1R']);
          switchIndexList.replaceRange(startIndex, startIndex + 4, [
            [1, 1, 79, 1]
          ]);
          widgetList.removeRange(startIndex, startIndex + 4);
          widgetList.insert(
            startIndex,
            FourSwitchOneRegulator(
              icon4Index: 1,
              icon3Index: 79,
              icon2Index: 1,
              icon1Index: 1,
              layoutNumber: layoutNumber,
            ),
          );
        } else {
          widgetNameList.replaceRange(startIndex, startIndex + 4, ['4XDXX']);
          switchIndexList.replaceRange(startIndex, startIndex + 4, [
            [1, 1, 1, 1]
          ]);
          widgetList.removeRange(startIndex, startIndex + 4);
          widgetList.insert(
            startIndex,
            FourSwitchOneRegulator(
              icon4Index: 1,
              icon3Index: 1,
              icon2Index: 1,
              icon1Index: 1,
              layoutNumber: layoutNumber,
            ),
          );
        }

        automationList.replaceRange(startIndex, startIndex + 4,
            [automation.value + tiAutomation.value]);
      } else if (layoutNumber == 2) {
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          switchIndexList2.replaceRange(startIndex, startIndex + 4, [
            [1, 1, 79, 1]
          ]);
          widgetList2.removeRange(startIndex, startIndex + 4);
          widgetList2.insert(
            startIndex,
            FourSwitchOneRegulator(
              icon4Index: 1,
              icon3Index: 79,
              icon2Index: 1,
              icon1Index: 1,
              layoutNumber: layoutNumber,
            ),
          );
          widgetNameList2.replaceRange(startIndex, startIndex + 4, ['4S1R']);
        } else {
          switchIndexList2.replaceRange(startIndex, startIndex + 4, [
            [1, 1, 1, 1]
          ]);
          widgetList2.removeRange(startIndex, startIndex + 4);
          widgetList2.insert(
            startIndex,
            FourSwitchOneRegulator(
              icon4Index: 1,
              icon3Index: 1,
              icon2Index: 1,
              icon1Index: 1,
              layoutNumber: layoutNumber,
            ),
          );
          widgetNameList2.replaceRange(startIndex, startIndex + 4, ['4XDXX']);
        }
        automationList2.replaceRange(startIndex, startIndex + 4,
            [automation.value + tiAutomation.value]);
      } else if (layoutNumber == 3) {
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          switchIndexList3.replaceRange(startIndex, startIndex + 4, [
            [1, 1, 79, 1]
          ]);
          widgetList3.removeRange(startIndex, startIndex + 4);
          widgetList3.insert(
            startIndex,
            FourSwitchOneRegulator(
              icon4Index: 1,
              icon3Index: 79,
              icon2Index: 1,
              icon1Index: 1,
              layoutNumber: layoutNumber,
            ),
          );
          widgetNameList3.replaceRange(startIndex, startIndex + 4, ['4S1R']);
        } else {
          switchIndexList3.replaceRange(startIndex, startIndex + 4, [
            [1, 1, 1, 1]
          ]);
          widgetList3.removeRange(startIndex, startIndex + 4);
          widgetList3.insert(
            startIndex,
            FourSwitchOneRegulator(
              icon4Index: 1,
              icon3Index: 1,
              icon2Index: 1,
              icon1Index: 1,
              layoutNumber: layoutNumber,
            ),
          );
          widgetNameList3.replaceRange(startIndex, startIndex + 4, ['4XDXX']);
        }
        automationList3.replaceRange(startIndex, startIndex + 4,
            [automation.value + tiAutomation.value]);
      }
    }
  }

  void on4FDNHClick({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 4s1r
    is4XDXXClick.value = false;
    is4FDNHClick.value = true;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    //sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(4, layoutNumber);
    if (automation.value == "Wifi & Remote") {
      modulePrising.value = modulePrising.value + (12500);
    } else if (automation.value == "Remote") {
      modulePrising.value = modulePrising.value + (6694);
    } else if (automation.value == "Touch Interface") {
      modulePrising.value = modulePrising.value + (1880);
    }
    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList.replaceRange(startIndex, startIndex + 4, [
          [1, 1, 79, 1]
        ]);
        widgetList.removeRange(startIndex, startIndex + 4);
        widgetList.insert(
          startIndex,
          FourSwitchOneRegulator(
            icon4Index: 1,
            icon3Index: 79,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        widgetNameList.replaceRange(startIndex, startIndex + 4, ['4FDNH']);
        automationList
            .replaceRange(startIndex, startIndex + 4, [automation.value]);
      } else if (layoutNumber == 2) {
        switchIndexList2.replaceRange(startIndex, startIndex + 4, [
          [1, 1, 79, 1]
        ]);
        widgetList2.removeRange(startIndex, startIndex + 4);
        widgetList2.insert(
          startIndex,
          FourSwitchOneRegulator(
            icon4Index: 1,
            icon3Index: 79,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        widgetNameList2.replaceRange(startIndex, startIndex + 4, ['4FDNH']);
        automationList2
            .replaceRange(startIndex, startIndex + 4, [automation.value]);
      } else if (layoutNumber == 3) {
        switchIndexList3.replaceRange(startIndex, startIndex + 4, [
          [1, 1, 79, 1]
        ]);
        widgetList3.removeRange(startIndex, startIndex + 4);
        widgetList3.insert(
          startIndex,
          FourSwitchOneRegulator(
            icon4Index: 1,
            icon3Index: 79,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        widgetNameList3.replaceRange(startIndex, startIndex + 4, ['4FDNH']);
        automationList3
            .replaceRange(startIndex, startIndex + 4, [automation.value]);
      }
    }
  }

  void on8XXNHClick({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 4s1r
    is4XDXXClick.value = false;
    is4FDNHClick.value = false;
    // 8s
    is8XXNHClick.value = true;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    //sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(6, layoutNumber);
    if (automation.value == "Wifi & Remote") {
      modulePrising.value = modulePrising.value + (14750);
    } else if (automation.value == "Remote") {
      modulePrising.value = modulePrising.value + (6941);
    } else if (automation.value == "Touch Interface") {
      modulePrising.value = modulePrising.value + (2950);
    }
    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList.replaceRange(startIndex, startIndex + 6, [
          [1, 1, 1, 1, 1, 1, 1, 1]
        ]);
        widgetList.removeRange(startIndex, startIndex + 6);
        widgetList.insert(
          startIndex,
          EightSwitchLayout(
            icon8Index: 1,
            icon7Index: 1,
            icon6Index: 1,
            icon5Index: 1,
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        widgetNameList.replaceRange(startIndex, startIndex + 6, ['8XXNH']);
        automationList
            .replaceRange(startIndex, startIndex + 6, [automation.value]);
      } else if (layoutNumber == 2) {
        switchIndexList2.replaceRange(startIndex, startIndex + 6, [
          [1, 1, 1, 1, 1, 1, 1, 1]
        ]);
        widgetList2.removeRange(startIndex, startIndex + 6);
        widgetList2.insert(
          startIndex,
          EightSwitchLayout(
            icon8Index: 1,
            icon7Index: 1,
            icon6Index: 1,
            icon5Index: 1,
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        widgetNameList2.replaceRange(startIndex, startIndex + 6, ['8XXNH']);
        automationList2
            .replaceRange(startIndex, startIndex + 6, [automation.value]);
      } else if (layoutNumber == 3) {
        switchIndexList3.replaceRange(startIndex, startIndex + 6, [
          [1, 1, 1, 1, 1, 1, 1, 1]
        ]);
        widgetList3.removeRange(startIndex, startIndex + 6);
        widgetList3.insert(
          startIndex,
          EightSwitchLayout(
            icon8Index: 1,
            icon7Index: 1,
            icon6Index: 1,
            icon5Index: 1,
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        widgetNameList3.replaceRange(startIndex, startIndex + 6, ['8XXNH']);
        automationList3
            .replaceRange(startIndex, startIndex + 6, [automation.value]);
      }
    }
  }

  void onS8Click({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 4s1r
    is4XDXXClick.value = false;
    is4FDNHClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = true;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    //sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(6, layoutNumber);
    if (automation.value == "Wifi & Remote") {
    } else if (automation.value == "Remote") {
    } else if (automation.value == "Touch Interface") {
      modulePrising.value = modulePrising.value + (2950);
    }
    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList.replaceRange(startIndex, startIndex + 6, [
          [1, 1, 1, 1, 1, 1, 1, 1]
        ]);
        widgetList.removeRange(startIndex, startIndex + 6);
        widgetList.insert(
          startIndex,
          EightSwitchLayout(
            icon8Index: 1,
            icon7Index: 1,
            icon6Index: 1,
            icon5Index: 1,
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          widgetNameList.replaceRange(startIndex, startIndex + 6, ['8S']);
        } else {
          widgetNameList.replaceRange(startIndex, startIndex + 6, ['S.8']);
        }
        automationList.replaceRange(startIndex, startIndex + 6,
            [automation.value + tiAutomation.value]);
      } else if (layoutNumber == 2) {
        switchIndexList2.replaceRange(startIndex, startIndex + 6, [
          [1, 1, 1, 1, 1, 1, 1, 1]
        ]);
        widgetList2.removeRange(startIndex, startIndex + 6);
        widgetList2.insert(
          startIndex,
          EightSwitchLayout(
            icon8Index: 1,
            icon7Index: 1,
            icon6Index: 1,
            icon5Index: 1,
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          widgetNameList2.replaceRange(startIndex, startIndex + 6, ['8S']);
        } else {
          widgetNameList2.replaceRange(startIndex, startIndex + 6, ['S.8']);
        }
        automationList2.replaceRange(startIndex, startIndex + 6,
            [automation.value + tiAutomation.value]);
      } else if (layoutNumber == 3) {
        switchIndexList3.replaceRange(startIndex, startIndex + 6, [
          [1, 1, 1, 1, 1, 1, 1, 1]
        ]);
        widgetList3.removeRange(startIndex, startIndex + 6);
        widgetList3.insert(
          startIndex,
          EightSwitchLayout(
            icon8Index: 1,
            icon7Index: 1,
            icon6Index: 1,
            icon5Index: 1,
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          widgetNameList3.replaceRange(startIndex, startIndex + 6, ['8S']);
        } else {
          widgetNameList3.replaceRange(startIndex, startIndex + 6, ['S.8']);
        }
        automationList3.replaceRange(startIndex, startIndex + 6,
            [automation.value + tiAutomation.value]);
      }
    }
  }

  void on8FDNHClick({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 4s1r
    is4XDXXClick.value = false;
    is4FDNHClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = true;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    //sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(6, layoutNumber);
    if (automation.value == "Wifi & Remote") {
      modulePrising.value = modulePrising.value + (17700);
    } else if (automation.value == "Remote") {
      modulePrising.value = modulePrising.value + (8500);
    } else if (automation.value == "Touch Interface") {
      modulePrising.value = modulePrising.value + (2950);
    }

    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList.replaceRange(startIndex, startIndex + 6, [
          [1, 1, 1, 1, 1, 1, 79, 1]
        ]);
        widgetList.removeRange(startIndex, startIndex + 6);
        widgetList.insert(
          startIndex,
          EightSwitchOneRegulatorLayout(
            icon8Index: 1,
            icon7Index: 79,
            icon6Index: 1,
            icon5Index: 1,
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          widgetNameList.replaceRange(startIndex, startIndex + 6, ['8S1R']);
        } else {
          widgetNameList.replaceRange(startIndex, startIndex + 6, ['8FDNH']);
        }
        automationList.replaceRange(startIndex, startIndex + 6,
            [automation.value + tiAutomation.value]);
      } else if (layoutNumber == 2) {
        switchIndexList2.replaceRange(startIndex, startIndex + 6, [
          [1, 1, 1, 1, 1, 1, 79, 1]
        ]);
        widgetList2.removeRange(startIndex, startIndex + 6);
        widgetList2.insert(
          startIndex,
          EightSwitchOneRegulatorLayout(
            icon8Index: 1,
            icon7Index: 79,
            icon6Index: 1,
            icon5Index: 1,
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          widgetNameList2.replaceRange(startIndex, startIndex + 6, ['8S1R']);
        } else {
          widgetNameList2.replaceRange(startIndex, startIndex + 6, ['8FDNH']);
        }
        automationList2.replaceRange(startIndex, startIndex + 6,
            [automation.value + tiAutomation.value]);
      } else if (layoutNumber == 3) {
        switchIndexList3.replaceRange(startIndex, startIndex + 6, [
          [1, 1, 1, 1, 1, 1, 79, 1]
        ]);
        widgetList3.removeRange(startIndex, startIndex + 6);
        widgetList3.insert(
          startIndex,
          EightSwitchOneRegulatorLayout(
            icon8Index: 1,
            icon7Index: 79,
            icon6Index: 1,
            icon5Index: 1,
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          widgetNameList3.replaceRange(startIndex, startIndex + 6, ['8S1R']);
        } else {
          widgetNameList3.replaceRange(startIndex, startIndex + 6, ['8FDNH']);
        }
        automationList3.replaceRange(startIndex, startIndex + 6,
            [automation.value + tiAutomation.value]);
      }
    }
  }

  void on8XDNHClick({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 4s1r
    is4XDXXClick.value = false;
    is4FDNHClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = true;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    //sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(6, layoutNumber);
    if (automation.value == "Wifi & Remote") {
      modulePrising.value = modulePrising.value + (17700);
    } else if (automation.value == "Remote") {
      modulePrising.value = modulePrising.value + (8500);
    } else if (automation.value == "Touch Interface") {
      modulePrising.value = modulePrising.value + (2950);
    }

    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList.replaceRange(startIndex, startIndex + 6, [
          [1, 1, 1, 1, 1, 1, 1, 1]
        ]);
        widgetList.removeRange(startIndex, startIndex + 6);
        widgetList.insert(
          startIndex,
          EightSwitchOneRegulatorLayout(
            icon8Index: 1,
            icon7Index: 1,
            icon6Index: 1,
            icon5Index: 1,
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        widgetNameList.replaceRange(startIndex, startIndex + 6, ['8XDNH']);
        automationList
            .replaceRange(startIndex, startIndex + 6, [automation.value]);
      } else if (layoutNumber == 2) {
        switchIndexList2.replaceRange(startIndex, startIndex + 6, [
          [1, 1, 1, 1, 1, 1, 1, 1]
        ]);
        widgetList2.removeRange(startIndex, startIndex + 6);
        widgetList2.insert(
          startIndex,
          EightSwitchOneRegulatorLayout(
            icon8Index: 1,
            icon7Index: 1,
            icon6Index: 1,
            icon5Index: 1,
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        widgetNameList2.replaceRange(startIndex, startIndex + 6, ['8XDNH']);
        automationList2
            .replaceRange(startIndex, startIndex + 6, [automation.value]);
      } else if (layoutNumber == 3) {
        switchIndexList3.replaceRange(startIndex, startIndex + 6, [
          [1, 1, 1, 1, 1, 1, 1, 1]
        ]);
        widgetList3.removeRange(startIndex, startIndex + 6);
        widgetList3.insert(
          startIndex,
          EightSwitchOneRegulatorLayout(
            icon8Index: 1,
            icon7Index: 1,
            icon6Index: 1,
            icon5Index: 1,
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        widgetNameList3.replaceRange(startIndex, startIndex + 6, ['8XDNH']);
        automationList3
            .replaceRange(startIndex, startIndex + 6, [automation.value]);
      }
    }
  }

  void on8FXNHClick({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 4s1r
    is4XDXXClick.value = false;
    is4FDNHClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = true;
    // 10s2r
    is10FXNHClick.value = false;
    //sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(6, layoutNumber);
    if (automation.value == "Wifi & Remote") {
      modulePrising.value = modulePrising.value + (15340);
    } else if (automation.value == "Remote") {
      modulePrising.value = modulePrising.value + (7649);
    } else if (automation.value == "Touch Interface") {
      modulePrising.value = modulePrising.value + (2950);
    }

    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList.replaceRange(startIndex, startIndex + 6, [
          [1, 1, 1, 1, 1, 1, 79, 1]
        ]);
        widgetList.removeRange(startIndex, startIndex + 6);
        widgetList.insert(
          startIndex,
          EightSwitchOneRegulatorLayout(
            icon8Index: 1,
            icon7Index: 79,
            icon6Index: 1,
            icon5Index: 1,
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        widgetNameList.replaceRange(startIndex, startIndex + 6, ['8FXNH']);
        automationList
            .replaceRange(startIndex, startIndex + 6, [automation.value]);
      } else if (layoutNumber == 2) {
        switchIndexList2.replaceRange(startIndex, startIndex + 6, [
          [1, 1, 1, 1, 1, 1, 79, 1]
        ]);
        widgetList2.removeRange(startIndex, startIndex + 6);
        widgetList2.insert(
          startIndex,
          EightSwitchOneRegulatorLayout(
            icon8Index: 1,
            icon7Index: 79,
            icon6Index: 1,
            icon5Index: 1,
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        widgetNameList2.replaceRange(startIndex, startIndex + 6, ['8FXNH']);
        automationList2
            .replaceRange(startIndex, startIndex + 6, [automation.value]);
      } else if (layoutNumber == 3) {
        switchIndexList3.replaceRange(startIndex, startIndex + 6, [
          [1, 1, 1, 1, 1, 1, 79, 1]
        ]);
        widgetList3.removeRange(startIndex, startIndex + 6);
        widgetList3.insert(
          startIndex,
          EightSwitchOneRegulatorLayout(
            icon8Index: 1,
            icon7Index: 79,
            icon6Index: 1,
            icon5Index: 1,
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 1,
            layoutNumber: layoutNumber,
          ),
        );
        widgetNameList3.replaceRange(startIndex, startIndex + 6, ['8FXNH']);
        automationList3
            .replaceRange(startIndex, startIndex + 6, [automation.value]);
      }
    }
  }

  void on10FXNHClick({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 4s1r
    is4XDXXClick.value = false;
    is4FDNHClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = true;
    //sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;
    int startIndex = calculateSpace(8, layoutNumber);
    if (automation.value == "Wifi & Remote") {
      modulePrising.value = modulePrising.value + (21240);
    } else if (automation.value == "Remote") {
      modulePrising.value = modulePrising.value + (10200);
    } else if (automation.value == "Touch Interface") {
      modulePrising.value = modulePrising.value + (3540);
    }
    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList.replaceRange(startIndex, startIndex + 8, [
          [79, 1, 1, 1, 1, 1, 1, 1, 79, 1]
        ]);
        widgetList.removeRange(startIndex, startIndex + 8);
        widgetList.insert(
          startIndex,
          TenSwitchTwoRegulatorLayout(
            icon10Index: 1,
            icon9Index: 79,
            icon8Index: 1,
            icon7Index: 1,
            icon6Index: 1,
            icon5Index: 1,
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 79,
            layoutNumber: layoutNumber,
          ),
        );
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          widgetNameList.replaceRange(startIndex, startIndex + 8, ['10S2R']);
        } else {
          widgetNameList.replaceRange(startIndex, startIndex + 8, ['10FXNH']);
        }
        automationList.replaceRange(startIndex, startIndex + 8,
            [automation.value + tiAutomation.value]);
      } else if (layoutNumber == 2) {
        switchIndexList2.replaceRange(startIndex, startIndex + 8, [
          [79, 1, 1, 1, 1, 1, 1, 1, 79, 1]
        ]);
        widgetList2.removeRange(startIndex, startIndex + 8);
        widgetList2.insert(
          startIndex,
          TenSwitchTwoRegulatorLayout(
            icon10Index: 1,
            icon9Index: 79,
            icon8Index: 1,
            icon7Index: 1,
            icon6Index: 1,
            icon5Index: 1,
            icon4Index: 1,
            icon3Index: 1,
            icon2Index: 1,
            icon1Index: 79,
            layoutNumber: layoutNumber,
          ),
        );
        if (automation.value != "Wifi & Remote" &&
            automation.value != "Remote") {
          widgetNameList2.replaceRange(startIndex, startIndex + 8, ['10S2R']);
        } else {
          widgetNameList2.replaceRange(startIndex, startIndex + 8, ['10FXNH']);
        }
        automationList2.replaceRange(startIndex, startIndex + 8,
            [automation.value + tiAutomation.value]);
      }
    }
  }

  void onSocket1Click({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    //sockets
    isSocket1Click.value = true;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(2, layoutNumber);
    modulePrising.value = modulePrising.value + (656.25);

    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList.removeRange(startIndex, startIndex + 2);
        widgetList.insert(startIndex, const SocketLayout(imageIndex: 0));
        widgetNameList.replaceRange(startIndex, startIndex + 2, ['SKT1']);
        automationList
            .replaceRange(startIndex, startIndex + 2, [automation.value]);
      } else if (layoutNumber == 2) {
        switchIndexList2.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList2.removeRange(startIndex, startIndex + 2);
        widgetList2.insert(startIndex, const SocketLayout(imageIndex: 0));
        widgetNameList2.replaceRange(startIndex, startIndex + 2, ['SKT1']);
        automationList2
            .replaceRange(startIndex, startIndex + 2, [automation.value]);
      } else if (layoutNumber == 3) {
        switchIndexList3.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList3.removeRange(startIndex, startIndex + 2);
        widgetList3.insert(startIndex, const SocketLayout(imageIndex: 0));
        widgetNameList3.replaceRange(startIndex, startIndex + 2, ['SKT1']);
        automationList3
            .replaceRange(startIndex, startIndex + 2, [automation.value]);
      }
    }

    // 4s1r
    is4XDXXClick.value = false;
    is4FDNHClick.value = false;
  }

  void onSocket2Click({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    //sockets
    isSocket1Click.value = false;
    isSocket2Click.value = true;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(1, layoutNumber);
    modulePrising.value = modulePrising.value + (596.875);
    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList.removeRange(startIndex, startIndex + 2);
        widgetList.insert(startIndex, const SocketLayout(imageIndex: 2));
        widgetNameList.replaceRange(startIndex, startIndex + 2, ['SKT2']);
        automationList
            .replaceRange(startIndex, startIndex + 2, [automation.value]);
      } else if (layoutNumber == 2) {
        switchIndexList2.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList2.removeRange(startIndex, startIndex + 2);
        widgetList2.insert(startIndex, const SocketLayout(imageIndex: 2));
        widgetNameList2.replaceRange(startIndex, startIndex + 2, ['SKT2']);
        automationList2
            .replaceRange(startIndex, startIndex + 2, [automation.value]);
      } else if (layoutNumber == 3) {
        switchIndexList3.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList3.removeRange(startIndex, startIndex + 2);
        widgetList3.insert(startIndex, const SocketLayout(imageIndex: 2));
        widgetNameList3.replaceRange(startIndex, startIndex + 2, ['SKT2']);
        automationList3
            .replaceRange(startIndex, startIndex + 2, [automation.value]);
      }
    }

    // 4s1r
    is4XDXXClick.value = false;
    is4FDNHClick.value = false;
  }

  void on16ASocketClick({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    //sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = true;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(1, layoutNumber);
    modulePrising.value = modulePrising.value + 800;
    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList.removeRange(startIndex, startIndex + 2);
        widgetList.insert(startIndex, const SixteenASocket());
        widgetNameList.replaceRange(startIndex, startIndex + 2, ['16ASKT']);
        automationList
            .replaceRange(startIndex, startIndex + 2, [automation.value]);
      } else if (layoutNumber == 2) {
        switchIndexList2.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList2.removeRange(startIndex, startIndex + 2);
        widgetList2.insert(startIndex, const SixteenASocket());
        widgetNameList2.replaceRange(startIndex, startIndex + 2, ['16ASKT']);
        automationList2
            .replaceRange(startIndex, startIndex + 2, [automation.value]);
      } else if (layoutNumber == 3) {
        switchIndexList3.replaceRange(startIndex, startIndex + 2, [
          [1, 1]
        ]);
        widgetList3.removeRange(startIndex, startIndex + 2);
        widgetList3.insert(startIndex, const SixteenASocket());
        widgetNameList3.replaceRange(startIndex, startIndex + 2, ['16ASKT']);
        automationList3
            .replaceRange(startIndex, startIndex + 2, [automation.value]);
      }
    }

    // 4s1r
    is4XDXXClick.value = false;
    is4FDNHClick.value = false;
  }

  void onUsbClick({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 4s1r
    is4XDXXClick.value = false;
    is4FDNHClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    // sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = true;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(1, layoutNumber);
    modulePrising.value = modulePrising.value + 2646.875;

    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList[startIndex] = [1];
        widgetList[startIndex] =
            (const OneModuleSocketLayout(accessoryType: 'USB'));
        widgetNameList[startIndex] = ('USB');
        automationList[startIndex] = automation.value;
      } else if (layoutNumber == 2) {
        switchIndexList2[startIndex] = ([1]);
        widgetList2[startIndex] =
            (const OneModuleSocketLayout(accessoryType: 'USB'));
        widgetNameList2[startIndex] = ('USB');
        automationList2[startIndex] = automation.value;
      } else if (layoutNumber == 3) {
        switchIndexList3[startIndex] = [1];
        widgetList3[startIndex] =
            (const OneModuleSocketLayout(accessoryType: 'USB'));
        widgetNameList3[startIndex] = ('USB');
        automationList3[startIndex] = automation.value;
      }
    }
  }

  void onRj11Click({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 4s1r
    is4XDXXClick.value = false;
    is4FDNHClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    // sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = true;
    isRj45Click.value = false;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(1, layoutNumber);
    modulePrising.value = modulePrising.value + 375;

    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList[startIndex] = [1];
        widgetList[startIndex] =
            (const OneModuleSocketLayout(accessoryType: 'LAN'));
        widgetNameList[startIndex] = ('RJ-11');
        automationList[startIndex] = automation.value;
      } else if (layoutNumber == 2) {
        switchIndexList2[startIndex] = ([1]);
        widgetList2[startIndex] =
            (const OneModuleSocketLayout(accessoryType: 'LAN'));
        widgetNameList2[startIndex] = ('RJ-11');
        automationList2[startIndex] = automation.value;
      } else if (layoutNumber == 3) {
        switchIndexList3[startIndex] = [1];
        widgetList3[startIndex] =
            (const OneModuleSocketLayout(accessoryType: 'LAN'));
        widgetNameList3[startIndex] = ('RJ-11');
        automationList3[startIndex] = automation.value;
      }
    }
  }

  void onRj45Click({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 4s1r
    is4XDXXClick.value = false;
    is4FDNHClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    // sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = true;
    isExternal1MClick.value = false;

    int startIndex = calculateSpace(1, layoutNumber);
    modulePrising.value = modulePrising.value + 1265.625;

    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList[startIndex] = [1];
        widgetList[startIndex] =
            (const OneModuleSocketLayout(accessoryType: 'LAN'));
        widgetNameList[startIndex] = ('RJ-45');
        automationList[startIndex] = automation.value;
      } else if (layoutNumber == 2) {
        switchIndexList2[startIndex] = ([1]);
        widgetList2[startIndex] =
            (const OneModuleSocketLayout(accessoryType: 'LAN'));
        widgetNameList2[startIndex] = ('RJ-45');
        automationList2[startIndex] = automation.value;
      } else if (layoutNumber == 3) {
        switchIndexList3[startIndex] = [1];
        widgetList3[startIndex] =
            (const OneModuleSocketLayout(accessoryType: 'LAN'));
        widgetNameList3[startIndex] = ('RJ-45');
        automationList3[startIndex] = automation.value;
      }
    }
  }

  void onExternal1MClick({required int layoutNumber}) {
    // 2s
    is2XXXHClick.value = false;
    is2XXNXClick.value = false;
    is1CClick.value = false;
    is1BClick.value = false;
    is2XXNXVerClick.value = false;
    is2XXXHVerClick.value = false;
    is1CVerClick.value = false;
    // 2s1r
    is2XDXXClick.value = false;
    // 4s
    is4XXNXClick.value = false;
    isS4Click.value = false;
    is2CClick.value = false;
    // 4s1r
    is4XDXXClick.value = false;
    is4FDNHClick.value = false;
    // 8s
    is8XXNHClick.value = false;
    isS8Click.value = false;
    // 8s1r
    is8FDNHClick.value = false;
    is8XDNHClick.value = false;
    is8FXNHClick.value = false;
    // 10s2r
    is10FXNHClick.value = false;
    // sockets
    isSocket1Click.value = false;
    isSocket2Click.value = false;
    is16ASocketClick.value = false;
    isSocket3Click.value = false;
    isUsbClick.value = false;
    isRj11Click.value = false;
    isRj45Click.value = false;
    isExternal1MClick.value = true;

    int startIndex = calculateSpace(1, layoutNumber);
    if (startIndex != 100) {
      if (layoutNumber == 1) {
        switchIndexList[startIndex] = [1];
        widgetList[startIndex] =
            (const OneModuleSocketLayout(accessoryType: 'External1M'));
        widgetNameList[startIndex] = ('External1M');
        automationList[startIndex] = automation.value;
      } else if (layoutNumber == 2) {
        switchIndexList2[startIndex] = ([1]);
        widgetList2[startIndex] =
            (const OneModuleSocketLayout(accessoryType: 'External1M'));
        widgetNameList2[startIndex] = ('External1M');
        automationList2[startIndex] = automation.value;
      } else if (layoutNumber == 3) {
        switchIndexList3[startIndex] = [1];
        widgetList3[startIndex] =
            (const OneModuleSocketLayout(accessoryType: 'External1M'));
        widgetNameList3[startIndex] = ('External1M');
        automationList3[startIndex] = automation.value;
      }
    }
  }
}
