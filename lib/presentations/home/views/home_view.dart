import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_app/core/commom_widgets/custom_button_icon_text.dart';
import 'package:wallet_app/core/values/app_icon_type.dart';
import 'package:wallet_app/presentations/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomIconTextButton(
                    action: () => controller.onShowTop(),
                    iconName: "fas-check",
                    iconType: AppIconType.awesome,
                    title: "Hiện thông báo phía trên",
                    width: 350,
                    borderRadius: 10,
                    iconColor: Theme.of(context).colorScheme.tertiary,
                    height: 50),
                const SizedBox(
                  height: 15,
                ),
                CustomIconTextButton(
                    action: () => controller.onShowBottom(),
                    iconName: "fas-check",
                    iconType: AppIconType.awesome,
                    title: "Hiện thông báo phía dưới",
                    width: 350,
                    borderRadius: 10,
                    iconColor: Theme.of(context).colorScheme.tertiary,
                    height: 50),
                const SizedBox(
                  height: 15,
                ),
                CustomIconTextButton(
                    action: () => controller.onSelectCatatory(),
                    iconName: "fas-check",
                    iconType: AppIconType.awesome,
                    title: "Chọn Catagory",
                    width: 350,
                    borderRadius: 10,
                    iconColor: Theme.of(context).colorScheme.tertiary,
                    height: 50),
              ],
            )));
  }
}
