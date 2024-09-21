import 'package:flutter/material.dart';
import 'package:wallet_app/core/values/app_font.dart';

import '../text_theme.dart';

class TextThemeLight implements ITextTheme {
  @override
  late final TextTheme data;

  @override
  final Color? primaryColor;

  TextThemeLight(this.primaryColor) {
    data = TextTheme(
      headlineLarge: TextStyle(
          fontSize: 20,
          fontFamily: AppFonts.medium,
          height: 26 / 20,
          color: primaryColor),
      headlineMedium: TextStyle(
          fontSize: 18,
          fontFamily: AppFonts.medium,
          height: 24 / 18,
          color: primaryColor),
      headlineSmall: TextStyle(
          fontSize: 16,
          fontFamily: AppFonts.medium,
          height: 22 / 16,
          color: primaryColor),
      titleLarge: TextStyle(
          fontSize: 18,
          fontFamily: AppFonts.medium,
          height: 24 / 18,
          color: primaryColor),
      titleMedium: TextStyle(
          fontSize: 15,
          fontFamily: AppFonts.medium,
          height: 20 / 15,
          color: primaryColor),
      titleSmall: TextStyle(
          fontSize: 13,
          fontFamily: AppFonts.medium,
          height: 18 / 13,
          color: primaryColor),
      bodyLarge: TextStyle(
          fontSize: 13,
          fontFamily: AppFonts.medium,
          height: 18 / 13,
          color: primaryColor),
      bodyMedium: TextStyle(
          fontSize: 12,
          fontFamily: AppFonts.medium,
          height: 16 / 12,
          color: primaryColor),
      bodySmall: TextStyle(
          fontSize: 8,
          fontFamily: AppFonts.medium,
          height: 12 / 8,
          color: primaryColor),
    ).apply(bodyColor: primaryColor);
    fontFamily = AppFonts.medium;
  }

  @override
  String? fontFamily;
}
