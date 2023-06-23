import 'dart:async';
import 'dart:html' as html;
import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;

import '../views/pdf_viewer_screens/pdf_view_screen_alternate.dart';
import '../views/pdf_viewer_screens/widget_preview_screen.dart';
import 'module_controller.dart';

class PdfController extends GetxController {
  List<Widget> pdfWidgetList = <Widget>[].obs;
  List<Widget> pdfWidgetList2 = <Widget>[].obs;
  List<Widget> pdfWidgetList3 = <Widget>[].obs;
  RxBool isForUpdate = false.obs;
  RxBool isViewOnly = false.obs;
  RxInt pdfComponentIndex = 0.obs;

  List<Uint8List> widgetImages = <Uint8List>[].obs;
  List<String> sizeList = <String>[].obs;
  List<double> modularPricingList = <double>[].obs;
  List<String> commentsList = <String>[].obs;
  List<bool> moduleorpanelList = <bool>[].obs;
  List<int> moduleMirrorList = <int>[].obs;
  List<String> materialList = <String>[].obs;
  List<String> colorList = <String>[].obs;
  List<String> panelTypeList = <String>[].obs;
  List<String> serialNumberList = <String>[].obs;
  List<String> selectedModule = <String>[].obs;
  List<String> quantity = <String>[].obs;
  List<List<String>> moduleList1 = <List<String>>[].obs;
  List<List<String>> moduleList2 = <List<String>>[].obs;
  List<List<String>> moduleList3 = <List<String>>[].obs;
  List<List<Widget>> moduleWidgetList1 = <List<Widget>>[].obs;
  List<List<Widget>> moduleWidgetList2 = <List<Widget>>[].obs;
  List<List<Widget>> moduleWidgetList3 = <List<Widget>>[].obs;
  List<List<List<int>>> moduleIconList1 = <List<List<int>>>[].obs;
  List<List<List<int>>> moduleIconList2 = <List<List<int>>>[].obs;
  List<List<List<int>>> moduleIconList3 = <List<List<int>>>[].obs;
  List<List<String>> pdfAutomationList1 = <List<String>>[].obs;
  List<List<String>> pdfAutomationList2 = <List<String>>[].obs;
  List<List<String>> pdfAutomationList3 = <List<String>>[].obs;

  late Uint8List arrowDownBlack, arrowUpBlack;
  late Uint8List pdfPanelMaterial;
  late Uint8List pdfSnLogoWhite, pdfSnLogoGrey, pdfSnLogoBlack;
  late Uint8List _imageFile;

  captureImage() async {
    ModuleController menuController = Get.put(ModuleController());
    GlobalKey key = GlobalKey();
    if (menuController.is2ModuleClick.value) {
      key = menuController.twoModuleKey;
    } else if (menuController.is3ModuleClick.value) {
      key = menuController.threeModuleKey;
    } else if (menuController.is4ModuleClick.value) {
      key = menuController.fourModuleKey;
    } else if (menuController.is6ModuleClick.value) {
      key = menuController.sixModuleKey;
    } else if (menuController.is8ModuleClick.value) {
      key = menuController.eightModuleKey;
    } else if (menuController.is8Module2Click.value) {
      key = menuController.eightVerticleModuleKey;
    } else if (menuController.is12ModuleClick.value) {
      key = menuController.twelveModuleKey;
    } else if (menuController.is16ModuleClick.value) {
      key = menuController.sixteenModuleKey;
    } else if (menuController.is18ModuleClick.value) {
      key = menuController.eighteenModuleKey;
    }

    RenderRepaintBoundary boundary =
        key.currentContext!.findRenderObject() as RenderRepaintBoundary;
    ui.Image image = await boundary.toImage(pixelRatio: 2);
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    _imageFile = byteData!.buffer.asUint8List();
    return _imageFile;
  }

