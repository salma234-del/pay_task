import 'package:flutter/material.dart';
import 'package:payment_task/Core/utils/app_assets.dart';
import 'package:payment_task/Core/utils/app_colors.dart';
import 'package:payment_task/Core/utils/app_sizes.dart';
import 'package:payment_task/Core/utils/app_strings.dart';
import 'package:payment_task/Core/utils/app_styles.dart';
import 'package:payment_task/Features/home/presentation/views/widgets/wallet_arrow_button.dart';

class TotalBalanceCard extends StatelessWidget {
  const TotalBalanceCard({
    super.key,
  });

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
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.totalBalance,
                style: AppStyles.styleRegular14,
              ),
              Text(
                '\$25,000,40',
                style: AppStyles.styleBold28,
              ),
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    AppStrings.myWallet,
                    style: AppStyles.styleRegular14,
                  ),
                  SizedBox(width: 8),
                  WalletArrowButton(),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: ClipRRect(
            borderRadius: const BorderRadiusDirectional.only(
              topEnd: Radius.circular(AppSizes.homeCardsBorderRadius),
            ),
            child: Image.asset(
              AppAssets.curve1,
              height: 100,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: ClipRRect(
            borderRadius: const BorderRadiusDirectional.only(
              bottomStart: Radius.circular(AppSizes.homeCardsBorderRadius),
            ),
            child: Image.asset(
              AppAssets.curve2,
              height: 40,
            ),
          ),
        ),
      ],
    );
  }
}
