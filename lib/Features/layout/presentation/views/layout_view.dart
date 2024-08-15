import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_task/Features/layout/presentation/view_model/layout_cubit/layout_cubit.dart';
import 'package:payment_task/Features/layout/presentation/view_model/layout_cubit/layout_state.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocBuilder<LayoutCubit, LayoutState>(
        builder: (context, state) {
          var cubit = BlocProvider.of<LayoutCubit>(context);
          return Scaffold(
            extendBody: true,
            body: cubit.views[cubit.currentIndex],
            bottomNavigationBar: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: BottomNavigationBar(
                items: cubit.bottomNavItems,
                currentIndex: cubit.currentIndex,
                onTap: (index) {
                  cubit.changeIndex(index);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
