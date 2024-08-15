import 'package:flutter/material.dart';

abstract class AppSizes {
  // screen height
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  // screen width
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static const double defaultHorizontalPadding = 20;
  static const double homeCardsBorderRadius = 12.0;
  static const double defaultButtonRadius = 10.0;
}
