import 'package:flutter/material.dart';
import 'package:wallet_app/core/utils/app_icon_helper.dart';
import 'package:wallet_app/core/values/app_padding.dart';

class Icon_Text extends StatelessWidget {
  const Icon_Text(
      {super.key,
      this.color,
      this.iconColor,
      this.hoverColor,
      required this.iconName,
      required this.iconType,
      required this.title,
      required this.Name,
  
      this.iconSize = 20,
      this.width = 40,
      this.height = 40,
      this.borderRadius = 15,
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
               backgroundColor:Theme.of(context).colorScheme.surfaceTint,
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
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Theme.of(context).colorScheme.scrim)),
            ],
          ),
         const Spacer(),
        
           
              Text(Name,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: Theme.of(context).colorScheme.secondaryContainer)),
           
         
          
        ],
      ),
    );
  }
}
