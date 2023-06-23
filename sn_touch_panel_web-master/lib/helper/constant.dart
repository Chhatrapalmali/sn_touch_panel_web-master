import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

// switchIcon
List<Uint8List> pdfSwitchIconBlack = [];
List<Uint8List> pdfSwitchIconGrey = [];
List<Uint8List> pdfSwitchIconWhite = [];

// arrow up/down list
List<Uint8List> pdfArrowUpDownBlack = [];
List<Uint8List> pdfArrowUpDownWhite = [];
List<Uint8List> pdfArrowUpDownGrey = [];

// arrow up/down list
List<Uint8List> pdfSocketBlack = [];
List<Uint8List> pdfSocketWhite = [];
List<Uint8List> pdfSocketGrey = [];

List<dynamic> switchIconBlack = [
  'assets/images/not-allowed-black.png', //0
  'assets/images/BB1.png', // default bulb icon//1
  'assets/images/D1.png', //2
  'assets/images/A.png', //3
  'assets/images/B.png', //4
  'assets/images/E.png', //5
  'assets/images/F.png', //6
  'assets/images/G.png', //7
  'assets/images/H.png', //8
  'assets/images/I.png', //9
  'assets/images/J.png', //10
  'assets/images/K.png', //11
  'assets/images/L.png', //12
  'assets/images/M.png', //13
  'assets/images/N.png', //14
  'assets/images/O.png', //15
  'assets/images/P.png', //16
  'assets/images/Q.png', //17
  'assets/images/R.png', //18
  'assets/images/S.png', //19
  'assets/images/T.png', //20
  'assets/images/U.png', //21
  'assets/images/V.png', //22
  'assets/images/W.png', //23
  'assets/images/X.png', //24
  'assets/images/Y.png', //25
  'assets/images/A1.png', //26
  'assets/images/AA1.png', //27
  'assets/images/AB1.png', //28
  'assets/images/AC1.png', //29
  'assets/images/AD1.png', //30
  'assets/images/AE1.png', //31
  'assets/images/AF1.png', //32
  'assets/images/AG1.png', //33
  'assets/images/AH1.png', // socket1//34
  'assets/images/AI1.png', //35
  'assets/images/AJ1.png', //36
  'assets/images/AK1.png', //37
  'assets/images/AL1.png', //38
  'assets/images/AM1.png', //39
  'assets/images/AN1.png', //40
  'assets/images/AO1.png', //41
  'assets/images/AP1.png', //42
  'assets/images/AQ1.png', //43
  'assets/images/AR1.png', //44
  'assets/images/AS1.png', //45
  'assets/images/AT1.png', //46
  'assets/images/AU1.png', //47
  'assets/images/AV1.png', //48
  'assets/images/AW1.png', //49
  'assets/images/AX1.png', //50
  'assets/images/AY1.png', //51
  'assets/images/AZ1.png', // socket2//52
  'assets/images/B1.png', //53
  'assets/images/BA1.png', //54
  'assets/images/BC1.png', //55
  'assets/images/BD1.png', //56
  'assets/images/BE1.png', //57
  'assets/images/BF1.png', //58
  'assets/images/BG1.png', //59
  'assets/images/BH1.png', //60
  'assets/images/BI1.png', //61
  'assets/images/BJ1.png', //62
  'assets/images/BK1.png', //63
  'assets/images/BL1.png', //64
  'assets/images/BM1.png', //65
  'assets/images/BN1.png', //66
  'assets/images/BO1.png', //67
  'assets/images/BP1.png', //68
  'assets/images/BQ1.png', //69
  'assets/images/BR1.png', //70
  'assets/images/BS1.png', //71
  'assets/images/BT1.png', //72
  'assets/images/BU1.png', //73
  'assets/images/BV1.png', //74
  'assets/images/BW1.png', //75
  'assets/images/BX1.png', //76
  'assets/images/BY1.png', //77
  'assets/images/BZ1.png', //78
  'assets/images/C1.png', //79
  'assets/images/CA1.png', //80
  'assets/images/CB1.png', //81
  'assets/images/CC1.png', //82
  'assets/images/CD1.png', //83
  'assets/images/CE1.png', //84
  'assets/images/CF1.png', //85
  'assets/images/CG1.png', //86
  'assets/images/CI1.png', //87
  'assets/images/CJ1.png', //88
  'assets/images/E1.png', //89
  'assets/images/F1.png', //90
  'assets/images/G1.png', //91
  'assets/images/H1.png', //92
  'assets/images/I1.png', //93
  'assets/images/J1.png', //94
  'assets/images/K1.png', //95
  'assets/images/L1.png', //96
  'assets/images/M1.png', //97
  'assets/images/N1.png', //98
  'assets/images/O1.png', //99
  'assets/images/P1.png', //100
  'assets/images/Q1.png', //101
  'assets/images/R1.png', //102
  'assets/images/S1.png', //103
  'assets/images/T1.png', //104
  'assets/images/U1.png', //105
  'assets/images/V1.png', //106
  'assets/images/W1.png', //107
  'assets/images/X1.png', //108
  'assets/images/Y1.png', // socket3//109
  'assets/images/Z1.png', //110
  'assets/images/fan.png', //111
  'assets/images/1.png', //112
  'assets/images/2.png', //113
  'assets/images/3.png', //114
  'assets/images/4.png', //115
  'assets/images/5.png', //116
  'assets/images/6.png', //117
  'assets/images/7.png', //118
  'assets/images/wall_lamp.png', //119
  'assets/images/wall_lamp_2.png', //120
  'assets/images/extra.png', //121
  'assets/images/microwave.png', //122
  'assets/images/slot_IR.png', //123
];

