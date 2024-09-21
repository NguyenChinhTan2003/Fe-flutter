import 'package:flutter/material.dart';
import 'package:wallet_app/core/values/app_padding.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      this.color,
      this.iconColor,
      this.hoverColor,
      required this.iconType,
      required this.title,
      this.iconSize = 18,
      this.width = 40,
      this.height = 40,
      this.borderRadius = 30,
      this.action,
      this.marginLeft = 10,
      this.disable = false});
  final Color? iconColor;
  final Color? color;
  final Color? hoverColor;
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
              onTap: () => disable == true ? null : action ?? (),
              child: Padding(
                  padding:
                    const EdgeInsets.only(bottom: AppPadding.medium),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                       Text(title,
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                    fontSize: 30,
                                    height: 32 / 30,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary)),
                        const SizedBox(
                          width: 3,
                        ),
                    
                        Text(iconType,
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .tertiary)),
                      ])),
            )));
  }
}