  Future<void> generatePdf() async {
    final pdf = pw.Document();
    pdf.addPage(pw.MultiPage(build: (context) {
      return List<pw.Widget>.generate(widgetImages.length, (index) {
        return pdfViewerScreenAlternate(index);
      });
    }));

    final bytes = await pdf.save();
    final blob = html.Blob([bytes], 'application/pdf');
    final url = html.Url.createObjectUrlFromBlob(blob);
    // this url is used to open pdf in another tab without downloading
    // html.window.open(url, '_blank');
    final anchor = html.document.createElement('a') as html.AnchorElement
      ..href = url
      ..style.display = 'none'
      ..download = '${DateTime.now()}.pdf';
    html.document.body!.children.add(anchor);
    anchor.click();
    html.document.body!.children.remove(anchor);
    html.Url.revokeObjectUrl(url);

    // return saveDocument(name: 'my_example.pdf', pdf: pdf);
  }

  static Future<File> saveDocument({
    required String name,
    required pw.Document pdf,
  }) async {
    final bytes = await pdf.save();

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');

    await file.writeAsBytes(bytes);

    return file;
  }

  Future<Uint8List> loadImage(String path) async {
    final ByteData bytes = await rootBundle.load(path);
    final Uint8List byteList = bytes.buffer.asUint8List();

    return byteList;
  }

  void removeWidget(index) {
    widgetImages.removeAt(index);
    sizeList.removeAt(index);
    commentsList.removeAt(index);
    quantity.removeAt(index);
    modularPricingList.removeAt(index);
    /*serialNumberList.removeAt(index);*/
    colorList.removeAt(index);
    materialList.removeAt(index);
    moduleorpanelList.removeAt(index);
    panelTypeList.removeAt(index);
    pdfAutomationList1.removeAt(index);
    pdfAutomationList2.removeAt(index);
    pdfAutomationList3.removeAt(index);
    moduleList1.removeAt(index);
    moduleList2.removeAt(index);
    moduleList3.removeAt(index);
    moduleWidgetList1.removeAt(index);
    moduleWidgetList2.removeAt(index);
    moduleWidgetList3.removeAt(index);
    moduleIconList1.removeAt(index);
    moduleIconList2.removeAt(index);
    moduleIconList3.removeAt(index);
    selectedModule.removeAt(index);
    moduleMirrorList.removeAt(index);
  }