List<List<dynamic>> fanIcons = [
  ['assets/images/C1.png', 79],
  ['assets/images/AG1.png', 33],
  ['assets/images/AS1.png', 45],
  ['assets/images/fan.png', 111]
];
List<List<dynamic>> lightIcons = [
  ['assets/images/BB1.png', 1],
  ['assets/images/T1.png', 104],
  ['assets/images/W1.png', 107],
  ['assets/images/X1.png', 108],
  ['assets/images/R1.png', 102],
  ['assets/images/I1.png', 93],
  ['assets/images/K1.png', 95],
  ['assets/images/L.png', 12],
  ['assets/images/V1.png', 106],
  ['assets/images/AT1.png', 46],
  ['assets/images/AE1.png', 31],
  ['assets/images/AR1.png', 44],
  ['assets/images/M.png', 13],
  ['assets/images/AW1.png', 49],
  ['assets/images/AX1.png', 50],
  ['assets/images/AA1.png', 27],
  ['assets/images/AJ1.png', 36],
  ['assets/images/AK1.png', 37],
  ['assets/images/1.png', 112],
  ['assets/images/2.png', 113],
  ['assets/images/4.png', 115],
  ['assets/images/5.png', 116],
  ['assets/images/6.png', 117],
  ['assets/images/7.png', 118],
  ['assets/images/wall_lamp.png', 119],
  ['assets/images/wall_lamp_2.png', 120]
];
List<List<dynamic>> socketIcons = [
  ['assets/images/AV1.png', 48],
  ['assets/images/AZ1.png', 52],
  ['assets/images/AH1.png', 34],
  ['assets/images/AO1.png', 41],
  ['assets/images/Y1.png', 109],
];
List<List<dynamic>> appliancesIcons = [
  ['assets/images/B1.png', 53],
  ['assets/images/AF1.png', 32],
  ['assets/images/Z1.png', 110],
  ['assets/images/AU1.png', 47],
  ['assets/images/J1.png', 94],
  ['assets/images/AM1.png', 39],
  ['assets/images/AI1.png', 35],
  ['assets/images/AL1.png', 38],
  ['assets/images/H1.png', 92],
  ['assets/images/F1.png', 90],
  ['assets/images/AB1.png', 28],
  ['assets/images/A1.png', 26],
  ['assets/images/3.png', 114],
  ['assets/images/microwave.png', 122]
];
List<List<dynamic>> powerIcons = [
  ['assets/images/S1.png', 103],
  ['assets/images/AQ1.png', 43],
  ['assets/images/AY1.png', 51],
];
List<List<dynamic>> doorIcons = [
  ['assets/images/CG1.png', 86],
  ['assets/images/CI1.png', 87],
  ['assets/images/CJ1.png', 88],
  ['assets/images/BD1.png', 56],
  ['assets/images/BE1.png', 57],
  ['assets/images/BG1.png', 59],
  ['assets/images/BH1.png', 60],
  ['assets/images/BI1.png', 61],
  ['assets/images/W.png', 23],
  ['assets/images/X.png', 24],
];
List<List<dynamic>> scenesIcons = [
  ['assets/images/E1.png', 89],
  ['assets/images/O1.png', 99],
  ['assets/images/BC1.png', 55],
  ['assets/images/P1.png', 100],
  ['assets/images/M1.png', 97],
  ['assets/images/AC1.png', 29],
  ['assets/images/N1.png', 98],
  ['assets/images/G1.png', 91],
  ['assets/images/AD1.png', 30],
  ['assets/images/U1.png', 105],
  ['assets/images/V.png', 22],
  ['assets/images/Q1.png', 101],
  ['assets/images/Q.png', 17],
  ['assets/images/BO1.png', 67],
  ['assets/images/BN1.png', 66],
  ['assets/images/BP1.png', 68],
  ['assets/images/BJ1.png', 62],
  ['assets/images/BL1.png', 64],
  ['assets/images/A.png', 3],
  ['assets/images/BM1.png', 65],
  ['assets/images/BK1.png', 63],
  ['assets/images/L1.png', 96],
  ['assets/images/BF1.png', 58],
  ['assets/images/BQ1.png', 69],
  ['assets/images/BT1.png', 72],
  ['assets/images/BS1.png', 71],
  ['assets/images/BR1.png', 70],
  ['assets/images/BX1.png', 76],
  ['assets/images/BW1.png', 75],
  ['assets/images/BV1.png', 74],
  ['assets/images/BU1.png', 73],
];
List<List<dynamic>> numberIcons = [
  ['assets/images/CD1.png', 83],
  ['assets/images/CE1.png', 84],
  ['assets/images/CF1.png', 85],
  ['assets/images/CC1.png', 82],
  ['assets/images/BZ1.png', 78],
  ['assets/images/CA1.png', 80],
  ['assets/images/CB1.png', 81],
  ['assets/images/BY1.png', 77],
  ['assets/images/B.png', 4],
  ['assets/images/BA1.png', 54],
  ['assets/images/D1.png', 2],
];
List<List<dynamic>> otherIcons = [
  ['assets/images/not-allowed-black.png', 0],
  ['assets/images/P.png', 16],
  ['assets/images/S.png', 19],
  ['assets/images/T.png', 20],
  ['assets/images/U.png', 21],
  ['assets/images/Y.png', 25],
  ['assets/images/N.png', 14],
  ['assets/images/O.png', 15],
  ['assets/images/R.png', 18],
  ['assets/images/AN1.png', 40],
  ['assets/images/F.png', 6],
  ['assets/images/G.png', 7],
  ['assets/images/H.png', 8],
  ['assets/images/I.png', 9],
  ['assets/images/J.png', 10],
  ['assets/images/K.png', 11],
  ['assets/images/extra.png', 121],
];

