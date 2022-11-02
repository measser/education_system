import 'package:flutter/material.dart';

import '../../colors.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
  foregroundColor: Colors.white,
  ),
  fontFamily: 'Poppins',
  listTileTheme: const ListTileThemeData(
  textColor: Colors.black,
  ),
  iconTheme: const IconThemeData(
  color: Colors.white,
  ),
  primarySwatch: AppColors.primarySwatch,
  );
}