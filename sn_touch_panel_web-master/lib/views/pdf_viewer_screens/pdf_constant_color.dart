import 'package:pdf/pdf.dart';

List<PdfColor> whiteTouchGradient = [
  PdfColors.white,
  PdfColors.white,
];

List<PdfColor> blackTouchGradient = [
  // PdfColors.black,
  const PdfColor(0, 0, 0),
  const PdfColor(0, 0, 0),
];

PdfColor pdfGreyIconColor = const PdfColor.fromInt(0xFFC5C6C6);
PdfColor pdfBackgroundColor = const PdfColor.fromInt(0xFFEDEEF2);

List<PdfColor> greyTouchGradient = [
  const PdfColor.fromInt(0xFF9C9A8D),
  const PdfColor.fromInt(0xFF9C9A8D),
];