List<dynamic> switchIconWhite = [
  'assets/images/not-allowed-white.png',
  'assets/images/BB2.png', // default bulb icon
  'assets/images/D2.png',
  'assets/images/AA.png',
  'assets/images/BB.png',
  'assets/images/EE.png',
  'assets/images/FF.png',
  'assets/images/GG.png',
  'assets/images/HH.png',
  'assets/images/II.png',
  'assets/images/JJ.png',
  'assets/images/KK.png',
  'assets/images/LL.png',
  'assets/images/MM.png',
  'assets/images/NN.png',
  'assets/images/OO.png',
  'assets/images/PP.png',
  'assets/images/QQ.png',
  'assets/images/RR.png',
  'assets/images/SS.png',
  'assets/images/TT.png',
  'assets/images/UU.png',
  'assets/images/VV.png',
  'assets/images/WW.png',
  'assets/images/XX.png',
  'assets/images/YY.png',
  'assets/images/A2.png',
  'assets/images/AA2.png',
  'assets/images/AB2.png',
  'assets/images/AC2.png',
  'assets/images/AD2.png',
  'assets/images/AE2.png',
  'assets/images/AF2.png',
  'assets/images/AG2.png',
  'assets/images/AH2.png', // socket1
  'assets/images/AI2.png',
  'assets/images/AJ2.png',
  'assets/images/AK2.png',
  'assets/images/AL2.png',
  'assets/images/AM2.png',
  'assets/images/AN2.png',
  'assets/images/AO2.png',
  'assets/images/AP2.png',
  'assets/images/AQ2.png',
  'assets/images/AR2.png',
  'assets/images/AS2.png',
  'assets/images/AT2.png',
  'assets/images/AU2.png',
  'assets/images/AV2.png',
  'assets/images/AW2.png',
  'assets/images/AX2.png',
  'assets/images/AY2.png',
  'assets/images/AZ2.png', // socket2
  'assets/images/B2.png',
  'assets/images/BA2.png',
  'assets/images/BC2.png',
  'assets/images/BD2.png',
  'assets/images/BE2.png',
  'assets/images/BF2.png',
  'assets/images/BG2.png',
  'assets/images/BH2.png',
  'assets/images/BI2.png',
  'assets/images/BJ2.png',
  'assets/images/BK2.png',
  'assets/images/BL2.png',
  'assets/images/BM2.png',
  'assets/images/BN2.png',
  'assets/images/BO2.png',
  'assets/images/BP2.png',
  'assets/images/BQ2.png',
  'assets/images/BR2.png',
  'assets/images/BS2.png',
  'assets/images/BT2.png',
  'assets/images/BU2.png',
  'assets/images/BV2.png',
  'assets/images/BW2.png',
  'assets/images/BX2.png',
  'assets/images/BY2.png',
  'assets/images/BZ2.png',
  'assets/images/C2.png',
  'assets/images/CA2.png',
  'assets/images/CB2.png',
  'assets/images/CC2.png',
  'assets/images/CD2.png',
  'assets/images/CE2.png',
  'assets/images/CF2.png',
  'assets/images/CG2.png',
  'assets/images/CI2.png',
  'assets/images/CJ2.png',
  'assets/images/E2.png',
  'assets/images/F2.png',
  'assets/images/G2.png',
  'assets/images/H2.png',
  'assets/images/I2.png',
  'assets/images/J2.png',
  'assets/images/K2.png',
  'assets/images/L2.png',
  'assets/images/M2.png',
  'assets/images/N2.png',
  'assets/images/O2.png',
  'assets/images/P2.png',
  'assets/images/Q2.png',
  'assets/images/R2.png',
  'assets/images/S2.png',
  'assets/images/T2.png',
  'assets/images/U2.png',
  'assets/images/V2.png',
  'assets/images/W2.png',
  'assets/images/X2.png',
  'assets/images/Y2.png', // socket3
  'assets/images/Z2.png',
  'assets/images/fan_w.png',
];

