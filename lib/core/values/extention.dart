import 'package:intl/intl.dart';

extension FormatNum on num {
  String formatNumToVnd() {
    NumberFormat numberFormat = NumberFormat("#,###");
    return '${numberFormat.format(this).toString().replaceAll(",", ".")} đ';
  }

  String formatNumToMoney() {
    NumberFormat numberFormat = NumberFormat("#,###");
    return numberFormat.format(this).toString().replaceAll(",", ".");
  }
}


extension FormatInt on int {
  String formatNumToVnd() {
    NumberFormat numberFormat = NumberFormat("#,###");
    return '${numberFormat.format(this).toString().replaceAll(",", ".")} đ';
  }

  String formatNumToMoney() {
    NumberFormat numberFormat = NumberFormat("#,###");
    return numberFormat.format(this).toString().replaceAll(",", ".");
  }
}