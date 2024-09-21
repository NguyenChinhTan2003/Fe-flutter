import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_app/core/commom_widgets/custom_bar_char/custom_bar_chart_controller.dart';

class CustomBarChart extends GetView<CustomBarChartController> {
  CustomBarChart({super.key,
   required this.date,
    required this.money,
  }) {
    if (!Get.isRegistered<CustomBarChartController>()) {
      Get.lazyPut<CustomBarChartController>(
        () => CustomBarChartController(),
      );
    }
  }
  final String date;
  final String money;

  @override
  Widget build(BuildContext context) {
    return Container(
         decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: Theme.of(context).colorScheme.primary),
      child: AspectRatio(
        
        aspectRatio: 1,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                 Text(date,
                 style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Theme.of(context).colorScheme.tertiary),),
                 Text(money,style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Theme.of(context).colorScheme.scrim),)
                  
                ],
              ),
              const SizedBox(
                height: 38,
              ),
              Expanded(
                  child: BarChart(
                BarChartData(
                  maxY: 20,
                  barTouchData: BarTouchData(
                      touchTooltipData: BarTouchTooltipData(
                        getTooltipColor: ((group) {
                          return Colors.grey;
                        }),
                        getTooltipItem: (a, b, c, d) => null,
                      ),
                      touchCallback: (FlTouchEvent event, response) {
                        if (response == null || response.spot == null) {
                          controller.touchedGroupIndex(-1);
                          controller.showingBarGroups(controller.rawBarGroups);
                          return;
                        }
                        controller.touchedGroupIndex(
                            response.spot!.touchedBarGroupIndex);
      
                        if (!event.isInterestedForInteractions) {
                          controller.touchedGroupIndex(-1);
                          controller.showingBarGroups(controller.rawBarGroups);
                          return;
                        }
      
                        controller.showingBarGroups(controller.rawBarGroups);
                        if (controller.touchedGroupIndex != -1) {
                          var sum = 0.0;
                          for (final rod in controller
                              .showingBarGroups[
                                  controller.touchedGroupIndex.value]
                              .barRods) {
                            sum += rod.toY;
                          }
                          final avg = sum /
                              controller
                                  .showingBarGroups[
                                      controller.touchedGroupIndex.value]
                                  .barRods
                                  .length;
      
                          controller.showingBarGroups[controller.touchedGroupIndex
                              .value] = controller.showingBarGroups[
                                  controller.touchedGroupIndex.value]
                              .copyWith(
                            barRods: controller
                                .showingBarGroups[
                                    controller.touchedGroupIndex.value]
                                .barRods
                                .map((rod) {
                              return rod.copyWith(
                                  toY: avg,
                                  color: Theme.of(context).colorScheme.onError);
                            }).toList(),
                          );
                        }
                      }),
                  titlesData: FlTitlesData(
                    show: true,
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: bottomTitles,
                        reservedSize: 42,
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 28,
                        interval: 1,
                        getTitlesWidget: leftTitles,
                      ),
                    ),
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  barGroups: controller.showingBarGroups,
                  gridData: const FlGridData(show: false),
                ),
              )),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff7589a2),
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    if (value == 0) {
      text = '1K';
    } else if (value == 10) {
      text = '5K';
    } else if (value == 19) {
      text = '10K';
    } else {
      return Container();
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 0,
      child: Text(text, style: style),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    final titles = <String>['Mn', 'Te', 'Wd', 'Tu', 'Fr', 'St', 'Su'];

    final Widget text = Text(
      titles[value.toInt()],
      style: const TextStyle(
        color: Color(0xff7589a2),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16, //margin top
      child: text,
    );
  }

  Widget makeTransactionsIcon() {
    const width = 4.5;
    const space = 3.5;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 42,
          color: Colors.white.withOpacity(1),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
      ],
    );
  }
}
