import 'package:flutter/material.dart';
import 'package:payment_task/Core/utils/app_lists.dart';
import 'package:payment_task/Core/widgets/transaction_item.dart';

class HomeTransactionsListView extends StatelessWidget {
  const HomeTransactionsListView({super.key});
  //final List<TransactionModel> transactions;  this list will come from the database
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return TransactionItem(
          transactionModel: AppLists
              .transactions[index], // this list will come from the database
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 15),
      itemCount: AppLists.transactions.length,
      shrinkWrap: true,
    );
  }
}
