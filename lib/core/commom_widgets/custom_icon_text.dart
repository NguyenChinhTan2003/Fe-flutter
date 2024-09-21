import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_app/core/utils/app_icon_helper.dart';


class CustomIconText extends StatelessWidget {
  const CustomIconText(
      {super.key,
      this.color,
      this.iconColor,
      this.hoverColor,
      required this.iconName,
      required this.iconType,
      required this.iconNames,
      required this.iconTypes,
      required this.title,
      required this.Name,
      required this.backgroundicon,
      this.iconSize = 18,
      this.width = 40,
      this.height = 40,
      this.borderRadius = 10,
      this.action,
      this.marginLeft = 10,
      this.disable = false});
  final Color? iconColor;
  final Color? color;
  final Color? hoverColor;
  final String iconName;
  final String iconType;
  final String iconNames;
  final String iconTypes;
  final double iconSize;
  final double width;
  final double height;
  final Function? action;
  final bool? disable;
  final double marginLeft;
  final double borderRadius;
  final String title;
  final String Name;
  final Color backgroundicon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          color: color ?? Theme.of(context).colorScheme.background),
      padding: const EdgeInsets.fromLTRB(16, 25, 16, 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: backgroundicon,
            child: Icon(
              AppIconHelper.getIcon(iconName, iconType),
              color: disable == true
                  ? Theme.of(context).colorScheme.outline
                  : (iconColor ?? Theme.of(context).colorScheme.onError),
              size: iconSize,
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: Theme.of(context).colorScheme.tertiary)),
              Text(Name,
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(color: Theme.of(context).colorScheme.scrim)),
            ],
          ),
          const Spacer(),
          Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(width / 2)),
                focusColor:
                    hoverColor ?? Theme.of(context).colorScheme.secondary,
                hoverColor:
                    hoverColor ?? Theme.of(context).colorScheme.secondary,
                onTap: () => Get.toNamed('/transaction'),
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: Icon(
                    AppIconHelper.getIcon(iconNames, iconTypes),
                    color: disable == true
                        ? Theme.of(context).colorScheme.outline
                        : (iconColor ?? Theme.of(context).colorScheme.outline),
                    size: iconSize,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
