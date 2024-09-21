// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const LOGIN = _Paths.LOGIN;
  static const EXPENSES = _Paths.EXPENSES;
  static const TRANSACTIONS = _Paths.TRANSACTIONS;
  static const HOMEPAGE = _Paths.HOMEPAGE;
  static const TABBAR = _Paths.TABBAR;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const LOGIN = '/login';
  static const EXPENSES = '/add-expenses';
  static const TRANSACTIONS = '/transaction';
  static const HOMEPAGE = '/homepage';
  static const TABBAR = '/tabbar';
}
