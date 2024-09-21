import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_app/core/commom_widgets/custom_text_field.dart';
import 'package:wallet_app/core/values/app_font.dart';
import 'package:wallet_app/core/values/app_padding.dart';
import 'package:wallet_app/domains/baseModels/common_model.dart';

class CustomDialogSearch extends StatelessWidget {
  const CustomDialogSearch(
      {super.key,
      required this.textController,
      required this.title,
      required this.action,
      required this.data,
      context});

  final TextEditingController textController;
  final Function(CategoryModel item) action;
  final String title;
  final RxList<CategoryModel> data;
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          padding: const EdgeInsets.only(
              left: AppPadding.big, right: AppPadding.big, bottom: 40),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          child: Column(children: [
            SizedBox(
              child: Column(children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: AppPadding.medium),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(title,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(fontFamily: AppFonts.regular)),
                    ],
                  ),
                ),
                CustomTextField(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  textColor: Theme.of(context).colorScheme.onSecondary,
                  controller: textController,
                  hintText: "Tìm kiếm",
                  prefixIcon: Icon(
                    Icons.search,
                    size: 28,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
              ]),
            ),
            Expanded(
                child: SingleChildScrollView(
                    child: Column(
              children: data
                  .map((e) => GestureDetector(
                      onTap: () => action(e),
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: AppPadding.medium),
                          constraints: const BoxConstraints(minHeight: 36),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      width: 0.1))),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(e.name ?? '',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(
                                              fontFamily:
                                                  AppFonts.regularItalic)))
                            ],
                          ))))
                  .toList(),
            )))
          ]),
        ));
  }
}
