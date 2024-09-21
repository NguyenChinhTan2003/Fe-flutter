import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabbarController extends GetxController with GetSingleTickerProviderStateMixin {
  final List<Tab> tabs = <Tab>[
    const Tab(text: 'Income'),
    const Tab(text: 'Expenses'),
  ];
  
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}