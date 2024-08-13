import 'package:flutter/material.dart';
import 'package:payment_task/Features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:payment_task/Features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomHomeAppBar(),
      body: HomeViewBody(),
    );
  }
}
