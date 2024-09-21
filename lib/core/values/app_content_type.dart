import 'package:flutter/material.dart';

@immutable
abstract class AppContentType {
  static const String typeDefault = "TYPE_DEFAULT";
  static const String typeBool = "TYPE_BOOL";
  static const String typePhone = "TYPE_PHONE";
  static const String typeAmount = "TYPE_AMOUNT";
}