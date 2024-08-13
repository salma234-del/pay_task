import 'package:flutter/material.dart';
import 'package:payment_task/Core/utils/app_colors.dart';

abstract class AppStyles {
  static const TextStyle styleMedium12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.grey,
  );

  static const TextStyle styleMedium18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
}
