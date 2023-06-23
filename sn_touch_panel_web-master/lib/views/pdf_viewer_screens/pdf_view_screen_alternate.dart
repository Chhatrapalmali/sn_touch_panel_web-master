import 'package:get/get.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:sn_touch_panel_web/controllers/pdf_controller.dart';

Widget pdfViewerScreenAlternate(index) {
  //final menuController = Get.find<MenuController>();
  final pdfController = Get.find<PdfController>();
  return Container(
    width: PdfPageFormat.a4.availableWidth,
    height: PdfPageFormat.a6.availableHeight,
    child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          if (pdfController.sizeList[index] == "2 Module" ||
              pdfController.sizeList[index] == "4 Module" ||
              pdfController.sizeList[index] == "3 Module" ||
              pdfController.sizeList[index] == "3 Module(Vertical)" ||
              pdfController.sizeList[index] == "4 Module(Vertical)" ||
              pdfController.sizeList[index] == "6 Module(Vertical)" ||
              pdfController.sizeList[index] == "8 Module(Vertical)")
            Image(MemoryImage(pdfController.widgetImages[index]),
                width: PdfPageFormat.a4.availableWidth / 2,
                height: PdfPageFormat.a6.availableHeight / 2.8)
          else
            Image(MemoryImage(pdfController.widgetImages[index]),
                width: PdfPageFormat.a4.availableWidth / 2),
          Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Row(children: [
                  infoLayout(
                    pdfController: pdfController,
                    title: 'Size',
                    subTitle: pdfController.sizeList[index] == ""
                        ? "-"
                        : pdfController.sizeList[index],
                  ),
                  infoLayout(
                      pdfController: pdfController,
                      title: 'Modular/Panel',
                      subTitle: pdfController.moduleorpanelList[index]
                          ? 'Modular'
                          : 'Panel'),
                ]),
                SizedBox(height: 15),
                Row(children: [
                  infoLayout(
                    pdfController: pdfController,
                    title: 'Material',
                    subTitle: pdfController.materialList[index] == ""
                        ? "-"
                        : pdfController.materialList[index],
                  ),
                  infoLayout(
                    pdfController: pdfController,
                    title: 'Color',
                    subTitle: pdfController.colorList[index] == ""
                        ? "-"
                        : (pdfController.materialList[index] == "Wood" ||
                                pdfController.materialList[index] == "Marble")
                            ? "-"
                            : pdfController.colorList[index],
                  ),
                ]),
                SizedBox(height: 15),
                Row(children: [
                  infoLayout(
                      pdfController: pdfController,
                      title: 'Serial Number',
                      subTitle: (index + 1).toString()),
                  infoLayout(
                      pdfController: pdfController,
                      title: 'Quantity',
                      subTitle: pdfController.quantity[index] == ""
                          ? "1"
                          : pdfController.quantity[index]),
                ]),
                SizedBox(height: 15),
                Row(children: [
                  infoLayout(
                      pdfController: pdfController,
                      title: 'Panel Type',
                      subTitle: pdfController.panelTypeList[index] == ""
                          ? "-"
                          : pdfController.panelTypeList[index]),
                  infoLayout(
                      pdfController: pdfController,
                      title: 'Comments',
                      subTitle: pdfController.commentsList[index] == ""
                          ? "-"
                          : pdfController.commentsList[index]),
                  /*  infoLayout(
                    pdfController: pdfController,
                    title: 'Pricing',
                    subTitle: pdfController.modularPricingList[index] == 0
                        ? "-"
                        : "RS. ${(pdfController.modularPricingList[index] / 1.18).round()}",
                  ),*/
                ]),
                    /*  SizedBox(height: 15),
                Row(children: [
                  infoLayout(
                    pdfController: pdfController,
                    title: 'Module',
                    subTitle: pdfController.selectedModule[index] == ""
                        ? "-"
                        : pdfController.selectedModule[index],
                  ),
                ]),*/
                SizedBox(height: 15),
                Row(children: [
                  infoLayout(
                    pdfController: pdfController,
                    title: 'Module',
                    subTitle: pdfController.selectedModule[index] == ""
                        ? "-"
                        : pdfController.selectedModule[index],
                  ),
                ])
              ]))
        ])),
  );
}

infoLayout(
    {required PdfController pdfController,
    required String title,
    required subTitle}) {
  return Expanded(
    child: Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 7, color: PdfColors.grey),
        ),
        SizedBox(width: 5),
        Text(
          subTitle,
          style: TextStyle(
            color: PdfColors.black,
            fontSize: 7,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
