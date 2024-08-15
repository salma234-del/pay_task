import 'package:flutter/material.dart';
import 'package:payment_task/Core/utils/app_lists.dart';
import 'package:payment_task/Core/utils/app_sizes.dart';
import 'package:payment_task/Features/wallet/presentation/views/widgets/add_visa_button.dart';
import 'package:payment_task/Features/wallet/presentation/views/widgets/visa_card.dart';

class VisaListView extends StatelessWidget {
  const VisaListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.screenHeight(context) * 0.22,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: AppLists.visaCards.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const AddVisaButton();
          } else {
            return VisaCard(
              visa: AppLists.visaCards[index - 1],
            );
          }
        },
      ),
    );
  }
}
