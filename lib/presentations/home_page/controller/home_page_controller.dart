import 'package:get/get.dart';
import 'package:wallet_app/routes/app_pages.dart';

class HomePageController extends GetxController {
  

  @override
  Future<void> onInit() async {
    super.onInit();
  }

  void onHomePage() {
    Get.toNamed(Routes.EXPENSES);
  }
}