  Future<void> addWidget() async {
    ModuleController menuController = Get.put(ModuleController());
    if (isForUpdate.value) {
      _imageFile = await captureImage();
      widgetImages[pdfComponentIndex.value] = _imageFile;
      sizeList[pdfComponentIndex.value] = menuController.getSelectedSize();
      commentsList[pdfComponentIndex.value] =
          menuController.commentController.text;
      quantity[pdfComponentIndex.value] =
          menuController.quantityController.text;
      modularPricingList[pdfComponentIndex.value] =
          menuController.modulePrising.value;
      //serialNumberList[pdfComponentIndex.value] = menuController.serialNumberController.text;
      colorList[pdfComponentIndex.value] = menuController.glassColor.value;
      materialList[pdfComponentIndex.value] =
          menuController.getSelectedMaterial();
      moduleorpanelList[pdfComponentIndex.value] =
          menuController.isModularViewOn.value;
      panelTypeList[pdfComponentIndex.value] =
          menuController.isModularViewOn.value
              ? menuController.companyName.value
              : "";
      pdfAutomationList1[pdfComponentIndex.value] = [
        ...menuController.automationList
      ];
      pdfAutomationList2[pdfComponentIndex.value] = [
        ...menuController.automationList2
      ];
      pdfAutomationList3[pdfComponentIndex.value] = [
        ...menuController.automationList3
      ];
      moduleList1[pdfComponentIndex.value] = [...menuController.widgetNameList];
      moduleList2[pdfComponentIndex.value] = [
        ...menuController.widgetNameList2
      ];
      moduleList3[pdfComponentIndex.value] = [
        ...menuController.widgetNameList3
      ];
      moduleIconList1[pdfComponentIndex.value] = [
        ...menuController.switchIndexList
      ];
      moduleIconList2[pdfComponentIndex.value] = [
        ...menuController.switchIndexList2
      ];
      moduleIconList3[pdfComponentIndex.value] = [
        ...menuController.switchIndexList3
      ];
      moduleWidgetList1[pdfComponentIndex.value] = [
        ...menuController.widgetList
      ];
      moduleWidgetList2[pdfComponentIndex.value] = [
        ...menuController.widgetList2
      ];
      moduleWidgetList3[pdfComponentIndex.value] = [
        ...menuController.widgetList3
      ];
      selectedModule[pdfComponentIndex.value] =
          menuController.getSelectedTouchModule();
      moduleMirrorList[pdfComponentIndex.value] =
          menuController.getSelectedMirrorModule();
      isForUpdate.value = false;
      debugPrint(moduleList1.toString());
      menuController.setAllDefault();
    } else {
      _imageFile = await captureImage();
      widgetImages.add(_imageFile);
      sizeList.add(menuController.getSelectedSize());
      commentsList.add(menuController.commentController.text);
      quantity.add(menuController.quantityController.text);
      //serialNumberList.add(menuController.serialNumberController.text);
      modularPricingList.add(menuController.modulePrising.value);
      colorList.add(menuController.glassColor.value);
      materialList.add(menuController.getSelectedMaterial());
      moduleorpanelList.add(menuController.isModularViewOn.value);
      panelTypeList.add(menuController.isModularViewOn.value
          ? menuController.companyName.value
          : "");
      pdfAutomationList1.add([...menuController.automationList]);
      pdfAutomationList2.add([...menuController.automationList2]);
      pdfAutomationList3.add([...menuController.automationList3]);
      moduleWidgetList1.add([...menuController.widgetList]);
      moduleWidgetList2.add([...menuController.widgetList2]);
      moduleWidgetList3.add([...menuController.widgetList3]);
      moduleList1.add([...menuController.widgetNameList]);
      moduleList2.add([...menuController.widgetNameList2]);
      moduleList3.add([...menuController.widgetNameList3]);
      moduleIconList1.add([...menuController.switchIndexList]);
      moduleIconList2.add([...menuController.switchIndexList2]);
      moduleIconList3.add([...menuController.switchIndexList3]);
      selectedModule.add(menuController.getSelectedTouchModule());
      moduleMirrorList.add(menuController.getSelectedMirrorModule());
      debugPrint(moduleList1.toString());
      menuController.setAllDefault();
    }
  }

  Future<void> updateWidget(index) async {
    ModuleController menuController = Get.put(ModuleController());
    menuController.setAllDefault();
    menuController.setSelectedSize(sizeList[index]);
    menuController.setSelectedMirrorModule(moduleMirrorList[index]);
    menuController.setModules(
        moduleList1[index], moduleList2[index], moduleList3[index]);
    menuController.setWidget(moduleWidgetList1[index], moduleWidgetList2[index],
        moduleWidgetList3[index]);
    menuController.setColor(colorList[index]);
    menuController.setPrising(modularPricingList[index]);
    menuController.setSelectedMaterial(
        materialList[index], moduleorpanelList[index]);
    menuController.setAutomationValue(pdfAutomationList1[index],
        pdfAutomationList2[index], pdfAutomationList3[index]);
    menuController.setSelectedText(quantity[index], commentsList[index]);
  }

  void preViewDialog({required BuildContext context}) {
    Get.defaultDialog(
      title: 'Preview Screen',
      titleStyle: TextStyle(
        color: Theme.of(context).textTheme.bodyText2!.color,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        letterSpacing: 1,
      ),
      titlePadding: const EdgeInsets.all(10),
      content: const WidgetPreViewScreen(),
    );
  }
}
