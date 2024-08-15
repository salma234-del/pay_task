import 'package:flutter/material.dart';
import 'package:payment_task/Core/helper_functions/format_number.dart';
import 'package:payment_task/Core/utils/app_colors.dart';
import 'package:payment_task/Core/utils/app_sizes.dart';
import 'package:payment_task/Core/utils/app_strings.dart';
import 'package:payment_task/Core/utils/app_styles.dart';
import 'package:payment_task/Features/wallet/data/models/visa_model.dart';

class VisaCard extends StatelessWidget {
  const VisaCard({
    required this.visa,
    super.key,
  });

  final VisaModel visa;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.screenHeight(context) * 0.22,
      width: AppSizes.screenWidth(context) * 0.7,
      margin: const EdgeInsetsDirectional.only(
        start: 15,
      ),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(AppSizes.homeCardsBorderRadius),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            AppStrings.totalBalance,
                            style: AppStyles.styleSemiBold12,
                          ),
                          Text(
                            '\$${formatNumberWithCommas(visa.amount).toString()}',
                            style: AppStyles.styleBold16,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                      padding: const EdgeInsets.all(2),
                      child: Text(
                        AppStrings.visa,
                        style: AppStyles.styleMedium12.copyWith(
                          color: AppColors.white,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Text(
                  visa.cardNumber,
                  style: AppStyles.styleSemiBold12,
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(AppSizes.homeCardsBorderRadius),
                bottomRight: Radius.circular(AppSizes.homeCardsBorderRadius),
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      AppStrings.name,
                      style: AppStyles.styleRegular10,
                    ),
                    Text(
                      visa.cardHolder,
                      style: AppStyles.styleMedium12.copyWith(
                        color: AppColors.white,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      AppStrings.exp,
                      style: AppStyles.styleRegular10,
                    ),
                    Text(
                      visa.expiryDate,
                      style: AppStyles.styleMedium12.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
