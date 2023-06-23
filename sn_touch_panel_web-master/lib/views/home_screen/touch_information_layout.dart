import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';
import 'package:sn_touch_panel_web/helper/marquee_widget.dart';
import 'package:sn_touch_panel_web/helper/size_config.dart';

import '../../controllers/pdf_controller.dart';

class TouchInformationLayout extends StatelessWidget {
  const TouchInformationLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var menuController = Get.put(ModuleController());
    var pdfController = Get.put(PdfController());
    SizeConfig().init(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            infoLayout(
              context: context,
              menuController: menuController,
              title: 'Size',
              subTitle: menuController.getSelectedSize(),
            ),
            infoLayout(
              context: context,
              menuController: menuController,
              title: 'Modular/Panel',
              subTitle: menuController.isTouchModuleClicked()
                  ? menuController.isModularViewOn.value
                      ? 'Modular'
                      : 'Panel'
                  : '-',
            ),
            infoLayout(
              context: context,
              menuController: menuController,
              title: 'Material',
              subTitle: menuController.getSelectedMaterial(),
            ),
          ],
        ),
        Row(
          children: [
            infoLayout(
              context: context,
              menuController: menuController,
              title: 'Color',
              subTitle: (menuController.getSelectedMaterial() == 'Wood' ||
                      menuController.getSelectedMaterial() == 'Marble')
                  ? '-'
                  : menuController.getSelectedColor(),
            ),
            infoLayout(
              context: context,
              menuController: menuController,
              title: 'Panel Type',
              subTitle: menuController.isTouchModuleClicked()
                  ? menuController.isModularViewOn.value
                      ? menuController.companyName.value
                      : '-'
                  : '-',
            ),
            infoLayout(
                context: context,
                menuController: menuController,
                title: 'Serial Number',
                subTitle: menuController.isTouchModuleClicked()
                    ? pdfController.isForUpdate.value
                        ? pdfController.pdfComponentIndex.toString()
                        : (pdfController.widgetImages.length + 1).toString()
                    : "-"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            infoLayout(
              context: context,
              menuController: menuController,
              title: 'Quantity',
              subTitle: menuController.isTouchModuleClicked()
                  ? menuController.quantityController.text.isEmpty
                      ? '1'
                      : menuController.quantityController.text
                  : '-',
            ),
            infoLayout(
              context: context,
              menuController: menuController,
              title: 'Comments',
              subTitle: menuController.isTouchModuleClicked()
                  ? menuController.commentController.text.isEmpty
                  ? '-'
                  : menuController.commentController.text
                  : '-',
            ),
            /* infoLayout(
              context: context,
              menuController: menuController,
              title: 'Pricing',
              subTitle: menuController.modulePrising.value == 0
                  ? '-'
                  : "₹ ${(menuController.modulePrising.value / 1.18).round()}",
            ),*/
          ],
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              infoLayout(
                context: context,
                menuController: menuController,
                title: 'Module',
                subTitle: menuController.getSelectedTouchModule(),
              ),
            ]),
        /* Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            infoLayout(
              context: context,
              menuController: menuController,
              title: 'Comments',
              subTitle: menuController.isTouchModuleClicked()
                  ? menuController.commentController.text.isEmpty
                      ? '-'
                      : menuController.commentController.text
                  : '-',
            ),
          ],
        )*/
      ],
    );
  }

  infoLayout(
      {required ModuleController menuController,
      required BuildContext context,
      required String title,
      required subTitle}) {
    return Expanded(
      child: ListTile(
        title: MarqueeWidget(
          child: Text(
            title,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ),
        subtitle: MarqueeWidget(
          child: Text(
            subTitle,
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText2!.color,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
