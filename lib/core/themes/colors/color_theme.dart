import 'package:flutter/material.dart';
import 'package:wallet_app/core/themes/colors/custom_color.dart';
import 'package:wallet_app/core/values/app_color.dart';

abstract class IColorTheme {
  AppColors get colors;
  Color? scaffoldBackgroundColor;
  Color? appBarColor;
  Color? tabBarColor;
  Color? tabbarSelectedColor;
  Color? tabbarNormalColor;
  Brightness? brightness;
  ColorScheme? colorScheme;
  CustomColors? customColors;
}