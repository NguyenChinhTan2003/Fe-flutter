import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_app/routes/app_pages.dart';

class LoginController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Future<void> onInit() async {
    super.onInit();
  }

  void onLogin() {
    Get.offAllNamed(Routes.HOMEPAGE);
  }
}
