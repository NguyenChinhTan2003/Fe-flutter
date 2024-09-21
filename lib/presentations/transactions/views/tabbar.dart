import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_app/core/commom_widgets/custom_bar_char/custom_bar_chart.dart';
import 'package:wallet_app/core/values/extention.dart';
import 'package:wallet_app/presentations/transactions/controller/transaction_controller.dart';
import 'package:wallet_app/presentations/transactions/views/icon_text.dart';
import 'package:wallet_app/core/values/app_icon_type.dart';
import 'package:wallet_app/core/values/app_padding.dart';

class MyTabbedWidget extends GetView<TransactionController> {
  MyTabbedWidget({super.key}) {
    if (!Get.isRegistered<TransactionController>()) {
      Get.lazyPut<TransactionController>(
        () => TransactionController(),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.big),
              child: Expanded(
                child: Stack(children: [
                  Container(
                    padding: const EdgeInsets.all(AppPadding.small),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TabBar(
                      dividerHeight: 0,
                      controller: controller.tabController,
                      indicator: const BoxDecoration(),
                      labelPadding: EdgeInsets.zero,
                      tabs: [
                        _buildTab('Income', 0),
                        _buildTab('Expenses', 1),
                      ],
                    ),
                  ),
                ]),
                
              ),
              
            ),
            Expanded(
              child: TabBarView(
                controller: controller.tabController,
                children: [
                  _buildIncomeTab(context),
                  _buildExpensesTab(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String title, int index) {
    return Tab(
      child: AnimatedBuilder(
        animation: controller.tabController.animation!,
        builder: (context, child) {
          final isSelected = controller.tabController.index == index;
          return Container(
            width: 170,
            margin: EdgeInsets.only(
              left: index == 0 ? 5 : 0,
              right: index == 1 ? 5 : 0,
            ),
            decoration: isSelected
                ? BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff29b3e2),
                        Color(0xffb972fc),
                        Color(0xffe47cbb),
                        Color(0xfffd956f),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  )
                : null,
            child: Center(
              child: Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: isSelected
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.tertiary,
                    ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildIncomeTab(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: ListView(
          children: [
            CustomBarChart(
              date: '01 Jan 2021 - 01 April 2021',
              money: '+${3500000.formatNumToVnd()}',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  Text('Sat, 20 March 2021',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                              color: Theme.of(context).colorScheme.tertiary)),
                  const Spacer(),
                  Text('+${500000.formatNumToVnd()}',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                              color: Theme.of(context).colorScheme.tertiary)),
                ],
              ),
            ),
            Icon_Text(
                width: 350,
                height: 80,
                color: Theme.of(context).colorScheme.primary,
                iconName: 'fas-house-user',
                iconType: AppIconType.awesome,
                title: 'Home Rent',
                Name:'+${350000.formatNumToVnd()}'),
            const SizedBox(height: 20),
            Icon_Text(
                width: 350,
                height: 80,
                color: Theme.of(context).colorScheme.primary,
                iconName: 'fas-paw',
                iconType: AppIconType.awesome,
                title: 'Pet Groom',
                Name: '+${50000.formatNumToVnd()}'),
            const SizedBox(height: 20),
            Icon_Text(
                width: 350,
                height: 80,
                color: Theme.of(context).colorScheme.primary,
                iconName: 'fas-mobile',
                iconType: AppIconType.awesome,
                title: 'Recharge',
                Name: '+${100000.formatNumToVnd()}')
          ],
        ),
      ),
    );
  }

  Widget _buildExpensesTab(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: ListView(
          children: [
            CustomBarChart(
              date: '01 Jan 2021 - 01 April 2021',
              money: (-3500000).formatNumToVnd(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  Text('Sat, 20 March 2021',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                              color: Theme.of(context).colorScheme.tertiary)),
                  const Spacer(),
                  Text((-500000).formatNumToVnd(),
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                              color: Theme.of(context).colorScheme.tertiary)),
                ],
              ),
            ),
            Icon_Text(
                width: 350,
                height: 80,
                color: Theme.of(context).colorScheme.primary,
                iconName: 'fas-house-user',
                iconType: AppIconType.awesome,
                title: 'Home Rent',
                Name: (-350000).formatNumToVnd()),
            const SizedBox(height: 20),
            Icon_Text(
                width: 350,
                height: 80,
                color: Theme.of(context).colorScheme.primary,
                iconName: 'fas-paw',
                iconType: AppIconType.awesome,
                title: 'Pet Groom',
                Name: '-50.000'),
            const SizedBox(height: 20),
            Icon_Text(
                width: 350,
                height: 80,
                color: Theme.of(context).colorScheme.primary,
                iconName: 'fas-mobile',
                iconType: AppIconType.awesome,
                title: 'Recharge',
                Name: (-100000).formatNumToVnd())
          ],
        ),
      ),
    );
  }
}
