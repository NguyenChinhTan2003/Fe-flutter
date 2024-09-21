// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_app/presentations/transactions/bindings/transaction_binding.dart';
import 'package:wallet_app/presentations/transactions/views/tabbar.dart';
import 'package:wallet_app/presentations/expenses/bindings/addExpenses_binding.dart';
import 'package:wallet_app/presentations/expenses/views/addExpenses_view.dart';
import 'package:wallet_app/presentations/home/bindings/home_binding.dart';
import 'package:wallet_app/presentations/home/views/home_view.dart';
import 'package:wallet_app/presentations/home_page/bindings/home_page_binding.dart';
import 'package:wallet_app/presentations/home_page/views/homepage_view.dart';
import 'package:wallet_app/presentations/login/bindings/login_binding.dart';
import 'package:wallet_app/presentations/login/views/login_view.dart';
import 'package:wallet_app/presentations/transactions/views/transaction_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.EXPENSES,
      page: () => const AddexpensesView(),
      binding: AddexpensesBinding(),
    ),
    GetPage(
      name: _Paths.TRANSACTIONS,
      page: () => const TransactionView(),
      binding: TransactionBinding(),
  
    ),
    GetPage(
      name: _Paths.HOMEPAGE,
      page: () => const HomepageView(),
      binding: HomePageBinding(),
    ),

     
    
  ];
}
