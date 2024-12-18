import 'dart:io';
import 'package:intl/intl.dart';

class Utils {
  static String currencySymbol() {
    var format =
        NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'NGN');
    return format.currencySymbol;
  }

  static String convertToCurrency(e) {
    String newStr = e.toString().replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => "${m[0]},");
    return newStr;
  }
}
