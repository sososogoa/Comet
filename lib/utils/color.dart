import 'package:flutter/material.dart';

class WtColors {
  WtColors._();

  /// p100 = #4AA9E3
  static const p100 = Color(0xFF4AA9E3);

  /// primary = #4AA9E3
  static final primary = createMaterialColor(fromColor: p100, toColor: Colors.white, isSwatch50: false);
  static Color get l100 => primary.shade100;
  static Color get l200 => primary.shade200;
  static Color get l300 => primary.shade300;
  static Color get l400 => primary.shade400;
  static Color get l500 => primary.shade500;
  static Color get l600 => primary.shade600;
  static Color get l700 => primary.shade700;
  static Color get l800 => primary.shade800;
  static Color get l900 => primary.shade900;

  /// primaryDark = #4AA9E3
  static final primaryDark = createMaterialColor(fromColor: Colors.black, toColor: p100, isSwatch50: false);
  static Color get d100 => primaryDark.shade100;
  static Color get d200 => primaryDark.shade200;
  static Color get d300 => primaryDark.shade300;
  static Color get d400 => primaryDark.shade400;
  static Color get d500 => primaryDark.shade500;
  static Color get d600 => primaryDark.shade600;
  static Color get d700 => primaryDark.shade700;
  static Color get d800 => primaryDark.shade800;
  static Color get d900 => primaryDark.shade900;

  /// black = #000000
  static final black = createMaterialColor(fromColor: Colors.black, toColor: Colors.white);
  static Color get b50 => black.shade50;
  static Color get b100 => black.shade100;
  static Color get b200 => black.shade200;
  static Color get b300 => black.shade300;
  static Color get b400 => black.shade400;
  static Color get b500 => black.shade500;
  static Color get b600 => black.shade600;
  static Color get b700 => black.shade700;
  static Color get b800 => black.shade800;
  static Color get b900 => black.shade900;

  /// white = #FFFFFF
  static const white = Color(0xFFFFFFFF);

  /// 배경색
  /// white모드 : #FFFFFF / rgba(255, 255, 255, 1)
  /// dark모드 : #000000 /rgba(0, 0, 0, 1)
  static const background = Color(0xFFFFFFFF); // dark 모드에서는 어두운 계열색으로 바뀜

  /// gradient 짙은색 - #4C60C5
  static const gradientA = Color(0xFF4C60C5);

  /// gradient 옅은색 - #3E8ED8
  static const gradientB = Color(0xFF3E8ED8);

  /// background - #E9EEF2
  static const h100 = Color(0xFFE9EEF2);

  /// informative - #367ADB
  static const informative = Color(0xFF367ADB);
  static const informativeGa = Color(0xFF367ADB);
  static const informativeGb = Color(0xFF4DA1EF);

  /// negative - #DD4540
  static const negative = Color(0xFFDD4540);
  static const negativeGa = Color(0xFFCC3F3F);
  static const negativeGb = Color(0xFFDD4540);

  /// notice - #F9AE3D
  static const notice = Color(0xFFF9AE3D);
  static const noticeGa = Color(0xFFEE9440);
  static const noticeGb = Color(0xFFF9AE3D);

  /// positive - #33D05F
  static const positive = Color(0xFF33D05F);
  static const positiveGa = Color(0xFF48AC2E);
  static const positiveGb = Color(0xFF61F04A);

  /// #87ABD6
  ///
  /// rgba(135, 171, 214, 1)
  static const x__indigo = Color(0xFF174996);

  /// #15224F
  ///
  /// rgba(21, 34, 79, 1)
  static const x__subBlue = Color(0xFF15224F);

  /// #5F5F5F
  ///
  /// rgba(95, 95, 95, 1)
  static const x__subDark = Color(0xFF5F5F5F);

  /// #FD6B7D
  ///
  /// rgba(245, 107, 63, 1);
  static const x__subRed = Color(0xFFFD6B7D);

  /// #00BBD6
  ///
  /// rgba(0, 187, 214, 1);
  static const x__subCyan = Color(0xFF00BBD6);

  /// #EDF2F9
  ///
  /// rgba(237, 242, 249, 1)
  static const x__subBack = Color(0xFFEDF2F9);

  /// #EDF2F9
  ///
  /// rgba(237, 242, 249, 1)
  static const x__subGreen = Color(0xFF32B13E);

  /// #E02020
  ///
  /// rgba(255, 47, 47, 1)
  static const x__warning = Color(0xFFFF2F2F);

  /// #E74E39
  ///
  /// rgba(231, 78, 57, 1)
  static const x__badge = Color(0xFFE74E39);

  /// #FFFFFF
  ///
  /// rgba(255, 255, 255, 1)
  static const x__white = Color(0xFFFFFFFF); // light, dark mode 두 모드에서 전부 흰색일 경우 - 예) 버튼 텍스트

  /// #2D2D2D
  ///
  /// rgba(45, 45, 45, 1)
  static const x__grey0 = Color(0xFF2D2D2D);

  /// #8F8F8F
  ///
  /// rgba(143, 143, 143, 1)
  static const x__grey1 = Color(0xFF8F8F8F);

  /// #B7B7B7
  ///
  /// rgba(183, 183, 183, 1)
  static const x__grey2 = Color(0xFFB7B7B7);

  /// #D8D8D8
  ///
  /// rgba(216, 216, 216, 1)
  static const x__grey3 = Color(0xFFD8D8D8);

  /// #EFEFEF
  ///
  /// rgba(239, 239, 239, 1)
  static const x__grey4 = Color(0xFFEFEFEF);

  /// #F8F8F8
  ///
  /// rgba(248, 248, 248, 1)
  static const x__grey5 = Color(0xFFF8F8F8);

  /// #0084FF
  ///
  /// rgba(0, 132, 255, 1)
  static const x__link = Color(0xFF0084FF);

  /// #907BAA
  ///
  /// rgba(144, 123, 170, 1)
  static const x__fabs = Color(0xFF907BAA);

  /// #469C51
  ///
  /// rgba(70, 156, 81, 1)
  static const x__join = Color(0xFF24D626);

  /// #F1F4FD
  ///
  /// rgba(207, 229, 255, 1)
  static const x__bubble = Color(0xFFF1F4FD);

  /// #FCE9E9
  ///
  /// rgba(252, 233, 233, 1)
  static const x__etc1 = Color(0xFFFCE9E9);

  /// #E9F8EF
  ///
  /// rgba(233, 248, 239, 1)
  static const x__etc2 = Color(0xFFE9F8EF);

  /// #7FDA4A
  ///
  /// rgba(127, 218, 74, 1)
  static const x__right = Color(0xFF7FDA4A);

  /// #4D4E4D
  static const x__crackManagement = Color(0xFF4D4E4D);

  /// #7E3D84
  static const x__fieldSurvey = Color(0xFF7E3D84);

  /// #3D8473
  static const x__buildingManagement = Color(0xFF3D8473);

  /// #84533D
  static const x__etcManagement = Color(0xFF84533D);
}

MaterialColor createMaterialColor({required Color toColor, required Color fromColor, bool isSwatch50 = true}) {
  List<double> strengths = [if (isSwatch50) .05, .1, .2, .3, .4, .5, .6, .7, .8, .9];
  Map<int, Color> swatch = <int, Color>{};

  for (var strength in strengths) {
    swatch[(strength * 1000).round()] = Color.lerp(toColor, fromColor, strength)!;
  }
  return MaterialColor(fromColor.value, swatch);
}
