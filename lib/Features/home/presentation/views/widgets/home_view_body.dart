import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payment_task/Core/utils/app_sizes.dart';
import 'package:payment_task/Features/home/presentation/views/widgets/total_balance_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.defaultHorizontalPadding,
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            TotalBalanceCard(),
          ],
        ),
      ),
    );
  }
}
