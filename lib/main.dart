import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:wallet_app/core/commom_widgets/reset_app_widget.dart';
import 'package:wallet_app/core/themes/app_theme.dart';
import 'package:wallet_app/routes/app_pages.dart';
import 'flavors.dart';

FutureOr<void> main() async {
  runApp(
    ResetAppWidget(
      child: GetMaterialApp(
        title: F.title,
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        defaultTransition: Transition.rightToLeft,
        theme: ThemeManager.craeteTheme(AppThemeLight()),
        darkTheme: ThemeManager.craeteTheme(AppThemeLight()),
      ),
    ),
  );
}