import 'package:flutter/material.dart';
import 'package:payment_task/Core/utils/app_assets.dart';
import 'package:payment_task/Core/utils/app_colors.dart';
import 'package:payment_task/Features/home/presentation/data/models/earning_model.dart';
import 'package:payment_task/models/transaction_model.dart';

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

  // This list will come from the database

  static List<TransactionModel> transactions = [
    TransactionModel(
      id: '1',
      title: 'Adobe Illustrator',
      description: 'Subscription fee',
      amount: -32,
      image: AppAssets.transaction1,
    ),
    TransactionModel(
      id: '2',
      title: 'Dribbble',
      description: 'Subscription fee',
      amount: -15,
      image: AppAssets.transaction1,
    ),
    TransactionModel(
      id: '3',
      title: 'Sony Camera',
      description: 'Shopping fee',
      amount: -200,
      image: AppAssets.transaction2,
    ),
    TransactionModel(
      id: '4',
      title: 'Paypal',
      description: 'Salary',
      amount: 32,
      image: AppAssets.transaction2,
    ),
  ];
}
