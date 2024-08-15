import 'package:flutter/material.dart';
import 'package:payment_task/Core/utils/app_strings.dart';
import 'package:payment_task/Core/utils/app_styles.dart';
import 'package:payment_task/Features/profile/presentation/views/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          AppStrings.profile,                       
          style: AppStyles.styleMedium18,
        ),
      ),
      body: const ProfileViewBody(),
    );
  }
}
