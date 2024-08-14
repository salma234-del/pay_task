import 'package:flutter/material.dart';
import 'package:payment_task/Core/utils/app_strings.dart';
import 'package:payment_task/Core/utils/app_styles.dart';

class HomeSectionTitle extends StatelessWidget {
  const HomeSectionTitle({
    required this.sectionTtitle,
    required this.seeAllOnPressed,
    super.key,
  });

  final String sectionTtitle;
  final VoidCallback seeAllOnPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          sectionTtitle,
          style: AppStyles.styleMedium18,
        ),
        TextButton(
          onPressed: seeAllOnPressed,
          child: const Text(
            AppStrings.seeAll,
          ),
        ),
      ],
    );
  }
}
