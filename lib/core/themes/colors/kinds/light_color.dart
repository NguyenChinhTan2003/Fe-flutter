import 'package:flutter/material.dart';
import 'package:wallet_app/core/themes/colors/color_Theme.dart';
import 'package:wallet_app/core/values/app_color.dart';
import 'package:wallet_app/core/themes/colors/custom_color.dart';

class LightColors implements IColorTheme {
  @override
  final AppColors colors = AppColors();

  @override
  ColorScheme? colorScheme = const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFFFFFFFF),
    onPrimary: Color(0xFF381E72),
    primaryContainer: Color(0xFF4F378B),
    onPrimaryContainer: Color(0xFFEADDFF),
    secondary: Color(0xFFCCC2DC),
    onSecondary: Color(0xFF2b405b),
    secondaryContainer: Color(0xFF4A4458),
    onSecondaryContainer: Color(0xFFE8DEF8),
    tertiary: Color(0xFFa1b2c8),
    onTertiary: Color(0xFF492532),
    tertiaryContainer: Color(0xFF633B48),
    onTertiaryContainer: Color(0xFFFFD8E4),
    error: Color(0xFFF2B8B5),
    onError: Color(0xFF601410),
    errorContainer: Color(0xFF8C1D18),
    onErrorContainer: Color(0xFFF9DEDC),
    outline: Color(0xFF938F99),
    background: Color(0xFFf3f4f6),
    onBackground: Color(0xFFE6E1E5),
    surface: Color(0xFF1C1B1F),
    onSurface: Color(0xFF9E9E9E),
    surfaceVariant: Color(0xFF49454F),
    onSurfaceVariant: Color(0xFF03F0C5),
    inverseSurface: Color(0xFF8103E2),
    onInverseSurface: Color(0xFFFE0202),
    inversePrimary: Color(0xFF03EB35),
    shadow: Color(0xFF000000),
    surfaceTint: Color.fromARGB(255, 250, 246, 3),
    outlineVariant: Color(0xFF49454F),
    scrim: Color(0xFF000000),
  );

  @override
  Color? appBarColor;

  @override
  Color? scaffoldBackgroundColor;

  @override
  Color? tabBarColor;

  @override
  Color? tabbarNormalColor;

  @override
  Color? tabbarSelectedColor;

  @override
  CustomColors? customColors = const CustomColors(
      textCustomColor: Color(0xFF2b405b),
      onFourthCustomColor: Color(0xFF039855),
      backgroundMenuColor: Color(0xFFDBE5F4),
      onBackgroundMenuColor: Color(0xFF101828),
      secondaryButonHoverColor: Color(0xFFFF213A),
      primaryButtonColor: Color(0xFFFFFFFF),
      primaryButtonHoverColor: Color(0xFFF1F4FA),
      backgroundLableTableColor: Color(0xFFF1F4FA));

  LightColors() {
    appBarColor = colors.white;
    scaffoldBackgroundColor = colors.white;
    tabBarColor = colors.grey400;
    tabbarNormalColor = colors.grey200;
    tabbarSelectedColor = colors.error600;
    brightness = Brightness.light;
  }

  @override
  Brightness? brightness;
}
