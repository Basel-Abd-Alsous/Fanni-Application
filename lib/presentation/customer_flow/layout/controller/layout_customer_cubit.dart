import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/unit/app_color.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../setting/pages/setting_screen.dart';
import '../../category/pages/category_screen.dart';
import '../../home/pages/home_screen.dart';
import '../../reviews/pages/review_screen.dart';
import '../domain/usecase/layout_usecase.dart';

part 'layout_customer_state.dart';
part 'layout_customer_cubit.freezed.dart';

class LayoutCustomerCubit extends Cubit<LayoutCustomerState> {
  final LayoutCustomerUsecase layoutUsecase;

  LayoutCustomerCubit({required this.layoutUsecase}) : super(const LayoutCustomerState.initial());

  late final List<Widget> screens = [const HomeScreen(), const CategoryScreen(), const ReviewScreen(), const SettingScreen()];

  List<BottomNavigationBarItem> items(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return [
      BottomNavigationBarItem(
        label: local.home,
        icon: Icon(Icons.home, color: AppColor.grey.withOpacity(0.5)),
        activeIcon: Icon(Icons.home, color: AppColor.primaryColor),
      ),
      BottomNavigationBarItem(
        label: local.category,
        icon: Icon(Icons.grid_view_rounded, color: AppColor.grey.withOpacity(0.5)),
        activeIcon: Icon(Icons.grid_view_rounded, color: AppColor.primaryColor),
      ),
      BottomNavigationBarItem(
        label: local.reviews,
        icon: Icon(Icons.star_purple500_sharp, color: AppColor.grey.withOpacity(0.5)),
        activeIcon: Icon(Icons.star_purple500_sharp, color: AppColor.primaryColor),
      ),
      BottomNavigationBarItem(
        label: local.settings,
        icon: Icon(Icons.settings, color: AppColor.grey.withOpacity(0.5)),
        activeIcon: Icon(Icons.settings, color: AppColor.primaryColor),
      ),
    ];
  }

  void changeIndex(int index) => emit(LayoutCustomerState.initial(currentIndex: index));
}
