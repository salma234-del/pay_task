import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_task/Features/layout/presentation/view_model/layout_cubit/layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  List<BottomNavigationBarItem> bottomNavItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.account_balance_wallet_outlined),
      label: 'Wallet',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person_outline),
      label: 'Profile',
    ),
  ];
  int currentIndex = 0;

  List<Widget> views = [
    const Center(
      child: Text('Home View'),
    ),
    const Center(
      child: Text('Wallet View'),
    ),
    const Center(
      child: Text('Profile View'),
    ),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(LayoutChanged());
  }
}
