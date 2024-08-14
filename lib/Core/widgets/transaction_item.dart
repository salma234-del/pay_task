import 'package:flutter/material.dart';
import 'package:payment_task/Core/utils/app_colors.dart';
import 'package:payment_task/Core/utils/app_sizes.dart';
import 'package:payment_task/Core/utils/app_styles.dart';
import 'package:payment_task/models/transaction_model.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    required this.transactionModel,
    super.key,
  });

  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.homeCardsBorderRadius),
        color: AppColors.white,
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 20,
          child: ClipOval(
            child: Image.asset(
              transactionModel.image,
              fit: BoxFit.cover,
              width: 40,
              height: 40,
            ),
          ),
        ),
        title: Text(
          transactionModel.title,
          style: AppStyles.styleBold16,
        ),
        subtitle: Text(
          transactionModel.description,
          style: AppStyles.styleMedium14,
        ),
        trailing: Text(
          '${transactionModel.amount > 0 ? '+' : '-'}\$${transactionModel.amount.abs().toStringAsFixed(2)}',
          style: AppStyles.styleBold16.copyWith(
            color:
                transactionModel.amount > 0 ? AppColors.green : AppColors.red,
          ),
        ),
      ),
    );
  }
}
