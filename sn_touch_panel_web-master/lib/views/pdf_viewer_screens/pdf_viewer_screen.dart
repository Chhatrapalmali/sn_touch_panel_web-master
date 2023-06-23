import 'package:get/get.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:sn_touch_panel_web/controllers/module_controller.dart';

import 'pdf_constant_color.dart';

Widget pdfViewerScreen(image) {
  final menuController = Get.find<ModuleController>();
  return Container(
    width: PdfPageFormat.a3.availableWidth,
    height: PdfPageFormat.a3.availableHeight,
    alignment: Alignment.center,
    color: pdfBackgroundColor,
    padding: const EdgeInsets.all(20),
    child: Column(
      children: [
        Image(MemoryImage(image)),
        SizedBox(height: 50),
        Row(
          children: [
            infoLayout(
              menuController: menuController,
              title: 'Size',
              subTitle: menuController.getSelectedSize(),
            ),
            infoLayout(
              menuController: menuController,
              title: 'Modular/Panel',
              subTitle: menuController.isTouchModuleClicked()
                  ? menuController.isModularViewOn.value
                      ? 'Modular'
                      : 'Panel'
                  : '-',
            ),
            infoLayout(
              menuController: menuController,
              title: 'Material',
              subTitle: menuController.getSelectedMaterial(),
            ),
          ],
        ),
        SizedBox(height: 30),
        Row(
          children: [
            infoLayout(
              menuController: menuController,
              title: 'Color',
              subTitle: menuController.getSelectedMaterial() == 'Wood'
                  ? '-'
                  : menuController.getSelectedColor(),
            ),
            infoLayout(
              menuController: menuController,
              title: 'Module',
              subTitle: menuController.getSelectedTouchModule(),
            ),
            infoLayout(
              menuController: menuController,
              title: 'Panel Type',
              subTitle: menuController.isTouchModuleClicked()
                  ? menuController.isModularViewOn.value
                      ? menuController.companyName.value
                      : '-'
                  : '-',
            ),
          ],
        ),
        SizedBox(height: 30),
        Row(
          children: [
            infoLayout(
              menuController: menuController,
              title: 'Automation',
              subTitle: menuController.isTouchModuleClicked()
                  ? menuController.automation.value
                  : '-',
            ),
            infoLayout(
                menuController: menuController,
                title: 'Serial Number',
                subTitle: menuController.isTouchModuleClicked()),
            infoLayout(
              menuController: menuController,
              title: 'Quantity',
              subTitle: menuController.isTouchModuleClicked()
                  ? menuController.quantityController.text.isEmpty
                      ? '-'
                      : menuController.quantityController.text
                  : '-',
            ),
          ],
        ),
        SizedBox(height: 30),
        Row(
          children: [
            infoLayout(
              menuController: menuController,
              title: 'Comments',
              subTitle: menuController.isTouchModuleClicked()
                  ? menuController.commentController.text.isEmpty
                      ? '-'
                      : menuController.commentController.text
                  : '-',
            ),
          ],
        ),
      ],
    ),
  );
}

infoLayout(
    {required ModuleController menuController,
    required String title,
    required subTitle}) {
  return Expanded(
    child: Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 12, color: PdfColors.grey),
        ),
        SizedBox(height: 10),
        Text(
          subTitle,
          style: TextStyle(
            color: PdfColors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
