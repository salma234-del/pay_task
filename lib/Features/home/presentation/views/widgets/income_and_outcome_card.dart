import 'package:flutter/material.dart';
import 'package:payment_task/Core/utils/app_assets.dart';
import 'package:payment_task/Core/utils/app_colors.dart';
import 'package:payment_task/Core/utils/app_sizes.dart';
import 'package:payment_task/Core/utils/app_strings.dart';
import 'package:payment_task/Core/utils/app_styles.dart';

class IncomeAndOutcomeCard extends StatelessWidget {
  const IncomeAndOutcomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: AppSizes.screenWidth(context),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(AppSizes.homeCardsBorderRadius),
          ),
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.arrow_downward,
                    color: AppColors.green,
                    size: 35,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.income,
                        style: AppStyles.styleRegular14,
                      ),
                      Text(
                        '\$ 20,000',
                        style: AppStyles.styleBold18,
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 50,
                width: 1,
                color: AppColors.white,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.arrow_upward,
                    color: AppColors.red,
                    size: 35,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.outcome,
                        style: AppStyles.styleRegular14,
                      ),
                      Text(
                        '\$ 17,000',
                        style: AppStyles.styleBold18,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: ClipRRect(
            borderRadius: const BorderRadiusDirectional.only(
              topEnd: Radius.circular(AppSizes.homeCardsBorderRadius),
            ),
            child: Image.asset(
              AppAssets.curve4,
              height: 25,
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: ClipRRect(
            borderRadius: const BorderRadiusDirectional.only(
              bottomStart: Radius.circular(AppSizes.homeCardsBorderRadius),
            ),
            child: Image.asset(
              AppAssets.curve3,
            ),
          ),
        ),
      ],
    );
  }
}
