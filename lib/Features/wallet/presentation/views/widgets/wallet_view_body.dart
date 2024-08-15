import 'package:flutter/material.dart';
import 'package:payment_task/Core/utils/app_sizes.dart';
import 'package:payment_task/Features/wallet/presentation/views/widgets/transactions_title.dart';
import 'package:payment_task/Features/wallet/presentation/views/widgets/visa_list_view.dart';
import 'package:payment_task/Features/wallet/presentation/views/widgets/wallet_transactions_list_view.dart';

class WalletViewBody extends StatelessWidget {
  const WalletViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20),
        VisaListView(),
        SizedBox(height: 20),
        TransactionTitle(),
        SizedBox(height: 5),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.defaultHorizontalPadding,
            ),
            child:
                WalletTransactionsListView(), // this list will come from the database
          ),
        ),
      ],
    );
  }
}
