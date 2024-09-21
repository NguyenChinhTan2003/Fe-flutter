import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_app/routes/app_pages.dart';

class CustomBarChartController extends GetxController {
  final RxList<BarChartGroupData> rawBarGroups = <BarChartGroupData>[].obs;
  final RxList<BarChartGroupData> showingBarGroups = <BarChartGroupData>[].obs;
  final RxInt touchedGroupIndex= 0.obs;
  final double width = 7;
  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 4,
      x: x,
      barRods: [
        BarChartRodData(
          toY: y1,
          color: Theme.of(Get.context!).colorScheme.onSecondary,
          width: width,
        ),
        BarChartRodData(
          toY: y2,
          color: Theme.of(Get.context!).colorScheme.onSecondary,
          width: width,
        ),
      ],
    );
  }

  @override
  Future<void> onInit() async {
    super.onInit();
    final barGroup1 = makeGroupData(0, 5, 12);
    final barGroup2 = makeGroupData(1, 16, 12);
    final barGroup3 = makeGroupData(2, 18, 5);
    final barGroup4 = makeGroupData(3, 20, 16);
    final barGroup5 = makeGroupData(4, 17, 6);
    final barGroup6 = makeGroupData(5, 19, 1.5);
    final barGroup7 = makeGroupData(6, 10, 1.5);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
    ];

    rawBarGroups(items);
    showingBarGroups(rawBarGroups);
  }


}
