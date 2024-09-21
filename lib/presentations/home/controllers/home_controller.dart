import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_app/core/commom_widgets/custom_dialog_search.dart';
import 'package:wallet_app/core/utils/app_snackbar.dart';
import 'package:wallet_app/domains/baseModels/common_model.dart';

class HomeController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  final RxList<CategoryModel> datas = <CategoryModel>[].obs;
  final RxList<CategoryModel> dataShows = <CategoryModel>[].obs;
  @override
  Future<void> onInit() async {
    super.onInit();
    datas([
      CategoryModel(id: 1, name: 'Catagory 1'),
      CategoryModel(id: 2, name: 'Catagory 2'),
      CategoryModel(id: 3, name: 'Catagory 3'),
      CategoryModel(id: 4, name: 'Catagory 4'),
      CategoryModel(id: 5, name: 'Catagory 5'),
      CategoryModel(id: 6, name: 'Catagory 6'),
    ]);
    dataShows(datas);
    searchController.addListener(() {
      dataShows(datas
          .where((p0) => p0.name!
              .toUpperCase()
              .contains(searchController.text.toUpperCase()))
          .toList());
    });
  }

  Future<void> onShowTop() async {
    AppSnackbar.showSuccessSnackbarTop(Get.context, "Hiện thông báo");
  }

  Future<void> onShowBottom() async {
    AppSnackbar.showInfoSnackbarBottom(Get.context, "Hiện thông báo");
  }

  Future<void> onSelectCatatory() async {
    Get.bottomSheet(
      FractionallySizedBox(
        heightFactor: 0.6,
        child: CustomDialogSearch(
          textController: searchController,
          data: dataShows,
          title: "Select Catagory",
          context: Get.context,
          action: (item) => {Get.back()},
        ),
      ),
      backgroundColor: Theme.of(Get.context!).colorScheme.background,
      isScrollControlled: true,
    );
  }
}
