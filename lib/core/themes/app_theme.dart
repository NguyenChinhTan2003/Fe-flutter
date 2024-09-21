import 'package:flutter/material.dart';
import 'package:wallet_app/core/themes/colors/color_Theme.dart';
import 'package:wallet_app/core/themes/colors/kinds/dark_color.dart';
import 'package:wallet_app/core/themes/colors/kinds/light_color.dart';
import 'package:wallet_app/core/themes/texts/kinds/dark_text.dart';
import 'package:wallet_app/core/themes/texts/kinds/light_text.dart';
import 'package:wallet_app/core/themes/texts/text_theme.dart';
//import 'package:dynamic_color/dynamic_color.dart';

abstract class ITheme {
  ITextTheme get textTheme;
  IColorTheme get colors;
}

abstract class ThemeManager {
  static ThemeData craeteTheme(ITheme theme) => ThemeData(
      useMaterial3: true,
      fontFamily: theme.textTheme.fontFamily,
      textTheme: theme.textTheme.data,
      cardColor: theme.colors.colorScheme?.onSecondary,
      tabBarTheme: TabBarTheme(
        indicator: const BoxDecoration(),
        labelColor: theme.colors.tabbarSelectedColor,
        unselectedLabelColor: theme.colors.tabbarNormalColor,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          foregroundColor: theme.colors.colorScheme?.primary,
          backgroundColor: theme.colors.colorScheme?.onPrimary),
      appBarTheme: AppBarTheme(backgroundColor: theme.colors.appBarColor),
      scaffoldBackgroundColor: theme.colors.scaffoldBackgroundColor,
      colorScheme: theme.colors.colorScheme,
      // extensions: [theme.colors.customColors!.harmonized(theme.colors.colorScheme!.harmonized())]
      );
}

class AppThemeDark extends ITheme {
  @override
  late final ITextTheme textTheme;
  AppThemeDark() {
    textTheme = TextThemeDark(colors.customColors!.textCustomColor);
  }

  @override
  IColorTheme get colors => DarkColors();
}

class AppThemeLight extends ITheme {
  @override
  late final ITextTheme textTheme;

  AppThemeLight() {
    textTheme = TextThemeLight(colors.customColors!.textCustomColor);
  }

  @override
  IColorTheme get colors => LightColors();
}