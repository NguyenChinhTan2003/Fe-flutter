import 'package:flutter/material.dart';
import 'package:wallet_app/core/utils/app_icon_helper.dart';
import 'package:wallet_app/core/values/app_margin.dart';
import 'package:wallet_app/core/values/app_padding.dart';

class CustomIconTextButton extends StatelessWidget {
  const CustomIconTextButton(
      {super.key,
      this.color,
      this.iconColor,
      this.hoverColor,
      required this.iconName,
      required this.iconType,
      required this.title,
      this.iconSize = 18,
      this.width = 40,
      this.height = 40,
      this.borderRadius = 5,
      this.action,
      this.marginLeft = 10,
      this.disable = false});
  final Color? iconColor;
  final Color? color;
  final Color? hoverColor;
  final String iconName;
  final String iconType;
  final double iconSize;
  final double width;
  final double height;
  final Function? action;
  final bool? disable;
  final double marginLeft;
  final double borderRadius;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            color: color ?? Theme.of(context).colorScheme.primary),
        child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
              focusColor: hoverColor ?? Theme.of(context).colorScheme.secondary,
              hoverColor: hoverColor ?? Theme.of(context).colorScheme.secondary,
              onTap: () =>
                  (disable == true && action != null) ? null : action!(),
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppPadding.big),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          AppIconHelper.getIcon(iconName, iconType),
                          color: disable == true
                              ? Theme.of(context).colorScheme.outline
                              : (iconColor ??
                                  Theme.of(context).colorScheme.onPrimary),
                          size: iconSize,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: AppMargin.small),
                          child: Text(title,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary)),
                        ),
                      ])),
            )));
  }
}
