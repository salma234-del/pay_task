import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:payment_task/Core/utils/app_colors.dart';
import 'package:payment_task/Core/utils/app_sizes.dart';

class AddVisaButton extends StatelessWidget {
  const AddVisaButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: AppSizes.defaultHorizontalPadding,
      ),
      child: DottedBorder(
        borderType: BorderType.RRect,
        dashPattern: const [13, 4],
        strokeWidth: 2,
        radius: const Radius.circular(12),
        child: Container(
          height: AppSizes.screenHeight(context) * 0.22,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            color: AppColors.white,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: AppColors.primary,
              minimumSize: Size.zero,
              padding: const EdgeInsets.all(0),
            ),
            onPressed: () {},
            child: const Icon(
              Icons.add,
              color: AppColors.white,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
