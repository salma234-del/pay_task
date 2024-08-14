import 'dart:math';
import 'package:flutter/material.dart';
import 'package:payment_task/Core/helper_functions/format_number.dart';
import 'package:payment_task/Core/utils/app_lists.dart';
import 'package:payment_task/Core/utils/app_sizes.dart';
import 'package:payment_task/Core/utils/app_styles.dart';
import 'package:payment_task/Features/home/presentation/data/models/earning_model.dart';

class EarningItem extends StatelessWidget {
  const EarningItem({
    required this.earning,
    super.key,
  });

  final EarningModel earning;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.screenWidth(context) * 0.33,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.homeCardsBorderRadius),
        color: AppLists.colors[Random().nextInt(AppLists.colors.length)],
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(10),
            child: Text(
              earning.title[0].toUpperCase(),
              style: AppStyles.styleMedium18,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            earning.title,
            style: AppStyles.styleRegular14,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            '\$ ${formatNumberWithCommas(earning.amount)}',
            style: AppStyles.styleBold18,
          ),
        ],
      ),
    );
  }
}
