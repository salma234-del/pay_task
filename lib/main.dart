import 'package:flutter/material.dart';
import 'package:payment_task/Core/global/theme/app_light_theme.dart';
import 'package:payment_task/Core/helper_functions/init_main.dart';
import 'package:payment_task/Features/layout/presentation/views/layout_view.dart';

void main() async {
  await initMain();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const LayoutView(),
    );
  }
}
