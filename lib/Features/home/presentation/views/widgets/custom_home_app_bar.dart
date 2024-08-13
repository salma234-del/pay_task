import 'package:flutter/material.dart';
import 'package:payment_task/Core/utils/app_assets.dart';
import 'package:payment_task/Core/utils/app_strings.dart';
import 'package:payment_task/Core/utils/app_styles.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            AppStrings.goodMorning,
            style: AppStyles.styleMedium12,
          ),
          SizedBox(height: 2),
          Text(
            AppStrings.clientName,
            style: AppStyles.styleMedium18,
          ),
        ],
      ),
      leading: const Padding(
        padding: EdgeInsetsDirectional.only(start: 20),
        child: CircleAvatar(
          radius: 15,
          backgroundImage: AssetImage(AppAssets.profile),
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_none),
          onPressed: () {},
        ),
        const SizedBox(width: 20),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