List<dynamic> switchIconGrey = [
  'assets/images/not-allowed-grey.png',
  'assets/images/BB3.png', // default bulb icon
  'assets/images/D3.png',
  'assets/images/AAA.png',
  'assets/images/BBB.png',
  'assets/images/EEE.png',
  'assets/images/FFF.png',
  'assets/images/GGG.png',
  'assets/images/HHH.png',
  'assets/images/III.png',
  'assets/images/JJJ.png',
  'assets/images/KKK.png',
  'assets/images/LLL.png',
  'assets/images/MMM.png',
  'assets/images/NNN.png',
  'assets/images/OOO.png',
  'assets/images/PPP.png',
  'assets/images/QQQ.png',
  'assets/images/RRR.png',
  'assets/images/SSS.png',
  'assets/images/TTT.png',
  'assets/images/UUU.png',
  'assets/images/VVV.png',
  'assets/images/WWW.png',
  'assets/images/XXX.png',
  'assets/images/YYY.png',
  'assets/images/A3.png',
  'assets/images/AA3.png',
  'assets/images/AB3.png',
  'assets/images/AC3.png',
  'assets/images/AD3.png',
  'assets/images/AE3.png',
  'assets/images/AF3.png',
  'assets/images/AG3.png',
  'assets/images/AH3.png', // socket1
  'assets/images/AI3.png',
  'assets/images/AJ3.png',
  'assets/images/AK3.png',
  'assets/images/AL3.png',
  'assets/images/AM3.png',
  'assets/images/AN3.png',
  'assets/images/AO3.png',
  'assets/images/AP3.png',
  'assets/images/AQ3.png',
  'assets/images/AR3.png',
  'assets/images/AS3.png',
  'assets/images/AT3.png',
  'assets/images/AU3.png',
  'assets/images/AV3.png',
  'assets/images/AW3.png',
  'assets/images/AX3.png',
  'assets/images/AY3.png',
  'assets/images/AZ3.png', // socket3
  'assets/images/B3.png',
  'assets/images/BA3.png',
  'assets/images/BC3.png',
  'assets/images/BD3.png',
  'assets/images/BE3.png',
  'assets/images/BF3.png',
  'assets/images/BG3.png',
  'assets/images/BH3.png',
  'assets/images/BI3.png',
  'assets/images/BJ3.png',
  'assets/images/BK3.png',
  'assets/images/BL3.png',
  'assets/images/BM3.png',
  'assets/images/BN3.png',
  'assets/images/BO3.png',
  'assets/images/BP3.png',
  'assets/images/BQ3.png',
  'assets/images/BR3.png',
  'assets/images/BS3.png',
  'assets/images/BT3.png',
  'assets/images/BU3.png',
  'assets/images/BV3.png',
  'assets/images/BW3.png',
  'assets/images/BX3.png',
  'assets/images/BY3.png',
  'assets/images/BZ3.png',
  'assets/images/C3.png',
  'assets/images/CA3.png',
  'assets/images/CB3.png',
  'assets/images/CC3.png',
  'assets/images/CD3.png',
  'assets/images/CE3.png',
  'assets/images/CF3.png',
  'assets/images/CG3.png',
  'assets/images/CI3.png',
  'assets/images/CJ3.png',
  'assets/images/E3.png',
  'assets/images/F3.png',
  'assets/images/G3.png',
  'assets/images/H3.png',
  'assets/images/I3.png',
  'assets/images/J3.png',
  'assets/images/K3.png',
  'assets/images/L3.png',
  'assets/images/M3.png',
  'assets/images/N3.png',
  'assets/images/O3.png',
  'assets/images/P3.png',
  'assets/images/Q3.png',
  'assets/images/R3.png',
  'assets/images/S3.png',
  'assets/images/T3.png',
  'assets/images/U3.png',
  'assets/images/V3.png',
  'assets/images/W3.png',
  'assets/images/X3.png',
  'assets/images/Y3.png', // socket3
  'assets/images/Z3.png',
  'assets/images/fan_g.png',
];

