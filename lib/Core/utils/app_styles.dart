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

  static const TextStyle styleRegular14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );

  static const TextStyle styleBold28 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );
}
