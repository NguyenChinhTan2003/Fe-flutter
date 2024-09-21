import 'package:flutter/material.dart';
import 'package:wallet_app/core/values/app_padding.dart';

class BannerTotalView extends StatelessWidget {
  const BannerTotalView({
    super.key,
    required this.totalBalance,
    required this.income,
    required this.expenses,
    this.color,
    this.iconColor,
    this.hoverColor,
    this.width = 40,
    this.height = 40,
    this.borderRadius = 20,
    this.action,
    this.marginLeft = 40,
    this.disable = false,
  });

  final String totalBalance;
  final String income;
  final String expenses;
  final Color? iconColor;
  final Color? color;
  final Color? hoverColor;
  final double width;
  final double height;
  final Function? action;
  final bool? disable;
  final double marginLeft;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(AppPadding.big),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.background,
            spreadRadius: 1,
            blurRadius: 25,
            offset: const Offset(0, 1),
          ),
        ],
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
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Total Balance',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Theme.of(context).colorScheme.primary),
          ),
          const SizedBox(height: 8),
          Text(
            totalBalance,
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(color: Theme.of(context).colorScheme.primary),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildBalanceItem(Icons.arrow_downward, 'Income', income, context,
                  Theme.of(context).colorScheme.inversePrimary),
              _buildBalanceItem(Icons.arrow_upward, 'Expenses', expenses,
                  context, Theme.of(context).colorScheme.onInverseSurface),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBalanceItem(IconData icon, String label, String amount,
      BuildContext context, Color iconColor) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: iconColor.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: iconColor, size: 16),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.primary),
            ),
            Text(
              amount,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Theme.of(context).colorScheme.primary),
            ),
          ],
        ),
      ],
    );
  }
}
