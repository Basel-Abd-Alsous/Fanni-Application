import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../core/constant/app_image.dart';
import '../../../core/context/global.dart';
import '../../../core/router/router_key.dart';
import '../../../core/services/hive_services/box_kes.dart';
import '../../../injection_container.dart';
import '../../../l10n/app_localizations.dart';
import '../domain/model/introduction_model.dart';

part 'into_state.dart';
part 'into_cubit.freezed.dart';

class IntoCubit extends Cubit<IntoState> {
  IntoCubit() : super(const IntoState.initial());
  PageController controller = PageController(initialPage: 0);

  List<IntroModel> intro() => [
    IntroModel(
      title: AppLocalizations.of(GlobalContext.context)!.introWelcomeTitle,
      description: AppLocalizations.of(GlobalContext.context)!.introWelcomeDescription,
      image: Assets.imageWelcomeCuate,
    ),
    IntroModel(
      title: AppLocalizations.of(GlobalContext.context)!.introChooseServiceTitle,
      description: AppLocalizations.of(GlobalContext.context)!.introChooseServiceDescription,
      image: Assets.imageElectricianCuate,
    ),
    IntroModel(
      title: AppLocalizations.of(GlobalContext.context)!.introTrustedExpertsTitle,
      description: AppLocalizations.of(GlobalContext.context)!.introTrustedExpertsDescription,
      image: Assets.imageConfirmedBro,
    ),
  ];

  void nextPage() {
    if (!controller.hasClients) return;
    final currentPage = controller.page?.round() ?? 0;
    final lastPage = intro().length - 2;
    if (currentPage < lastPage) {
      controller.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    } else {
      sl<Box>(instanceName: BoxKeys.appBox).put(BoxKeys.intro, true);
      GlobalContext.context.push(RouterKey.chooseFlow);
    }
  }

  void skip() {
    sl<Box>(instanceName: BoxKeys.appBox).put(BoxKeys.intro, true);
    GlobalContext.context.push(RouterKey.chooseFlow);
  }
}
