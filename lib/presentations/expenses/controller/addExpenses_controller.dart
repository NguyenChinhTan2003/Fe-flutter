import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_app/core/commom_widgets/custom_dialog_search.dart';
import 'package:wallet_app/domains/baseModels/common_model.dart';
import 'package:intl/intl.dart';

class AddexpensesController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  final TextEditingController noteController = TextEditingController();
  final RxList<CategoryModel> datas = <CategoryModel>[].obs;
  final RxList<CategoryModel> dataShows = <CategoryModel>[].obs;
  final Rx<DateTime?> selectedDate = Rx<DateTime?>(null);
  final RxString formattedDate = ''.obs;

  int n = 50; 
  int namMin = 0;
  int namMax = 0;

  @override
  void onInit() async {
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
    // Calculate min and max dates
    _setMinMaxDates();
  }

  void _setMinMaxDates() {
    int currentYear = DateTime.now().year;
    namMin = currentYear - n;
    namMax = currentYear + n;
  }

  Future<void> onSelectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate.value ?? DateTime.now(),
      firstDate: DateTime(namMin),
      lastDate: DateTime(namMax),
    );
    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
      formattedDate.value = DateFormat('yyyy-MM-dd').format(pickedDate);
    }
  }

  Future<void> onSelectCatetory() async {
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