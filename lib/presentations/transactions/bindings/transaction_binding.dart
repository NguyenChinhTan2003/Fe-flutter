import 'package:get/get.dart';
import 'package:wallet_app/presentations/transactions/controller/transaction_controller.dart';

class TransactionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransactionController>(
      () => TransactionController(),
    );
  }
}