import 'package:flutter/material.dart';
import 'package:payment_task/Features/wallet/presentation/views/widgets/visa_list_view.dart';

class WalletViewBody extends StatelessWidget {
  const WalletViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20),
        VisaListView(),
      ],
    );
  }
}
