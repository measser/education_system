
// --theme-ui-colors-greenExtraLight: #ADEA9E;
// --theme-ui-colors-orange: #FD6F3C;
// --theme-ui-colors-orangeLight: #FF977A;
// --theme-ui-colors-orangeExtraLight: #FFB6A1;
// --theme-ui-colors-orangeExtraExtraLight: #FFCEBD;
// --theme-ui-colors-yellowDark: #A36300;
// --theme-ui-colors-yellow: #FFAE30;
// --theme-ui-colors-yellowLight: #FFC772;
// --theme-ui-colors-yellowExtraLight: #FFD79B;
// --theme-ui-colors-yellowExtraExtraLight: #FFE3B7;
// --theme-ui-colors-purple: #AD6EDD;
// --theme-ui-colors-purpleLight: #C896EA;
// --theme-ui-colors-purpleExtraLight: #D6AFF1;
// --theme-ui-colors-purpleExtraExtraLight: #DFC7F0;
// --theme-ui-colors-teal: #60D2C9;
// --theme-ui-colors-tealLight: #8FDFDA;
// --theme-ui-colors-tealExtraLight: #BBEDED;
// --theme-ui-colors-tealExtraExtraLight: #DDF6F6;
// --theme-ui-colors-licorice: #0C1014;
// --theme-ui-colors-black: #222D39;
// --theme-ui-colors-steel: #2A3440;
// --theme-ui-colors-slate: #3E4854;
// --theme-ui-colors-silver: #8792A1;
// --theme-ui-colors-smokeExtraDark: #AAB5C5;
// --theme-ui-colors-smokeDark: #C3CCD7;
// --theme-ui-colors-smoke: #D5DCE3;
// --theme-ui-colors-snowExtraDark: #E6E9EF;
// --theme-ui-colors-snowDark: #F0F2F6;
// --theme-ui-colors-snow: #F9FAFB;
// --theme-ui-colors-white: #FFFFFF;
// --theme-ui-colors-red: #F95849;
// --theme-ui-colors-redDark: #E65143;
// --theme-ui-colors-twitter: #55acee;
// --theme-ui-colors-facebook: #3b5999;
// --theme-ui-colors-dribbble: #ea4c89;
// --theme-ui-colors-dropbox: #007ee5;
// --theme-ui-colors-google: #dc4e41;
// --theme-ui-colors-instagram: #3f729b;
// --theme-ui-colors-linkedin: #0077b5;
// --theme-ui-colors-pocket: #ef4056;
// --theme-ui-colors-github: #333;
// --theme-ui-colors-youtube: #FF0000;
// --theme-ui-colors-green005: rgba(96, 217, 86, 0.05);
// --theme-ui-colors-green008: rgba(96, 217, 86, 0.08);
import 'package:flutter/material.dart';

class AppColors {
  static const Color marvelDark = Color(0xFF009EEB);
  static const Color marvel = Color(0xFF1FB6FF);
  static const Color marvelLight = Color(0xFF89DCFF);
  static const Color marvelExtraLight = Color(0xFFB7EAFB);
  static const Color greenDark = Color(0xFF44C553);
  static const Color green = Color(0xFF60D956);
  static const Color greenLight = Color(0xFF87DC72);
  static const Color greenExtraLight = Color(0xFFADEA9E);
  static const Color orange = Color(0xFFFD6F3C);
  static const Color orangeLight = Color(0xFFFF977A);
  static const Color orangeExtraLight = Color(0xFFFFB6A1);
  static const Color orangeExtraExtraLight = Color(0xFFFFCEBD);
  static const Color yellowDark = Color(0xFFA36300);
  static const Color yellow = Color(0xFFFFAE30);
  static const Color yellowLight = Color(0xFFFFC772);
  static const Color yellowExtraLight = Color(0xFFFFD79B);
  static const Color yellowExtraExtraLight = Color(0xFFFFE3B7);
  static const Color purple = Color(0xFFAD6EDD);
  static const Color purpleLight = Color(0xFFC896EA);
  static const Color purpleExtraLight = Color(0xFFD6AFF1);
  static const Color purpleExtraExtraLight = Color(0xFFDFC7F0);
  static const Color teal = Color(0xFF60D2C9);
  static const Color tealLight = Color(0xFF8FDFDA);
  static const Color tealExtraLight = Color(0xFFBBEDED);
  static const Color tealExtraExtraLight = Color(0xFFDDF6F6);
  static const Color licorice = Color(0xFF0C1014);
  static const Color black = Color(0xFF222D39);
  static const Color steel = Color(0xFF2A3440);
  static const Color slate = Color(0xFF2A3440);
  static const Color silver = Color(0xFF8792A1);
  static const Color smokeExtraDark = Color(0xFFAAB5C5);
  static const Color smokeDark = Color(0xFFC3CCD7);
  static const Color smoke = Color(0xFFD5DCE3);
  static const Color snowExtraDark = Color(0xFFE6E9EF);
  static const Color snowDark = Color(0xFFF0F2F6);
  static const Color snow = Color(0xFFF9FAFB);
  static const Color white = Color(0xFFFFFFFF);
  static const Color red = Color(0xFFF95849);
  static const Color redDark = Color(0xFFE65143);
  static const Color twitter = Color(0xff55acee);
  static const Color facebook = Color(0xff3b5999);
  static const Color dribbble = Color(0xffea4c89);
  static const Color dropbox = Color(0xff007ee5);
  static const Color google = Color(0xffdc4e41);
  static const Color instagram = Color(0xff3f729b);
  static const Color linkedin = Color(0xff0077b5);
  static const Color pocket = Color(0xffef4056);
  static const Color github = Color(0xFF000333);
  static const Color youtube = Color(0xFFFF0000);
  static const Color ttt = Color(0xFF00FFA3);
  static const Color zzz = Color(0xff04d3cd);
  static const Color green005 = Color.fromRGBO(96, 217, 86, 0.05);
  static const Color green008 = Color.fromRGBO(96, 217, 86, 0.08);
  static MaterialColor primarySwatch = buildMaterialColor(zzz);
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