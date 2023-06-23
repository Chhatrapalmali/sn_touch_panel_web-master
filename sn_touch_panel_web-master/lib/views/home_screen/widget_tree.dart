import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';
import 'package:sn_touch_panel_web/controllers/pdf_controller.dart';
import 'package:sn_touch_panel_web/helper/responsive_layout.dart';
import 'package:sn_touch_panel_web/views/home_screen/home_screen.dart';

import 'components/side_menu_phone.dart';
import 'home_screen_phone.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pdfController = Get.put(PdfController());
    var controller = Get.put(ModuleController());

    return Scaffold(
      drawer: ResponsiveLayout.isPhone(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: SideMenuPhone(
                onSizeClick: () {
                  controller.sizeMenuToggle.toggle();
                  controller.colorMenuToggle.value = false;
                  controller.moduleMenuToggle.value = false;
                  controller.materialMenuToggle.value = false;

                  controller.isSizeClick.toggle();
                  controller.isColorClick.value = false;
                  controller.isModuleClick.value = false;
                  controller.isIconClick.value = false;
                  controller.isMaterialClick.value = false;
                },
                onSwitchValue: (value) {
                  var temp = controller.modulePrising.value;
                  if (value) {
                    controller.modulePrising.value =
                        temp - controller.getBasicPrising();
                  } else {
                    controller.modulePrising.value =
                        temp + controller.getBasicPrising();
                  }
                  controller.isModularViewOn.value = value;
                  if (controller.isModularViewOn.isTrue) {
                    controller.modularMaterial.value = 'Acrylic';
                    controller.panelMaterial.value = '';
                  }
                },
                onWatermarkSwitchValue: (bool switchValue) {
                  controller.isWatermarkOn.value = switchValue;
                },
                onIRSwitchValueChange: (bool value) {
                  controller.isIRViewOn.value = value;
                },
              ),
            )
          : null,
      appBar: AppBar(
        //leading:const SizedBox(),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 3,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/sn_logo.png',
              width: 35,
              height: 35,
            ),
            const SizedBox(width: 20),
            Text(
              'Smart Node',
              style: TextStyle(
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
          ],
        ),
        actions: [
          Obx(
            () => Visibility(
              visible: pdfController.widgetImages.isNotEmpty,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () {
                    pdfController.generatePdf();
                  },
                  color: Colors.teal,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Text(
                    'Download',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ResponsiveLayout.isPhone(context)
          ? const HomeScreenPhone()
          : const HomeScreen(),
      // body: const ResponsiveLayout(
      //   tiny: SizedBox(),
      //   phone: HomeScreen(),
      //   tablet: HomeScreen(),
      //   largeTablet: SizedBox(),
      //   desktop: HomeScreen(),
      // ),
    );
  }
}
