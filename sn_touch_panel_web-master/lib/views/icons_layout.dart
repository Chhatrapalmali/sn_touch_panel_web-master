import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';
import 'package:sn_touch_panel_web/helper/constant.dart';
import 'package:sn_touch_panel_web/helper/size_config.dart';
import 'package:sn_touch_panel_web/views/modular_variant_screens/eight_switch_layout.dart';
import 'package:sn_touch_panel_web/views/modular_variant_screens/four_switch_one_regulator_layout.dart';
import 'package:sn_touch_panel_web/views/modular_variant_screens/ten_switch_two_regulator_layout.dart';
import 'package:sn_touch_panel_web/views/modular_variant_screens/two_switch_layout.dart';
import 'package:sn_touch_panel_web/views/modular_variant_screens/two_switch_one_regulator_layout.dart';

import '../helper/responsive_layout.dart';
import 'modular_variant_screens/eight_switch_one_regulator_layout.dart';
import 'modular_variant_screens/four_switch_layout.dart';
import 'modular_variant_screens/two_switch_vertical_layout.dart';

class IconsLayout extends StatelessWidget {
  final String screenName;
  final int switchIndex;
  final int layoutNumber;

  const IconsLayout({
    Key? key,
    required this.screenName,
    required this.switchIndex,
    required this.layoutNumber,
  }) : super(key: key);

