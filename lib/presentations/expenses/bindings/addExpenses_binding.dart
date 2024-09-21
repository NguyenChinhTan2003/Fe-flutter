import 'package:get/get.dart';
import 'package:wallet_app/presentations/expenses/controller/addExpenses_controller.dart';

class AddexpensesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddexpensesController>(
      () => AddexpensesController(),
    );
  }
}