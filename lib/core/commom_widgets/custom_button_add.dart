import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_app/presentations/home_page/controller/home_page_controller.dart';


class CustomButtonAdd extends GetView<HomePageController> {
  const CustomButtonAdd(
      {super.key,
      this.color,
      this.iconColor,
      this.hoverColor,
      this.iconSize = 20,
      this.width = 60,
      this.height = 60,
      this.borderRadius = 20,
      this.action,
      this.marginLeft = 40,
      this.disable = false});
  final Color? iconColor;
  final Color? color;
  final Color? hoverColor;

  final double iconSize;
  final double width;
  final double height;
  final Function? action;
  final bool? disable;
  final double marginLeft;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        width: width,
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
           height: height,
        width: width,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.onSurface,
                  spreadRadius: 1,
                  blurRadius: 25,
                  offset: const Offset(0, 0.2),
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
              borderRadius: BorderRadius.circular(30),
            ),
            child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.all(Radius.circular(width / 2)),
                  focusColor:
                      hoverColor ?? Theme.of(context).colorScheme.secondary,
                  hoverColor:
                      hoverColor ?? Theme.of(context).colorScheme.secondary,
                  onTap: () => Get.toNamed('/add-expenses'),
                  child: Icon(Icons.add,
                      color: Theme.of(context).colorScheme.primary),
                )),
          ),
        ));
  }
}
