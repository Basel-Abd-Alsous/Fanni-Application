import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/services/hive_services/box_kes.dart';
import '../../../../core/unit/app_color.dart';
import '../../../../core/widget/widget_daialog.dart';
import '../../../../injection_container.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../setting/pages/setting_screen.dart';
import '../../category/pages/category_screen.dart';
import '../../home/pages/home_screen.dart';
import '../../reviews/pages/review_screen.dart';
import '../domain/model/customer_profile_model.dart';
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
      BottomNavigationBarItem(label: local.home, icon: Icon(Icons.home, color: AppColor.grey.withOpacity(0.5)), activeIcon: Icon(Icons.home, color: AppColor.primaryColor)),
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
      BottomNavigationBarItem(label: local.settings, icon: Icon(Icons.settings, color: AppColor.grey.withOpacity(0.5)), activeIcon: Icon(Icons.settings, color: AppColor.primaryColor)),
    ];
  }

  void changeIndex(int index) {
    CustomerProfile? customerProfile = sl<Box<CustomerProfile>>().get(BoxKeys.userData);
    if (customerProfile == null && index == 2) {
      SmartDialog.show(builder: (context) => WidgetDilog(isError: true, title: AppLocalizations.of(context)!.warning, description: AppLocalizations.of(context)!.youmostbeloginforshowthissection));
    } else {
      emit(LayoutCustomerState.initial(currentIndex: index));
    }
  }
}