  int getSelectedIcon(ModuleController controller) {
    int selectedIconIndex = 0;
    if (layoutNumber == 1) {
      String touchName =
          controller.widgetNameList[controller.currentHoverIndex.value];
      var switchData = [];
      debugPrint(
          'hoverIndex1111: ${controller.currentHoverIndex.value.toString()},'
          ' selectSwitchIndex: $switchIndex, screenName: $touchName');

      // check switch data of switchIndexList that where can I update icon in selected list
      switchData =
          controller.switchIndexList[controller.currentHoverIndex.value];
      selectedIconIndex = switchData[switchIndex];
    } else if (layoutNumber == 2) {
      String touchName =
          controller.widgetNameList2[controller.currentHoverIndex.value];
      var switchData = [];
      debugPrint(
          'hoverIndex1111: ${controller.currentHoverIndex.value.toString()},'
          ' selectSwitchIndex: $switchIndex, screenName: $touchName');

      // check switch data of switchIndexList that where can I update icon in selected list
      switchData =
          controller.switchIndexList2[controller.currentHoverIndex.value];
      selectedIconIndex = switchData[switchIndex];
    } else if (layoutNumber == 3) {
      String touchName =
          controller.widgetNameList3[controller.currentHoverIndex.value];
      var switchData = [];
      debugPrint(
          'hoverIndex1111: ${controller.currentHoverIndex.value.toString()},'
          ' selectSwitchIndex: $switchIndex, screenName: $touchName');

      // check switch data of switchIndexList that where can I update icon in selected list
      switchData =
          controller.switchIndexList3[controller.currentHoverIndex.value];
      selectedIconIndex = switchData[switchIndex];
    }

    return selectedIconIndex;
  }

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ModuleController());
    // var pdfController = Get.put(PdfController());
    int selectedIconIndex = getSelectedIcon(controller);
    SizeConfig().init(context);
    return ResponsiveLayout.isPhone(context)
        ? SizedBox(
            width: SizeConfig.screenWidth!,
            height: SizeConfig.screenHeight! * 0.75,
            child: ListView(
              shrinkWrap: true,
              children: [
                expandedLayout(
                  title: "Fan",
                  list: fanIcons,
                  context: context,
                  selectedIconIndex: selectedIconIndex,
                  controller: controller,
                ),
                const SizedBox(
                  height: 10,
                ),
                expandedLayout(
                    title: "Lights",
                    list: lightIcons,
                    context: context,
                    selectedIconIndex: selectedIconIndex,
                    controller: controller),
                const SizedBox(
                  height: 10,
                ),
                expandedLayout(
                    title: "Sockets",
                    list: socketIcons,
                    context: context,
                    selectedIconIndex: selectedIconIndex,
                    controller: controller),
                const SizedBox(
                  height: 10,
                ),
                expandedLayout(
                    title: "Appliances",
                    list: appliancesIcons,
                    context: context,
                    selectedIconIndex: selectedIconIndex,
                    controller: controller),
                const SizedBox(
                  height: 10,
                ),
                expandedLayout(
                    title: "Power",
                    list: powerIcons,
                    context: context,
                    selectedIconIndex: selectedIconIndex,
                    controller: controller),
                const SizedBox(
                  height: 10,
                ),
                expandedLayout(
                    title: "Open and Close icons",
                    list: doorIcons,
                    context: context,
                    selectedIconIndex: selectedIconIndex,
                    controller: controller),
                const SizedBox(
                  height: 10,
                ),
                expandedLayout(
                    title: "Scenes",
                    list: scenesIcons,
                    context: context,
                    selectedIconIndex: selectedIconIndex,
                    controller: controller),
                const SizedBox(
                  height: 10,
                ),
                expandedLayout(
                    title: "Numbers and Shapes ",
                    list: numberIcons,
                    context: context,
                    selectedIconIndex: selectedIconIndex,
                    controller: controller),
                const SizedBox(
                  height: 10,
                ),
                expandedLayout(
                    title: "Other",
                    list: otherIcons,
                    context: context,
                    selectedIconIndex: selectedIconIndex,
                    controller: controller),
              ],
            ))
        : SizedBox(
            width: SizeConfig.screenWidth! * 0.5,
            height: SizeConfig.screenHeight! * 0.5,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      expandedLayout(
                        title: "Fan",
                        list: fanIcons,
                        context: context,
                        selectedIconIndex: selectedIconIndex,
                        controller: controller,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      expandedLayout(
                          title: "Lights",
                          list: lightIcons,
                          context: context,
                          selectedIconIndex: selectedIconIndex,
                          controller: controller),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      expandedLayout(
                          title: "Sockets",
                          list: socketIcons,
                          context: context,
                          selectedIconIndex: selectedIconIndex,
                          controller: controller),
                      const SizedBox(
                        width: 10,
                      ),
                      expandedLayout(
                          title: "Appliances",
                          list: appliancesIcons,
                          context: context,
                          selectedIconIndex: selectedIconIndex,
                          controller: controller),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      expandedLayout(
                          title: "Power",
                          list: powerIcons,
                          context: context,
                          selectedIconIndex: selectedIconIndex,
                          controller: controller),
                      const SizedBox(
                        width: 10,
                      ),
                      expandedLayout(
                          title: "Open and Close icons",
                          list: doorIcons,
                          context: context,
                          selectedIconIndex: selectedIconIndex,
                          controller: controller),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      expandedLayout(
                          title: "Scenes",
                          list: scenesIcons,
                          context: context,
                          selectedIconIndex: selectedIconIndex,
                          controller: controller),
                      const SizedBox(
                        width: 10,
                      ),
                      expandedLayout(
                          title: "Numbers and Shapes ",
                          list: numberIcons,
                          context: context,
                          selectedIconIndex: selectedIconIndex,
                          controller: controller),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      expandedLayout(
                          title: "Other",
                          list: otherIcons,
                          context: context,
                          selectedIconIndex: selectedIconIndex,
                          controller: controller),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(child: SizedBox())
                    ],
                  ),
                ],
              ),
            ));
  }

  expandedLayout(
      {required title,
      required list,
      required context,
      required selectedIconIndex,
      required controller}) {
    return ResponsiveLayout.isPhone(context)
        ? Card(
            color: Colors.teal,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 5,
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.zero,
            child: ExpansionTile(
              initiallyExpanded: true,
              iconColor: Colors.transparent,
              backgroundColor: Theme.of(context).colorScheme.background,
              title: Text(title),
              textColor: Theme.of(context).colorScheme.onPrimary,
              collapsedTextColor: Colors.white,
              trailing: const Icon(
                Icons.arrow_drop_down_sharp,
              ),
              collapsedIconColor: Colors.white,
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 6,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        // why do we need screen name because we do not know that if selected hover index
                        // layout is this four switch layout or not.
                        changeIconFunction(controller, list[index][1]);
                        Get.close(1);
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        child: CircleAvatar(
                          backgroundColor: selectedIconIndex == list[index][1]
                              ? Colors.teal.withOpacity(0.3)
                              : Colors.transparent,
                          child: Image.asset(
                            list[index][0],
                            color: Colors.teal,
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        : Expanded(
            child: Card(
              color: Colors.teal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 5,
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.zero,
              child: ExpansionTile(
                initiallyExpanded: true,
                iconColor: Colors.transparent,
                backgroundColor: Theme.of(context).colorScheme.background,
                title: Text(title),
                textColor: Theme.of(context).colorScheme.onPrimary,
                collapsedTextColor: Colors.white,
                trailing: const Icon(
                  Icons.arrow_drop_down_sharp,
                ),
                collapsedIconColor: Colors.white,
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 6,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          // why do we need screen name because we do not know that if selected hover index
                          // layout is this four switch layout or not.
                          changeIconFunction(controller, list[index][1]);
                          Get.close(1);
                        },
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          child: CircleAvatar(
                            backgroundColor: selectedIconIndex == list[index][1]
                                ? Colors.teal.withOpacity(0.3)
                                : Colors.transparent,
                            child: Image.asset(
                              list[index][0],
                              color: Colors.teal,
                              width: 30,
                              height: 30,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
  }

  void changeIconFunction(ModuleController controller, int index) {
    if (layoutNumber == 1) {
      String touchName =
          controller.widgetNameList[controller.currentHoverIndex.value];
      var switchData = [];
      debugPrint(
          'hoverIndex1111: ${controller.currentHoverIndex.value.toString()},'
          ' selectSwitchIndex: $switchIndex, screenName: $touchName');

      // check switch data of switchIndexList that where can I update icon in selected list
      switchData =
          controller.switchIndexList[controller.currentHoverIndex.value];
      switchData[switchIndex] = index;

      debugPrint('switchData: $switchData');
      if (touchName == '2XXNX' ||
          touchName == '2XXXH' ||
          touchName == '1C' ||
          touchName == '2S(Horizontal)') {
        controller.widgetList[controller.currentHoverIndex.value] =
            TwoSwitchLayout(
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      } else if (touchName == '2XXNX(Vertical)' ||
          touchName == '2XXXH(Vertical)' ||
          touchName == '1C(Vertical)' ||
          touchName == '2S(Vertical)') {
        controller.widgetList[controller.currentHoverIndex.value] =
            TwoSwitchVerticalLayout(
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      } else if (touchName == '2XDXX' || touchName == '2S1R') {
        controller.widgetList[controller.currentHoverIndex.value] =
            TwoSwitchOneRegulatorLayout(
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      } else if (touchName == '4XXNX' ||
          touchName == 'S.4' ||
          touchName == '2C' ||
          touchName == '4S') {
        controller.widgetList[controller.currentHoverIndex.value] =
            FourSwitchLayout(
          icon4Index: switchData[3],
          icon3Index: switchData[2],
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      } else if (touchName == '4FDNH' ||
          touchName == '4XDXX' ||
          touchName == '4S1R') {
        controller.widgetList[controller.currentHoverIndex.value] =
            FourSwitchOneRegulator(
          icon4Index: switchData[3],
          icon3Index: switchData[2],
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      } else if (touchName == '8XXNH' ||
          touchName == 'S.8' ||
          touchName == "8S") {
        controller.widgetList[controller.currentHoverIndex.value] =
            EightSwitchLayout(
          icon8Index: switchData[7],
          icon7Index: switchData[6],
          icon6Index: switchData[5],
          icon5Index: switchData[4],
          icon4Index: switchData[3],
          icon3Index: switchData[2],
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      } else if (touchName == '8FDNH' ||
          touchName == '8XDNH' ||
          touchName == '8FXNH' ||
          touchName == '8S1R') {
        controller.widgetList[controller.currentHoverIndex.value] =
            EightSwitchOneRegulatorLayout(
          icon8Index: switchData[7],
          icon7Index: switchData[6],
          icon6Index: switchData[5],
          icon5Index: switchData[4],
          icon4Index: switchData[3],
          icon3Index: switchData[2],
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      } else if (touchName == '10FXNH' || touchName == '10S2R') {
        controller.widgetList[controller.currentHoverIndex.value] =
            TenSwitchTwoRegulatorLayout(
          icon10Index: switchData[9],
          icon9Index: switchData[8],
          icon8Index: switchData[7],
          icon7Index: switchData[6],
          icon6Index: switchData[5],
          icon5Index: switchData[4],
          icon4Index: switchData[3],
          icon3Index: switchData[2],
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      }
    } else if (layoutNumber == 2) {
      String touchName =
          controller.widgetNameList2[controller.currentHoverIndex.value];
      var switchData = [];
      debugPrint(
          'hoverIndex222: ${controller.currentHoverIndex.value.toString()},'
          ' selectSwitchIndex: $switchIndex, screenName: $touchName');

      // check switch data of switchIndexList that where can I update icon in selected list
      switchData =
          controller.switchIndexList2[controller.currentHoverIndex.value];
      switchData[switchIndex] = index;

      debugPrint('switchData: $switchData');
      if (touchName == '2XXNX' ||
          touchName == '2XXXH' ||
          touchName == '1C' ||
          touchName == '2S(Horizontal)') {
        controller.widgetList2[controller.currentHoverIndex.value] =
            TwoSwitchLayout(
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      } else if (touchName == '2XXNX(Vertical)' ||
          touchName == '2XXXH(Vertical)' ||
          touchName == '1C(Vertical)' ||
          touchName == '2S(Vertical)') {
        controller.widgetList2[controller.currentHoverIndex.value] =
            TwoSwitchVerticalLayout(
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      } else if (touchName == '2XDXX' || touchName == '2S1R') {
        controller.widgetList2[controller.currentHoverIndex.value] =
            TwoSwitchOneRegulatorLayout(
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      } else if (touchName == '4XXNX' ||
          touchName == 'S.4' ||
          touchName == '2C' ||
          touchName == '4S') {
        controller.widgetList2[controller.currentHoverIndex.value] =
            FourSwitchLayout(
          icon4Index: switchData[3],
          icon3Index: switchData[2],
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      } else if (touchName == '4FDNH' ||
          touchName == '4XDXX' ||
          touchName == '4S1R') {
        controller.widgetList2[controller.currentHoverIndex.value] =
            FourSwitchOneRegulator(
          icon4Index: switchData[3],
          icon3Index: switchData[2],
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      } else if (touchName == '8XXNH' ||
          touchName == 'S.8' ||
          touchName == "8S") {
        controller.widgetList2[controller.currentHoverIndex.value] =
            EightSwitchLayout(
          icon8Index: switchData[7],
          icon7Index: switchData[6],
          icon6Index: switchData[5],
          icon5Index: switchData[4],
          icon4Index: switchData[3],
          icon3Index: switchData[2],
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      } else if (touchName == '8FDNH' ||
          touchName == '8XDNH' ||
          touchName == '8FXNH' ||
          touchName == '8S1R') {
        controller.widgetList2[controller.currentHoverIndex.value] =
            EightSwitchOneRegulatorLayout(
          icon8Index: switchData[7],
          icon7Index: switchData[6],
          icon6Index: switchData[5],
          icon5Index: switchData[4],
          icon4Index: switchData[3],
          icon3Index: switchData[2],
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      } else if (touchName == '10FXNH' || touchName == '10S2R') {
        controller.widgetList2[controller.currentHoverIndex.value] =
            TenSwitchTwoRegulatorLayout(
          icon10Index: switchData[9],
          icon9Index: switchData[8],
          icon8Index: switchData[7],
          icon7Index: switchData[6],
          icon6Index: switchData[5],
          icon5Index: switchData[4],
          icon4Index: switchData[3],
          icon3Index: switchData[2],
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      }
    } else if (layoutNumber == 3) {
      String touchName =
          controller.widgetNameList3[controller.currentHoverIndex.value];
      var switchData = [];
      debugPrint(
          'hoverIndex33: ${controller.currentHoverIndex.value.toString()},'
          ' selectSwitchIndex: $switchIndex, screenName: $touchName');

      // check switch data of switchIndexList that where can I update icon in selected list
      switchData =
          controller.switchIndexList3[controller.currentHoverIndex.value];
      switchData[switchIndex] = index;

      debugPrint('switchData: $switchData');
      if (touchName == '2XXNX' ||
          touchName == '2XXXH' ||
          touchName == '1C' ||
          touchName == '2S(Horizontal)') {
        controller.widgetList3[controller.currentHoverIndex.value] =
            TwoSwitchLayout(
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      } else if (touchName == '2XXNX(Vertical)' ||
          touchName == '2XXXH(Vertical)' ||
          touchName == '1C(Vertical)' ||
          touchName == '2S(Vertical)') {
        controller.widgetList3[controller.currentHoverIndex.value] =
            TwoSwitchVerticalLayout(
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      } else if (touchName == '2XDXX' || touchName == '2S1R') {
        controller.widgetList3[controller.currentHoverIndex.value] =
            TwoSwitchOneRegulatorLayout(
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      } else if (touchName == '4XXNX' ||
          touchName == 'S.4' ||
          touchName == '2C' ||
          touchName == '4S') {
        controller.widgetList3[controller.currentHoverIndex.value] =
            FourSwitchLayout(
          icon4Index: switchData[3],
          icon3Index: switchData[2],
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      } else if (touchName == '4FDNH' ||
          touchName == '4XDXX' ||
          touchName == '4S1R') {
        controller.widgetList3[controller.currentHoverIndex.value] =
            FourSwitchOneRegulator(
          icon4Index: switchData[3],
          icon3Index: switchData[2],
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      } else if (touchName == '8XXNH' ||
          touchName == 'S.8' ||
          touchName == "8S") {
        controller.widgetList3[controller.currentHoverIndex.value] =
            EightSwitchLayout(
          icon8Index: switchData[7],
          icon7Index: switchData[6],
          icon6Index: switchData[5],
          icon5Index: switchData[4],
          icon4Index: switchData[3],
          icon3Index: switchData[2],
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      } else if (touchName == '8FDNH' ||
          touchName == '8XDNH' ||
          touchName == '8FXNH' ||
          touchName == '8S1R') {
        controller.widgetList3[controller.currentHoverIndex.value] =
            EightSwitchOneRegulatorLayout(
          icon8Index: switchData[7],
          icon7Index: switchData[6],
          icon6Index: switchData[5],
          icon5Index: switchData[4],
          icon4Index: switchData[3],
          icon3Index: switchData[2],
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      } else if (touchName == '10FXNH' || touchName == '10S2R') {
        controller.widgetList3[controller.currentHoverIndex.value] =
            TenSwitchTwoRegulatorLayout(
          icon10Index: switchData[9],
          icon9Index: switchData[8],
          icon8Index: switchData[7],
          icon7Index: switchData[6],
          icon6Index: switchData[5],
          icon5Index: switchData[4],
          icon4Index: switchData[3],
          icon3Index: switchData[2],
          icon2Index: switchData[1],
          icon1Index: switchData[0],
          layoutNumber: layoutNumber,
        );
      }
    }
  }
}
