import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/constant/app_image.dart';
import '../../../../core/unit/app_color.dart';
import '../../../../l10n/app_localizations.dart';
import '../../home/pages/home_screen.dart';
import '../../profile/pages/profile_screen.dart';
import '../../reviews/pages/reviews_screen.dart';
import '../../../setting/pages/setting_screen.dart';
import '../domain/usecase/layout_usecase.dart';

part 'layout_state.dart';
part 'layout_cubit.freezed.dart';

class LayoutProviderCubit extends Cubit<LayoutProviderState> {
  final LayoutProviderUsecase layoutUsecase;
  LayoutProviderCubit({required this.layoutUsecase}) : super(const LayoutProviderState.initial());

  late final List<Widget> screens = [const HomeScreen(), const ReviewsScreen(), const ProfileScreen(), const SettingScreen()];

  List<BottomNavigationBarItem> items(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return [
      BottomNavigationBarItem(
        label: local.home,
        icon: Icon(Icons.home, color: AppColor.grey.withOpacity(0.5)),
        activeIcon: Icon(Icons.home, color: AppColor.primaryColor),
      ),
      BottomNavigationBarItem(
        label: local.reviews,
        icon: Icon(Icons.star_purple500_sharp, color: AppColor.grey.withOpacity(0.5)),
        activeIcon: Icon(Icons.star_purple500_sharp, color: AppColor.primaryColor),
      ),
      BottomNavigationBarItem(
        label: local.profile,
        icon: SvgPicture.asset(width: 25, Assets.iconPerson, color: AppColor.grey.withOpacity(0.5)),
        activeIcon: SvgPicture.asset(width: 25, Assets.iconPerson, color: AppColor.primaryColor),
      ),
      BottomNavigationBarItem(
        label: local.settings,
        icon: Icon(Icons.settings, color: AppColor.grey.withOpacity(0.5)),
        activeIcon: Icon(Icons.settings, color: AppColor.primaryColor),
      ),
    ];
  }

  void changeIndex(int index) => emit(LayoutProviderState.initial(currentIndex: index));
}
