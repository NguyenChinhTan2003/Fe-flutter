import 'package:flutter/material.dart';
import 'package:wallet_app/core/themes/colors/custom_color.dart';
import 'package:wallet_app/core/utils/app_icon_helper.dart';
import 'package:wallet_app/core/values/app_font.dart';
import 'package:wallet_app/core/values/app_margin.dart';
import 'package:wallet_app/core/values/app_padding.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key,
      this.color,
      this.iconColor,
      this.hoverColor,
      this.tooltipText,
      this.tooltipTextColor,
      this.tooltipColor,
      required this.iconName,
      required this.iconType,
      this.iconSize = 18,
      this.width = 40,
      this.action,
      this.marginLeft = 10,
      this.disable = false});
  final Color? iconColor;
  final Color? color;
  final Color? hoverColor;
  final String? tooltipText;
  final String iconName;
  final String iconType;
  final double iconSize;
  final double width;
  final Function? action;
  final Color? tooltipColor;
  final Color? tooltipTextColor;
  final bool? disable;
  final double marginLeft;
  @override
  Widget build(BuildContext context) {
    return Tooltip(
        message: tooltipText,
        margin: const EdgeInsets.symmetric(vertical: AppMargin.verySmall),
        padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.big, vertical: AppPadding.verySmall),
        decoration: BoxDecoration(
            color: tooltipColor ?? Theme.of(context).colorScheme.onSecondary,
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: tooltipTextColor ?? Theme.of(context).colorScheme.primary,
            fontFamily: AppFonts.regular),
        child: Container(
            height: width,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(width / 2)),
                color: color ?? Theme.of(context).colorScheme.primary),
            margin: EdgeInsets.only(left: marginLeft),
            child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.all(Radius.circular(width / 2)),
                  focusColor: hoverColor ??
                      Theme.of(context)
                          .colorScheme.secondary,
                  hoverColor: hoverColor ??
                      Theme.of(context)
                          .colorScheme.secondary,
                  onTap: () => disable == true ? null : action!(),
                  child: Center(
                      child: Icon(
                    AppIconHelper.getIcon(iconName, iconType),
                    color: disable == true
                        ? Theme.of(context).colorScheme.outline
                        : (iconColor ??
                            Theme.of(context).colorScheme.onPrimary),
                    size: iconSize,
                  )
                  ),
                )
                )
                )
                );
  }
}