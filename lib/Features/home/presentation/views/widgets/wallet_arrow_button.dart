import 'package:flutter/material.dart';
import 'package:payment_task/Core/utils/app_colors.dart';

class WalletArrowButton extends StatelessWidget {
  const WalletArrowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.white,
        ),
        padding: const EdgeInsets.all(8),
        child: const Icon(
          Icons.arrow_forward,
          color: AppColors.primary,
          size: 15,
        ),
      ),
    );
  }
}
