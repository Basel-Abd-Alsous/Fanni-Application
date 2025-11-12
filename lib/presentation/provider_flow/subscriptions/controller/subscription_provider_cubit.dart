import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../main.dart';
import '../domain/model/cliq_info_model.dart';
import '../domain/model/packages_model.dart';
import '../domain/usecase/subscription_usecase.dart';

part 'subscription_provider_state.dart';
part 'subscription_provider_cubit.freezed.dart';

class SubscriptionProviderCubit extends Cubit<SubscriptionProviderState> {
  final SubscriptionUsecase usecase;
  SubscriptionProviderCubit({required this.usecase}) : super(const SubscriptionProviderState.initial()) {
    Future.wait([getPackages(), getCliqInfo()]);
  }

  ValueNotifier<List<Packages>> allPackages = ValueNotifier([]);
  ValueNotifier<CliqInfo> cliqInfo = ValueNotifier(const CliqInfo());

  Future<void> getPackages() async {
    try {
      SmartDialog.showLoading();
      final result = await usecase.getPackages();
      result.fold(
        (l) {
          logger.e('Failure Get Packages ${l.message}');
          SmartDialog.dismiss();
        },
        (r) {
          final data = r.data;
          if (data != null && data.isNotEmpty) {
            final updatedList =
                data.asMap().entries.map((entry) => entry.key == 0 ? entry.value.copyWith(isSelected: true) : entry.value.copyWith(isSelected: false)).toList();
            allPackages.value = updatedList;
          } else {
            logger.w('No packages returned from API');
            allPackages.value = [];
          }
          SmartDialog.dismiss();
        },
      );
    } catch (e) {
      logger.e('Failure Get Packages $e');
      SmartDialog.dismiss();
    }
  }

  void selectPackage(int selectedIndex) {
    final currentList = allPackages.value;
    final updatedList =
        currentList.asMap().entries.map((entry) {
          return entry.value.copyWith(isSelected: entry.key == selectedIndex);
        }).toList();
    allPackages.value = updatedList;
  }

  Future<void> getCliqInfo() async {
    try {
      final result = await usecase.getCliqInfo();
      result.fold((l) => logger.e('Failure Get Cliq Info ${l.message}'), (r) => cliqInfo.value = r.data!);
    } catch (e) {
      logger.e('Failure Get Cliq Info $e');
    }
  }
}
