import 'package:flutter/material.dart';
import 'package:payment_task/Core/utils/app_lists.dart';
import 'package:payment_task/Core/utils/app_sizes.dart';
import 'package:payment_task/Features/home/presentation/views/widgets/earning_item.dart';

class EarningsListView extends StatelessWidget {
  const EarningsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            3,
            (index) => Padding(
              padding: EdgeInsetsDirectional.only(
                start: index == 0 ? AppSizes.defaultHorizontalPadding : 0,
                end: 15,
              ),
              child: EarningItem(
                earning: AppLists.earnings[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
