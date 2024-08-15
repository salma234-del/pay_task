import 'package:flutter/material.dart';
import 'package:payment_task/Core/utils/app_assets.dart';
import 'package:payment_task/Core/utils/app_sizes.dart';
import 'package:payment_task/Core/utils/app_strings.dart';
import 'package:payment_task/Core/utils/app_styles.dart';
import 'package:payment_task/Core/widgets/custom_button.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultHorizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(AppAssets.profile),
            ),
            const SizedBox(height: 16),
            const Text(
              'Salma Ahmed',
              style: AppStyles.styleMedium18,
            ),
            const SizedBox(height: 8),
            const Text(
              'sa310107@gmail.com',
              style: AppStyles.styleMedium14,
            ),
            const SizedBox(height: 32),
            CustomButton(
              text: AppStrings.editProfile,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
