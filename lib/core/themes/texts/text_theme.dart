import 'package:flutter/material.dart';

abstract class ITextTheme {
  final Color? primaryColor;
  late final TextTheme data;
  String? fontFamily;

  ITextTheme(this.primaryColor);
}