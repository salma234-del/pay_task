import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payment_task/Core/utils/app_sizes.dart';
import 'package:payment_task/Core/utils/app_strings.dart';
import 'package:payment_task/Features/home/presentation/views/widgets/earnings_list_view.dart';
import 'package:payment_task/Features/home/presentation/views/widgets/home_section_title.dart';
import 'package:payment_task/Features/home/presentation/views/widgets/income_and_outcome_card.dart';
import 'package:payment_task/Features/home/presentation/views/widgets/total_balance_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.defaultHorizontalPadding,
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),
                const TotalBalanceCard(),
                const SizedBox(height: 15),
                const IncomeAndOutcomeCard(),
                const SizedBox(height: 20),
                HomeSectionTitle(
                  sectionTtitle: AppStrings.earnings,
                  seeAllOnPressed: () {},
                ),
              ],
            ),
          ),
          const EarningsListView(), // No padding applied here
        ],
      ),
    );
  }
}
