import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/context/global.dart';
import '../../../../core/services/hive_services/box_kes.dart';
import '../../../../core/widget/widget_daialog.dart';
import '../../../../injection_container.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../main.dart';
import '../../layout/domain/model/merchant_profile_model.dart';
import '../../layout/domain/usecase/layout_usecase.dart';
import '../domain/usecase/home_provider_usecase.dart';

part 'home_provider_state.dart';
part 'home_provider_cubit.freezed.dart';

class HomeProviderCubit extends Cubit<HomeProviderState> {
  final LayoutProviderUsecase layoutUsecase;
  final HomeProviderUsecase homeProviderUsecase;
  HomeProviderCubit({required this.layoutUsecase, required this.homeProviderUsecase}) : super(const HomeProviderState.initial()) {
    Future.wait([getProfile(), getStatus()]);
  }

  ValueNotifier<bool> status = ValueNotifier<bool>(true);

  Future<void> getProfile() async {
    try {
      final result = await layoutUsecase.getProfile();
      result.fold((l) => logger.e('Failure Get Profile ${l.message}'), (r) => sl<Box<MerchantProfile>>().put(BoxKeys.merchantData, r.data!));
    } catch (e) {
      logger.e('Failure Get Profile $e');
    }
  }

  Future<void> getStatus() async {
    try {
      final result = await homeProviderUsecase.getStatus();
      result.fold((l) => logger.e('Failure Get Status ${l.message}'), (r) {
        status.value = r.data!;
      });
    } catch (e) {
      logger.e('Failure Get Status $e');
    }
  }

  Future<void> changeStatus() async {
    final local = AppLocalizations.of(GlobalContext.context)!;
    try {
      SmartDialog.showLoading(msg: AppLocalizations.of(GlobalContext.context)!.loading);
      final result = await homeProviderUsecase.changeStatus();
      result.fold(
        (l) {
          SmartDialog.dismiss();
          SmartDialog.show(
            builder: (context) {
              return WidgetDilog(
                isError: true,
                title: AppLocalizations.of(GlobalContext.context)!.warning,
                description: '${local.failureChangeProviderStatus} ${l.message}',
              );
            },
          );
        },
        (r) {
          status.value = !status.value;
          SmartDialog.dismiss();
        },
      );
    } catch (e) {
      logger.e('Failure Get Profile $e');
    }
  }
}
