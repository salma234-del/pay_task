import 'package:flutter/material.dart';
import 'package:payment_task/Core/utils/app_colors.dart';
import 'package:payment_task/Core/utils/app_constants.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.background,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.background,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColors.primary),
  ),
  textTheme: ThemeData.light().textTheme.apply(
        fontFamily: AppConstants.kFontFamily,
      ),
);
