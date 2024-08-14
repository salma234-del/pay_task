import 'package:intl/intl.dart';

String formatNumberWithCommas(int number) {
  final formatter = NumberFormat('#,##0');

  return formatter.format(number);
}
