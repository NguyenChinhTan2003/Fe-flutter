import 'package:flutter/material.dart';
import 'package:wallet_app/core/utils/app_icon_helper.dart';

abstract class CustomIcon extends StatelessWidget {
  const CustomIcon(
      {super.key,
      this.color,
      required this.iconName,
      required this.iconType,
      required this.size});
  final Color? color;
  final String iconName;
  final String iconType;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Icon(
      AppIconHelper.getIcon(iconName, iconType),
      color: color,
      size: size,
    );
  }
}