import 'package:flutter/material.dart';
import 'package:payment_task/Core/utils/app_assets.dart';
import 'package:payment_task/Core/utils/app_strings.dart';
import 'package:payment_task/Core/utils/app_styles.dart';

class CustomWalletAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomWalletAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Padding(
        padding: EdgeInsetsDirectional.only(start: 20),
        child: CircleAvatar(
          backgroundImage: AssetImage(AppAssets.profile),
        ),
      ),
      title: const Text(
        AppStrings.wallet,
        style: AppStyles.styleMedium18,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.more_vert_outlined),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
