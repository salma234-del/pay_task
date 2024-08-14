import 'package:flutter/material.dart';
import 'package:payment_task/Core/utils/app_colors.dart';
import 'package:payment_task/Features/home/presentation/data/models/earning_model.dart';

abstract class AppLists {
  // To generate the colors for the earnings list
  static const List<Color> colors = [
    AppColors.red,
    AppColors.pink,
    AppColors.blue,
  ];

  // This list will come from the database
  static List<EarningModel> earnings = [
    EarningModel(
      title: 'Upwork',
      amount: 3000,
    ),
    EarningModel(
      title: 'Freepik',
      amount: 3000,
    ),
    EarningModel(
      title: 'Freelacer',
      amount: 2000,
    ),
  ];
}
