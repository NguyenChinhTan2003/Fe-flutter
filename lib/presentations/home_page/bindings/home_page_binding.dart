import 'package:get/get.dart';
import 'package:wallet_app/presentations/home_page/controller/home_page_controller.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(
      () => HomePageController(),
    );
  }
}