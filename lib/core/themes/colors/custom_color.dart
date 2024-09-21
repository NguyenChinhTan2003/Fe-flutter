import 'package:flutter/material.dart';

const textCustomColor = Color(0xFF8190AD);
const onFourthCustomColor = Color(0xFF039855);
const backgroundMenuColor = Color(0xFFDBE5F4);
const onBackgroundMenuColor = Color(0xFF101828);
const secondaryButonHoverColor = Color(0xFFFF213A);
const primaryButtonColor = Color(0xFFFFFFFF);
const primaryButtonHoverColor = Color(0xFFF1F4FA);

/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors(
      {required this.textCustomColor,
      required this.onFourthCustomColor,
      required this.backgroundMenuColor,
      required this.onBackgroundMenuColor,
      required this.secondaryButonHoverColor,
      required this.primaryButtonColor,
      required this.primaryButtonHoverColor,
      required this.backgroundLableTableColor});

  final Color? textCustomColor;
  final Color? onFourthCustomColor;
  final Color? backgroundMenuColor;
  final Color? onBackgroundMenuColor;
  final Color? secondaryButonHoverColor;
  final Color? primaryButtonColor;
  final Color? primaryButtonHoverColor;
  final Color? backgroundLableTableColor;
  @override
  CustomColors copyWith(
      {Color? textCustomColor,
      Color? onFourthCustomColor,
      Color? backgroundMenuColor,
      Color? onBackgroundMenuColor,
      Color? secondaryButonHoverColor,
      Color? primaryButtonColor,
      Color? primaryButtonHoverColor,
      Color? backgroundLableTableColor}) {
    return CustomColors(
        textCustomColor: textCustomColor ?? this.textCustomColor,
        onFourthCustomColor: onFourthCustomColor ?? this.onFourthCustomColor,
        backgroundMenuColor: backgroundMenuColor ?? this.backgroundMenuColor,
        onBackgroundMenuColor:
            onBackgroundMenuColor ?? this.onBackgroundMenuColor,
        secondaryButonHoverColor:
            secondaryButonHoverColor ?? this.secondaryButonHoverColor,
        primaryButtonColor: primaryButtonColor ?? this.primaryButtonColor,
        primaryButtonHoverColor:
            primaryButtonHoverColor ?? this.primaryButtonHoverColor,
        backgroundLableTableColor:
            backgroundLableTableColor ?? this.backgroundLableTableColor);
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
        textCustomColor: Color.lerp(textCustomColor, other.textCustomColor, t),
        onFourthCustomColor:
            Color.lerp(onFourthCustomColor, other.onFourthCustomColor, t),
        backgroundMenuColor:
            Color.lerp(backgroundMenuColor, other.backgroundMenuColor, t),
        onBackgroundMenuColor:
            Color.lerp(onBackgroundMenuColor, other.onBackgroundMenuColor, t),
        secondaryButonHoverColor: Color.lerp(
            secondaryButonHoverColor, other.secondaryButonHoverColor, t),
        primaryButtonColor:
            Color.lerp(primaryButtonColor, other.primaryButtonColor, t),
        primaryButtonHoverColor: Color.lerp(
            primaryButtonHoverColor, other.primaryButtonHoverColor, t),
        backgroundLableTableColor: Color.lerp(
            backgroundLableTableColor, other.backgroundLableTableColor, t));
  }

  /// Returns an instance of [CustomColors] in which the following custom
  /// colors are harmonized with [dynamic]'s [ColorScheme.primary].
  ///
  /// See also:
  ///   * <https://m3.material.io/styles/color/the-color-system/custom-colors#harmonization>
  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith();
  }
}