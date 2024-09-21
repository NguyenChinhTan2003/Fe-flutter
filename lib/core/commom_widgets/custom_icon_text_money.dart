import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:wallet_app/core/utils/app_icon_helper.dart';

import 'package:wallet_app/core/values/app_padding.dart';

class CustomIconTextMoney extends StatelessWidget {
  const CustomIconTextMoney(
      {super.key,
      this.color,
      this.iconColor,
      this.hoverColor,
      required this.iconName,
      required this.iconType,
      required this.title,
      required this.Name,
       required this.day,
       required this.backgroundicon,
      this.iconSize = 20,
      this.width = 40,
      this.height = 40,
      this.borderRadius = 20,
      this.action,
      this.marginLeft = 40,
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
  final String Name;
  final String day;
  final Color backgroundicon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          color: color ?? Theme.of(context).colorScheme.background),
          padding: const EdgeInsets.all(AppPadding.big),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              CircleAvatar(
               backgroundColor: backgroundicon,
                child: Icon(
                  AppIconHelper.getIcon(iconName, iconType),
                  color: disable == true
                      ? Theme.of(context).colorScheme.outline
                      : (iconColor ?? Theme.of(context).colorScheme.primary),
                  size: iconSize,
                ),
              ),
              const SizedBox(width: 10,),
              Text(title,
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Theme.of(context).colorScheme.scrim)),
            ],
          ),
         const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
           
            children: [
              Text(Name,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Theme.of(context).colorScheme.scrim)),
              Text(day,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.tertiary)),
            ],
          ), 
          const SizedBox(width: 20,) ,
        ],
      ),
    );
  }
}
