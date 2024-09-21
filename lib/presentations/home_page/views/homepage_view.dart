import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_app/core/commom_widgets/custom_button_add.dart';
import 'package:wallet_app/core/commom_widgets/custom_icon_text.dart';
import 'package:wallet_app/core/commom_widgets/custom_icon_text_money.dart';
import 'package:wallet_app/core/values/app_icon_type.dart';
import 'package:wallet_app/core/values/extention.dart';
import 'package:wallet_app/presentations/home_page/controller/home_page_controller.dart';
import 'package:wallet_app/presentations/home_page/views/banner_total_view.dart';

class HomepageView extends GetView<HomePageController> {
  const HomepageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconText(
            color: Theme.of(context).colorScheme.background,
            height: 92,
            width: 400,
            iconName: 'fas-user',
            iconType: AppIconType.awesome,
            title: 'Welcome!',
            Name: 'Join Doe',
            iconNames: 'fas-list',
            iconTypes: AppIconType.awesome,
            backgroundicon: Theme.of(context).colorScheme.surfaceTint,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                    color: Theme.of(context).colorScheme.background,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
                      child: ListView(
                        children: [
                          BannerTotalView(
                            width: 350,
                            height: 200,
                            totalBalance: 4800000.formatNumToVnd(),
                            income: 2500000.formatNumToVnd(),
                            expenses: 800000.formatNumToVnd(),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 20),
                            child: Row(
                              children: [
                                Text('Transactions',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .scrim)),
                                const Spacer(),
                                Text('View All',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .tertiary)),
                              ],
                            ),
                          ),
                          CustomIconTextMoney(
                            width: 350,
                            height: 80,
                            iconName: 'fas-utensils',
                            iconType: AppIconType.awesome,
                            title: 'Food',
                            Name:  (-35000).formatNumToVnd(),
                            day: 'Today',
                            color: Theme.of(context).colorScheme.primary,
                            backgroundicon:
                                Theme.of(context).colorScheme.surfaceTint,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomIconTextMoney(
                            width: 400,
                            height: 80,
                            iconName: 'fas-store',
                            iconType: AppIconType.awesome,
                            title: 'Shopping',
                            Name: (-280000).formatNumToVnd(),
                            day: 'Today',
                            color: Theme.of(context).colorScheme.primary,
                            backgroundicon:
                                Theme.of(context).colorScheme.inverseSurface,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomIconTextMoney(
                            width: 400,
                            height: 80,
                            iconName: 'fas-star',
                            iconType: AppIconType.awesome,
                            title: 'Entertainment',
                            Name: (-3500).formatNumToVnd(),
                            day: 'Today',
                            color: Theme.of(context).colorScheme.primary,
                            backgroundicon:
                                Theme.of(context).colorScheme.onInverseSurface,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomIconTextMoney(
                            width: 400,
                            height: 80,
                            iconName: 'fas-plane',
                            iconType: AppIconType.awesome,
                            title: 'Travel',
                            Name: (-3500).formatNumToVnd(),
                            day: 'Today',
                            color: Theme.of(context).colorScheme.primary,
                            backgroundicon:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                          const SizedBox(
                            height: 95,
                          )
                        ],
                      ),
                    )),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 95,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        Theme.of(context).colorScheme.onSurface,
                                    
                                    blurRadius: 1,
                                    offset: const Offset(0, 0.5),
                                  ),
                                ],
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.grid_view,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                                const SizedBox(
                                    width: 60), // Space for the center button
                                Icon(
                                  Icons.bar_chart,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.topCenter,
                          child: CustomButtonAdd(),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
