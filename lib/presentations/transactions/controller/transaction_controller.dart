import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransactionController extends GetxController with GetSingleTickerProviderStateMixin{
  final List<Tab> tabs = <Tab>[
    const Tab(text: 'Income'),
    const Tab(text: 'Expenses'),
  ];

  late TabController tabController;

  @override
  Future<void> onInit() async {

    super.onInit();
    tabController = TabController(vsync: this, length: tabs.length);
  }
  

}
