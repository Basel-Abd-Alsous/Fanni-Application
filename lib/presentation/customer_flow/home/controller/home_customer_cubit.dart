import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../../core/context/global.dart';
import '../../../../core/services/hive_services/box_kes.dart';
import '../../../../injection_container.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../main.dart';
import '../../layout/domain/model/customer_profile_model.dart';
import '../../layout/domain/usecase/layout_usecase.dart';
import '../domain/model/banners_model.dart';
import '../domain/usecase/home_usecase.dart';

part 'home_customer_state.dart';
part 'home_customer_cubit.freezed.dart';

class HomeCustomerCubit extends Cubit<HomeCustomerState> {
  final LayoutCustomerUsecase layoutUsecase;
  final HomeUsecase usecase;
  HomeCustomerCubit({required this.usecase, required this.layoutUsecase}) : super(const HomeCustomerState.initial()) {
    Future.wait([getProfile(), getAllBanners()]);
  }

  final PageController pageController = PageController();
  Timer? _autoScrollTimer;
  ValueNotifier<List<Banners>> allBanners = ValueNotifier([]);

  Future<void> getProfile() async {
    try {
      final result = await layoutUsecase.getProfile();
      result.fold((l) => logger.e('Failure Get Profile ${l.message}'), (r) => sl<Box<CustomerProfile>>().put(BoxKeys.userData, r.data!));
    } catch (e) {
      logger.e('Failure Get Profile $e');
    }
  }

  Future<void> startAutoScroll() async {
    _autoScrollTimer?.cancel();
    _autoScrollTimer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (pageController.hasClients) {
        int nextPage = pageController.page!.round() + 1;
        if (nextPage >= allBanners.value.length) {
          nextPage = 0;
        }
        pageController.animateToPage(nextPage, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
      }
    });
  }

  Future<void> getAllBanners() async {
    final local = AppLocalizations.of(GlobalContext.context)!;
    try {
      emit(const _LoadingBanners());
      final result = await usecase.getBanners();
      result.fold((fialure) => emit(_ErrorBanners(message: fialure.message)), (success) async {
        allBanners.value = success.data!;
        await startAutoScroll();
        emit(_SuccessBanners(data: success.data ?? []));
      });
    } catch (e) {
      emit(_ErrorBanners(message: '${local.errorGetBanners} $e'));
    }
  }

  void stopAutoScroll() => _autoScrollTimer?.cancel();
}