List<dynamic> dimmerUpDownBlack = [
  'assets/images/up1.png',
  'assets/images/down1.png',
];

List<dynamic> dimmerUpDownWhite = [
  'assets/images/up2.png',
  'assets/images/down2.png',
];

List<dynamic> dimmerUpDownGrey = [
  'assets/images/up3.png',
  'assets/images/down3.png',
];

List<dynamic> socketBlack = [
  'assets/images/AH1.png',
  'assets/images/AZ1.png',
  'assets/images/Y1.png',
  'assets/images/usb_b.png',
  'assets/images/lan-black.png',
  'assets/images/external_1M.png',
];

List<dynamic> socketWhite = [
  'assets/images/AH2.png',
  'assets/images/AZ2.png',
  'assets/images/Y2.png',
  'assets/images/usb_w.png',
  'assets/images/lan-grey.png',
  'assets/images/external_1M.png',
];

List<dynamic> socketGrey = [
  'assets/images/AH3.png',
  'assets/images/AZ3.png',
  'assets/images/Y3.png',
  'assets/images/usb_b.png',
  'assets/images/lan-black.png',
  'assets/images/external_1M.png',
];

Widget dimmerCircle(
    {required double width,
    required double height,
    required double radius,
    required PdfColor selectedColor}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: selectedColor,
      borderRadius: BorderRadius.circular(radius),
    ),
  );
}
