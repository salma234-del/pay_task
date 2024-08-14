import 'package:flutter/material.dart';
import 'package:payment_task/Features/wallet/presentation/views/widgets/custom_wallet_app_bar.dart';
import 'package:payment_task/Features/wallet/presentation/views/widgets/wallet_view_body.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomWalletAppBar(),
      body: WalletViewBody(),
    );
  }
}
