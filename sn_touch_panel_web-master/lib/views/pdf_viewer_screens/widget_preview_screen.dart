import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_touch_panel_web/helper/marquee_widget.dart';

import '../../controllers/pdf_controller.dart';
import '../../helper/responsive_layout.dart';
import '../../helper/size_config.dart';

class WidgetPreViewScreen extends StatelessWidget {
  const WidgetPreViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pdfController = Get.put(PdfController());
    final index = pdfController.pdfComponentIndex.value;
    SizeConfig().init(context);
    return ResponsiveLayout.isPhone(context)
        ? SizedBox(
            width: SizeConfig.screenWidth!,
            height: SizeConfig.screenHeight! * 0.75,
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      (pdfController.sizeList[index] == "2 Module" ||
                              pdfController.sizeList[index] == "3 Module" ||
                              pdfController.sizeList[index] == "4 Module" ||
                              pdfController.sizeList[index] ==
                                  "3 Module(Vertical)" ||
                              pdfController.sizeList[index] ==
                                  "4 Module(Vertical)" ||
                              pdfController.sizeList[index] ==
                                  "6 Module(Vertical)" ||
                              pdfController.sizeList[index] ==
                                  "8 Module(Vertical)")
                          ? Image(
                              image: MemoryImage(
                                  pdfController.widgetImages[index]),
                              height: SizeConfig.screenHeight! * 0.38,
                            )
                          : Image(
                              height: SizeConfig.screenHeight! * 0.38,
                              image: MemoryImage(
                                  pdfController.widgetImages[index]),
                            ),
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
                                  context: context,
                                ),
                                infoLayout(
                                    pdfController: pdfController,
                                    title: 'Modular/Panel',
                                    subTitle:
                                        pdfController.moduleorpanelList[index]
                                            ? 'Modular'
                                            : 'Panel',
                                    context: context),
                                infoLayout(
                                  pdfController: pdfController,
                                  title: 'Color',
                                  subTitle: pdfController.colorList[index] == ""
                                      ? "-"
                                      : pdfController.materialList[index] ==
                                              "Wood"
                                          ? "-"
                                          : pdfController.colorList[index],
                                  context: context,
                                ),
                              ]),
                              const SizedBox(height: 15),
                              Row(children: [
                                infoLayout(
                                    pdfController: pdfController,
                                    title: 'Panel Type',
                                    subTitle:
                                        pdfController.panelTypeList[index] == ""
                                            ? "-"
                                            : pdfController
                                                .panelTypeList[index],
                                    context: context),
                                infoLayout(
                                    pdfController: pdfController,
                                    title: 'Quantity',
                                    subTitle:
                                        pdfController.quantity[index] == ""
                                            ? "1"
                                            : pdfController.quantity[index],
                                    context: context),
                                infoLayout(
                                  pdfController: pdfController,
                                  title: 'Material',
                                  subTitle:
                                      pdfController.materialList[index] == ""
                                          ? "-"
                                          : pdfController.materialList[index],
                                  context: context,
                                ),
                              ]),
                              const SizedBox(height: 15),
                              Row(children: [
                                infoLayout(
                                    pdfController: pdfController,
                                    title: 'Serial Number',
                                    subTitle: (index + 1).toString(),
                                    context: context),
                                infoLayout(
                                    pdfController: pdfController,
                                    title: 'Comments',
                                    subTitle:
                                        pdfController.commentsList[index] == ""
                                            ? "-"
                                            : pdfController.commentsList[index],
                                    context: context),
                              ]),
                              const SizedBox(height: 15),
                              Row(
                                children: [
                                  infoLayout(
                                    pdfController: pdfController,
                                    title: 'Module',
                                    subTitle: pdfController
                                                .selectedModule[index] ==
                                            ""
                                        ? "-"
                                        : pdfController.selectedModule[index],
                                    context: context,
                                  ),
                                ],
                              )
                            ]),
                      )
                    ])),
          )
        : SizedBox(
            width: SizeConfig.screenWidth! * 0.5,
            height: SizeConfig.screenHeight! * 0.5,
            child: Padding(
                padding: const EdgeInsets.all(10),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  (pdfController.sizeList[index] == "2 Module" ||
                          pdfController.sizeList[index] == "3 Module" ||
                          pdfController.sizeList[index] == "4 Module")
                      ? Image(
                          image: MemoryImage(pdfController.widgetImages[index]),
                          width: SizeConfig.screenWidth! * 0.25,
                          height: SizeConfig.screenHeight! * 0.25,
                        )
                      : Image(
                          image: MemoryImage(pdfController.widgetImages[index]),
                          width: SizeConfig.screenWidth! * 0.25,
                        ),
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
                              context: context,
                            ),
                            infoLayout(
                                pdfController: pdfController,
                                title: 'Modular/Panel',
                                subTitle: pdfController.moduleorpanelList[index]
                                    ? 'Modular'
                                    : 'Panel',
                                context: context),
                          ]),
                          const SizedBox(height: 15),
                          Row(children: [
                            infoLayout(
                              pdfController: pdfController,
                              title: 'Material',
                              subTitle: pdfController.materialList[index] == ""
                                  ? "-"
                                  : pdfController.materialList[index],
                              context: context,
                            ),
                            infoLayout(
                              pdfController: pdfController,
                              title: 'Color',
                              subTitle: pdfController.colorList[index] == ""
                                  ? "-"
                                  : (pdfController.materialList[index] ==
                                              "Wood" ||
                                          pdfController.materialList[index] ==
                                              "Marble")
                                      ? "-"
                                      : pdfController.colorList[index],
                              context: context,
                            ),
                          ]),
                          const SizedBox(height: 15),
                          Row(children: [
                            infoLayout(
                                pdfController: pdfController,
                                title: 'Serial Number',
                                subTitle: (index + 1).toString(),
                                context: context),
                            infoLayout(
                                pdfController: pdfController,
                                title: 'Quantity',
                                subTitle: pdfController.quantity[index] == ""
                                    ? "1"
                                    : pdfController.quantity[index],
                                context: context),
                          ]),
                          const SizedBox(height: 15),
                          Row(children: [
                            infoLayout(
                                pdfController: pdfController,
                                title: 'Panel Type',
                                subTitle:
                                    pdfController.panelTypeList[index] == ""
                                        ? "-"
                                        : pdfController.panelTypeList[index],
                                context: context),
                            infoLayout(
                                pdfController: pdfController,
                                title: 'Comments',
                                subTitle:
                                    pdfController.commentsList[index] == ""
                                        ? "-"
                                        : pdfController.commentsList[index],
                                context: context),
                            /* infoLayout(
                                pdfController: pdfController,
                                title: 'Pricing',
                                subTitle: pdfController
                                            .modularPricingList[index] ==
                                        0
                                    ? "-"
                                    : "₹ ${(pdfController.modularPricingList[index] / 1.18).round()}",
                                context: context),*/
                          ]),
                          /*   const SizedBox(height: 15),
                          Row(children: [
                            infoLayout(
                              pdfController: pdfController,
                              title: 'Module',
                              subTitle:
                                  pdfController.selectedModule[index] == ""
                                      ? "-"
                                      : pdfController.selectedModule[index],
                              context: context,
                            ),
                          ]),*/
                          const SizedBox(height: 15),
                          Row(children: [
                            infoLayout(
                              pdfController: pdfController,
                              title: 'Module',
                              subTitle:
                                  pdfController.selectedModule[index] == ""
                                      ? "-"
                                      : pdfController.selectedModule[index],
                              context: context,
                            ),
                          ]),
                        ]),
                  )
                ])),
          );
  }
}

infoLayout(
    {required context,
    required PdfController pdfController,
    required String title,
    required subTitle}) {
  return Expanded(
    child: Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 10, color: Colors.grey),
        ),
        const SizedBox(width: 5),
        MarqueeWidget(
          child: Text(
            subTitle,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 9,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}
