import 'package:flutter/material.dart';

class AppColors {
  static MaterialColor primarySwatch = buildMaterialColor(primary);
  static const Color primary = Color(0xFFFC6011);
  static const Color primaryFontColor = Color(0xFF4A4B4D);
  static const Color secondaryFontColor = Color(0xFF7C7D7E);
  static const Color placeHolderColor = Color(0xFFB6B7B7);
  static const Color textFieldColor = Color(0xFFF2F2F2);
  static const Color hint = Colors.grey;
}

MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}