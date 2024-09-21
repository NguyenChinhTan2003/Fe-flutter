import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/core/values/app_icon_type.dart';

class AppIconHelper {
  static IconData getIcon(String iconName, String typeName) {
    try {
      switch (typeName) {
        case AppIconType.awesome:
          return fontAwesomeIcons[iconName]!;
        default:
          return fontAwesomeIcons["fas-exclamation"]!;
      }
    } catch (ex) {
      return fontAwesomeIcons["fas-exclamation"]!;
    }
  }
}